include 'macro\proc32.inc'
include 'macro\struct.inc'
include 'macro\if.inc'

count = 5ABF10h
resize = 43FA90h

STRINGENTRY_LETTERS = 1
STRINGENTRY_SPACE   = 2
STRINGENTRY_NUMBERS = 4
STRINGENTRY_CAPS    = 8
STRINGENTRY_SYMBOLS = 16

INTERFACEKEY_STRING_A000 = 04BEh + 11 ; May vary from version to version
INTERFACEKEY_STRING_A032 = INTERFACEKEY_STRING_A000 + 32
INTERFACEKEY_STRING_A048 = INTERFACEKEY_STRING_A000 + 48
INTERFACEKEY_STRING_A057 = INTERFACEKEY_STRING_A000 + 57
INTERFACEKEY_STRING_A065 = INTERFACEKEY_STRING_A000 + 65
INTERFACEKEY_STRING_A090 = INTERFACEKEY_STRING_A000 + 90
INTERFACEKEY_STRING_A097 = INTERFACEKEY_STRING_A000 + 97
INTERFACEKEY_STRING_A122 = INTERFACEKEY_STRING_A000 + 122
; Correction because of missing INTERFACEKEY_STRING_A127 in the keybindings.h
INTERFACEKEY_STRING_A168 = INTERFACEKEY_STRING_A000 + 168 - 1
INTERFACEKEY_STRING_A184 = INTERFACEKEY_STRING_A000 + 184 - 1
INTERFACEKEY_STRING_A192 = INTERFACEKEY_STRING_A000 + 192 - 1
INTERFACEKEY_STRING_A255 = INTERFACEKEY_STRING_A000 + 255 - 1

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
org 88F350h

a = standardstringentry ; force compilation of the procedure

proc standardstringentry c uses esi edi ebx, \
    str:DWORD, maxlen:DWORD, flag:BYTE ; events:ECX
locals
    entry dd -1
    count_arg dd ?
endl
    mov ebx, ecx ; events
    
    ; if(flag & STRINGENTRY_LETTERS)
    test [flag], STRINGENTRY_LETTERS
    .if ~ZERO?
        mov [count_arg], INTERFACEKEY_STRING_A168 ; '�'
        lea eax, [count_arg]
        call_count ebx, eax
        .if eax
            mov [entry], '�'
            jmp .do_things
        .endif
        
        mov [count_arg], INTERFACEKEY_STRING_A184 ; '�'
        lea eax, [count_arg]
        call_count ebx, eax
        .if eax
            mov [entry], '�'
            jmp .do_things
        .endif
        
        ; Check for cyrillic characters
        mov edi, '�' ; cyrillic A
        mov esi, INTERFACEKEY_STRING_A192
        .while 1
            mov [count_arg], esi
            lea eax, [count_arg]
            call_count ebx, eax
            .if eax
                mov [entry], edi
                jmp .do_things
            .endif
            cmp esi, INTERFACEKEY_STRING_A255
            je @f
            inc esi
            inc edi
        .endw
        @@:
        
        ; Check for latin lowercase characters
        mov edi, 'a' ; latin a
        mov esi, INTERFACEKEY_STRING_A097
        .while 1
            mov [count_arg], esi
            lea eax, [count_arg]
            call_count ebx, eax
            .if eax
                mov [entry], edi
                jmp .do_things
            .endif
            cmp esi, INTERFACEKEY_STRING_A122
            je @f
            inc esi
            inc edi
        .endw
        @@:
        
        ; Check for latin uppercase characters
        mov edi, 'A' ; latin A
        mov esi, INTERFACEKEY_STRING_A065
        .while 1
            mov [count_arg], esi
            lea eax, [count_arg]
            call_count ebx, eax
            .if eax
                mov [entry], edi
                jmp .do_things
            .endif
            cmp esi, INTERFACEKEY_STRING_A090
            je @f
            inc esi
            inc edi
        .endw
        @@:
    .endif
    
    ; if(flag & STRINGENTRY_SPACE)
    test [flag], STRINGENTRY_SPACE
    .if ~ZERO?
        mov [count_arg], INTERFACEKEY_STRING_A032
        lea eax, [count_arg]
        call_count ebx, eax
        .if eax
            mov [entry], ' '
            jmp .do_things
        .endif
    .endif
    
    ; if(events.count(INTERFACEKEY_STRING_A000)) entry='\x0';
    mov [count_arg], INTERFACEKEY_STRING_A000
    lea eax, [count_arg]
    call_count ebx, eax
    .if eax
        mov [entry], 0
        jmp .do_things
    .endif
    
    ; if(flag & STRINGENTRY_NUMBERS)
    test [flag], STRINGENTRY_NUMBERS
    .if ~ZERO?
        mov edi, '0'
        mov esi, INTERFACEKEY_STRING_A048
        .while 1
            mov [count_arg], esi
            lea eax, [count_arg]
            call_count ebx, eax
            .if eax
                mov [entry], edi
                jmp .do_things
            .endif
            cmp esi, INTERFACEKEY_STRING_A057
            je @f
            inc esi
            inc edi
        .endw
        @@:
    .endif
    
    ; if(flag & STRINGENTRY_SYMBOLS)
    test [flag], STRINGENTRY_SYMBOLS
    .if ~ZERO?
        mov edi, 0
        mov esi, INTERFACEKEY_STRING_A000
        .while 1
            mov [count_arg], esi
            lea eax, [count_arg]
            call_count ebx, eax
            .if eax
                mov [entry], edi
                jmp .do_things
            .endif
            cmp esi, INTERFACEKEY_STRING_A255
            je @f
            inc esi
            inc edi
        .endw
        @@:
    .endif
    
.do_things:
    .if [entry] <> -1
        mov eax, [str]
        mov ecx, [eax+string.len] ; ecx = str.length()
        
        ; if(entry=='\x0')
        ;     if(str.length()>0) str.resize(str.length()-1);
        .if [entry]=0
            .if ecx>0
                dec ecx
                call resize
            .endif
        .else
            ; if(cursor>=maxlen) cursor=maxlen-1;
            .if ecx>=[maxlen]
                mov ecx, [maxlen]
                dec ecx
            .endif
            
            ; if(cursor<0) cursor=0;
            .if ecx<0
                xor ecx, ecx
            .endif
            
            ; if(str.length()<cursor+1) str.resize(cursor+1);
            mov edx, [eax+string.len]
            dec edx
            .if signed edx < ecx
                push ecx
                push eax
                inc ecx
                call resize
                pop eax
                pop ecx
            .endif
            
            ; if(flag & STRINGENTRY_CAPS)
            test [flag], STRINGENTRY_CAPS
            .if ~ZERO?
                ; if(entry>='a'&&entry<='z') entry+='A'-'a';
                .if [entry]>='a' & [entry]<='z'
                    add [entry], 'A'-'a'
                .endif
                
                ; if(entry>='�'&&entry<='�') entry+='A'-'a';
                .if [entry]>='�' & [entry]<='�'
                    add [entry], '�'-'�' ; Cyrillic A and a
                .endif
                
                ; if(entry=='�') entry+='�'-'�';
                .if [entry]='�'
                    add [entry], '�'-'�' ; Cyrillic Yo and yo
                .endif
            .endif
            
            ; str[cursor]=entry;
            mov edx, [eax+string.capa]
            .if edx>=10h
                mov eax, [eax+string.ptr]
            .endif
            mov edx, [entry]
            mov [eax+ecx], dl
        .endif
        
        ; return 1
        xor eax, eax
        inc eax
        jmp .ret
    .endif
    
    ; return 0
    xor eax, eax
.ret:
    ret
endp
