include 'macro\proc32.inc'
include 'macro\struct.inc'

_Eqrange = 6613D0h
_Distance2 = 596900h
count = 595E10h
resize = 43D200h

STRINGENTRY_LETTERS = 1
STRINGENTRY_SPACE   = 2
STRINGENTRY_NUMBERS = 4
STRINGENTRY_CAPS    = 8
STRINGENTRY_SYMBOLS = 16

INTERFACEKEY_STRING_A000 = 04BEh ; May vary from version to version
INTERFACEKEY_STRING_A032 = INTERFACEKEY_STRING_A000 + 32
INTERFACEKEY_STRING_A048 = INTERFACEKEY_STRING_A000 + 48
INTERFACEKEY_STRING_A057 = INTERFACEKEY_STRING_A000 + 57
INTERFACEKEY_STRING_A065 = INTERFACEKEY_STRING_A000 + 65
INTERFACEKEY_STRING_A090 = INTERFACEKEY_STRING_A000 + 90
INTERFACEKEY_STRING_A097 = INTERFACEKEY_STRING_A000 + 97
INTERFACEKEY_STRING_A122 = INTERFACEKEY_STRING_A000 + 122
INTERFACEKEY_STRING_A168 = INTERFACEKEY_STRING_A000 + 168
INTERFACEKEY_STRING_A184 = INTERFACEKEY_STRING_A000 + 184
INTERFACEKEY_STRING_A192 = INTERFACEKEY_STRING_A000 + 192
INTERFACEKEY_STRING_A255 = INTERFACEKEY_STRING_A000 + 255

macro call_count op1, op2
{
    mov ecx, op1
    push op2
    call count
}

struct string
    union
        buf db 16 dup (?)
        ptr dd ?
    ends
    len dd ?
    capa dd ?
    pad dd ?
ends

use32
org 86CD20h

a = standardstringentry ; force compilation of the procedure

proc standardstringentry stdcall uses esi edi ebx, \
    str:DWORD, maxlen:DWORD, flag:BYTE ; events:ECX
locals
    entry dd -1
    count_arg dd ?
endl
    mov ebx, ecx ; events
    
    test [flag], STRINGENTRY_LETTERS
    jz .check_space
    
    mov [count_arg], INTERFACEKEY_STRING_A168 ; '¨'
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], '¨'
    jmp .do_things
@@:
    mov [count_arg], INTERFACEKEY_STRING_A184 ; '¸'
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], '¸'
    jmp .do_things
@@:

    ; Check for cyrillic characters
    mov edi, 'À'-1 ; cyrillic A
    mov esi, INTERFACEKEY_STRING_A192-1
.cyr_loop:
    inc esi
    inc edi
    mov [count_arg], esi
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], edi
    jmp .do_things
@@:
    cmp esi, INTERFACEKEY_STRING_A255
    jne .cyr_loop
    
    ; Check for latin lowercase characters
    mov edi, 'a'-1 ; latin a
    mov esi, INTERFACEKEY_STRING_A097-1
.lat_lower_loop:
    inc esi
    inc edi
    mov [count_arg], esi
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], edi
    jmp .do_things
@@:
    cmp esi, INTERFACEKEY_STRING_A122
    jne .lat_lower_loop
    
    ; Check for latin uppercase characters
    mov edi, 'A'-1 ; latin A
    mov esi, INTERFACEKEY_STRING_A065-1
.lat_upper_loop:
    inc esi
    inc edi
    mov [count_arg], esi
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], edi
    jmp .do_things
@@:
    cmp esi, INTERFACEKEY_STRING_A090
    jne .lat_lower_loop
    
.check_space:
    test [flag], STRINGENTRY_SPACE
    jz .check_zero
    mov [count_arg], INTERFACEKEY_STRING_A032
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], ' '
    jmp .do_things
    
@@:
.check_zero:
    mov [count_arg], INTERFACEKEY_STRING_A000
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], 0
    jmp .do_things
    
@@:
.check_numbers:
    test [flag], STRINGENTRY_NUMBERS
    jz .check_symbols
    
    mov edi, '0'-1
    mov esi, INTERFACEKEY_STRING_A048-1
.numbers_loop:
    inc esi
    inc edi
    mov [count_arg], esi
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], edi
    jmp .do_things
@@:
    cmp esi, INTERFACEKEY_STRING_A057
    jne .numbers_loop
    
.check_symbols:
    test [flag], STRINGENTRY_SYMBOLS
    jz .skip_symbols
    
    mov edi, 0-1
    mov esi, INTERFACEKEY_STRING_A000-1
.symbols_loop:
    inc esi
    inc edi
    mov [count_arg], esi
    lea eax, [count_arg]
    call_count ebx, eax
    test eax, eax
    jz @f
    mov [entry], edi
    jmp .do_things
@@:
    cmp esi, INTERFACEKEY_STRING_A255
    jne .symbols_loop
    
.skip_symbols:
.do_things:
    cmp [entry], -1
    je .return_0
    
    mov eax, [str]
    mov ecx, [eax+string.len]
    
    ; if(entry=='\x0')
    ;     if(str.length()>0) str.resize(str.length()-1);
    cmp [entry], 0
    jne @f
    
    cmp ecx, 0
    jle @f
    
    dec ecx
    call resize
    jmp .return_1
@@:
    ; if(cursor>=maxlen) cursor=maxlen-1;
    cmp ecx, [maxlen]
    jl @f
    mov ecx, [maxlen]
    dec ecx
@@:
    ; if(cursor<0) cursor=0;
    cmp ecx, 0
    jge @f
    xor ecx, ecx
@@:
    ; if(str.length()<cursor+1) str.resize(cursor+1);
    mov edx, [eax+string.len]
    dec edx
    cmp edx, ecx
    jge @f
    push ecx
    push eax
    inc ecx
    call resize
    pop eax
    pop ecx
@@:
    ; if(flag & STRINGENTRY_CAPS)
    test [flag], STRINGENTRY_CAPS
    jz .nocaps
    
    ; if(entry>='a'&&entry<='z') entry+='A'-'a';
    cmp [entry], 'a' ; latin a
    jl @f
    cmp [entry], 'z'
    jg @f
    add [entry], 'A'-'a'
@@:
    ; if(entry>='à'&&entry<='ÿ') entry+='A'-'a';
    cmp [entry], 'à'
    jl @f
    cmp [entry], 'ÿ'
    jg @f
    add [entry], 'À'-'à' ; Cyrillic A and a
@@:
    ; if(entry=='¸') entry+='¨'-'¸';
    cmp [entry], '¸'
    jne @f
    add [entry], '¨'-'¸'
@@:
.nocaps:
    ; str[cursor]=entry;
    mov edx, [eax+string.capa]
    cmp edx, 10h
    jle @f
    mov eax, [eax+string.ptr]
@@:
    mov edx, [entry]
    mov [eax+ecx], dl
.return_1:
    xor eax, eax
    inc eax
    jmp .ret
    
.return_0:
    xor eax, eax
.ret:
    ret
endp

