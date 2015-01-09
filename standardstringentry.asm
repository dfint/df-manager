use32

_Eqrange = 6613D0h
_Distance2 = 596900h
count = 595E10h
resize = 43D200h

org 86CD20h

; =============== S U B R O U T I N E =======================================

; char __thiscall standardstringentry(void *events, stl_string *str, int maxlen, char flag)
; standardstringentry proc near

var_C  = -0Ch
var_8  = -8
var_4  = -4
_str   = +4
maxlen = +8
flag   = +0Ch

    sub esp, 10h
    push ebx
    push ebp
    push esi
    or bl, 0FFh
    xor ebp, ebp
    test byte [esp+1Ch+flag], 1
    push edi
    mov esi, ecx
    jz loc_86D9D1
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 51Fh
    call _Eqrange
    
; 18:   v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
    call _Distance2
    
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CD77
    mov bl, 61h

loc_86CD77:    ; CODE XREF: standardstringentry+53j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 520h
    call _Eqrange
    
; 24:   v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 25:   _Distance2((int)&v10, v11, v12);
    call _Distance2
    
; 26:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CDB5
; 27:     entry = 98;
    mov bl, 62h
; 28:   v10 = 1313;

loc_86CDB5:    ; CODE XREF: standardstringentry+91j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 521h
; 29:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
    
; 30:   v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 31:   _Distance2((int)&v10, v11, v12);
    call _Distance2
    
; 32:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CDF3
; 33:     entry = 99;
    mov bl, 63h
; 34:   v10 = 1314;

loc_86CDF3:    ; CODE XREF: standardstringentry+CFj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 522h
; 35:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
    
; 36:   v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 37:   _Distance2((int)&v10, v11, v12);
    call _Distance2
    
; 38:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CE31
; 39:     entry = 100;
    mov bl, 64h
; 40:   v10 = 1315;

loc_86CE31:    ; CODE XREF: standardstringentry+10Dj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 523h
; 41:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
    
; 42:   v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 43:   _Distance2((int)&v10, v11, v12);
    call _Distance2
    
; 44:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CE6F
; 45:     entry = 101;
    mov bl, 65h
; 46:   v10 = 1316;

loc_86CE6F:    ; CODE XREF: standardstringentry+14Bj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 524h
; 47:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
    
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
    call _Distance2
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CEAD
    mov bl, 66h

loc_86CEAD:    ; CODE XREF: standardstringentry+189j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 525h
    call _Eqrange
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
    call _Distance2
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CEEB
    mov bl, 67h
; 58:   v10 = 1318;

loc_86CEEB:    ; CODE XREF: standardstringentry+1C7j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 526h
    call _Eqrange
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
    call _Distance2
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CF29
    mov bl, 68h

loc_86CF29:    ; CODE XREF: standardstringentry+205j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 527h
; 65:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 66:   v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 67:   _Distance2((int)&v10, v11, v12);
    call _Distance2
; 68:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CF67
; 69:     entry = 105;
    mov bl, 69h
; 70:   v10 = 1320;

loc_86CF67:    ; CODE XREF: standardstringentry+243j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 528h
; 71:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 72:   v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 73:   _Distance2((int)&v10, v11, v12);
    call _Distance2
; 74:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CFA5
; 75:     entry = 106;
    mov bl, 6Ah
; 76:   v10 = 1321;

loc_86CFA5:    ; CODE XREF: standardstringentry+281j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 529h
; 77:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 78:   v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 79:   _Distance2((int)&v10, v11, v12);
    call _Distance2
; 80:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86CFE3
; 81:     entry = 107;
    mov bl, 6Bh
; 82:   v10 = 1322;

loc_86CFE3:    ; CODE XREF: standardstringentry+2BFj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Ah
; 83:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 84:   v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 85:   _Distance2((int)&v10, v11, v12);
    call _Distance2
; 86:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D021
; 87:     entry = 108;
    mov bl, 6Ch
; 88:   v10 = 1323;

loc_86D021:    ; CODE XREF: standardstringentry+2FDj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Bh
; 89:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 90:   v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 91:   _Distance2((int)&v10, v11, v12);
    call _Distance2
; 92:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D05F
; 93:     entry = 109;
    mov bl, 6Dh
; 94:   v10 = 1324;

loc_86D05F:    ; CODE XREF: standardstringentry+33Bj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Ch
; 95:   _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 96:   v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 97:   _Distance2((int)&v10, v11, v12);
    call _Distance2
; 98:   if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D09D
; 99:     entry = 110;
    mov bl, 6Eh
; 100:    v10 = 1325;

loc_86D09D:    ; CODE XREF: standardstringentry+379j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Dh
; 101:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 102:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 103:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 104:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D0DB
; 105:      entry = 111;
    mov bl, 6Fh
; 106:    v10 = 1326;

loc_86D0DB:    ; CODE XREF: standardstringentry+3B7j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Eh
; 107:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 108:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 109:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 110:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D119
; 111:      entry = 112;
    mov bl, 70h
; 112:    v10 = 1327;

loc_86D119:    ; CODE XREF: standardstringentry+3F5j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Fh
; 113:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 114:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 115:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 116:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D157
; 117:      entry = 113;
    mov bl, 71h
; 118:    v10 = 1328;

loc_86D157:    ; CODE XREF: standardstringentry+433j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 530h
; 119:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 120:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 121:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 122:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D195
; 123:      entry = 114;
    mov bl, 72h
; 124:    v10 = 1329;

loc_86D195:    ; CODE XREF: standardstringentry+471j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 531h
; 125:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 126:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 127:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 128:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D1D3
; 129:      entry = 115;
    mov bl, 73h
; 130:    v10 = 1330;

loc_86D1D3:    ; CODE XREF: standardstringentry+4AFj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 532h
; 131:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 132:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 133:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 134:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D211
; 135:      entry = 116;
    mov bl, 74h
; 136:    v10 = 1331;

loc_86D211:    ; CODE XREF: standardstringentry+4EDj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 533h
; 137:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 138:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 139:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 140:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D24F
; 141:      entry = 117;
    mov bl, 75h
; 142:    v10 = 1332;

loc_86D24F:    ; CODE XREF: standardstringentry+52Bj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 534h
; 143:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 144:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 145:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 146:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D28D
; 147:      entry = 118;
    mov bl, 76h
; 148:    v10 = 1333;

loc_86D28D:    ; CODE XREF: standardstringentry+569j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 535h
; 149:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 150:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 151:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 152:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D2CB
; 153:      entry = 119;
    mov bl, 77h
; 154:    v10 = 1334;

loc_86D2CB:    ; CODE XREF: standardstringentry+5A7j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 536h
; 155:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 156:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 157:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 158:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D309
; 159:      entry = 120;
    mov bl, 78h
; 160:    v10 = 1335;

loc_86D309:    ; CODE XREF: standardstringentry+5E5j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 537h
; 161:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 162:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 163:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 164:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D347
; 165:      entry = 121;
    mov bl, 79h
; 166:    v10 = 1336;

loc_86D347:    ; CODE XREF: standardstringentry+623j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 538h
; 167:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 168:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 169:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 170:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D385
; 171:      entry = 122;
    mov bl, 7Ah
; 172:    v10 = 1279;

loc_86D385:    ; CODE XREF: standardstringentry+661j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4FFh
; 173:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 174:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 175:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 176:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D3C3
; 177:      entry = 65;
    mov bl, 41h
; 178:    v10 = 1280;

loc_86D3C3:    ; CODE XREF: standardstringentry+69Fj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 500h
; 179:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 180:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 181:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 182:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D401
; 183:      entry = 66;
    mov bl, 42h
; 184:    v10 = 1281;

loc_86D401:    ; CODE XREF: standardstringentry+6DDj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 501h
; 185:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 186:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 187:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 188:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D43F
; 189:      entry = 67;
    mov bl, 43h
; 190:    v10 = 1282;

loc_86D43F:    ; CODE XREF: standardstringentry+71Bj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 502h
; 191:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 192:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 193:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 194:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D47D
; 195:      entry = 68;
    mov bl, 44h
; 196:    v10 = 1283;

loc_86D47D:    ; CODE XREF: standardstringentry+759j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 503h
; 197:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 198:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 199:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 200:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D4BB
; 201:      entry = 69;
    mov bl, 45h
; 202:    v10 = 1284;

loc_86D4BB:    ; CODE XREF: standardstringentry+797j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 504h
; 203:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 204:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 205:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 206:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D4F9
; 207:      entry = 70;
    mov bl, 46h
; 208:    v10 = 1285;

loc_86D4F9:    ; CODE XREF: standardstringentry+7D5j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 505h
; 209:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 210:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 211:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 212:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D537
; 213:      entry = 71;
    mov bl, 47h
; 214:    v10 = 1286;

loc_86D537:    ; CODE XREF: standardstringentry+813j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 506h
; 215:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 216:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 217:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 218:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D575
; 219:      entry = 72;
    mov bl, 48h
; 220:    v10 = 1287;

loc_86D575:    ; CODE XREF: standardstringentry+851j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 507h
; 221:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 222:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 223:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 224:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D5B3
; 225:      entry = 73;
    mov bl, 49h
; 226:    v10 = 1288;

loc_86D5B3:    ; CODE XREF: standardstringentry+88Fj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 508h
; 227:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 228:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 229:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 230:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D5F1
; 231:      entry = 74;
    mov bl, 4Ah
; 232:    v10 = 1289;

loc_86D5F1:    ; CODE XREF: standardstringentry+8CDj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 509h
; 233:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 234:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 235:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 236:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D62F
; 237:      entry = 75;
    mov bl, 4Bh
; 238:    v10 = 1290;

loc_86D62F:    ; CODE XREF: standardstringentry+90Bj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Ah
; 239:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 240:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 241:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 242:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D66D
; 243:      entry = 76;
    mov bl, 4Ch
; 244:    v10 = 1291;

loc_86D66D:    ; CODE XREF: standardstringentry+949j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Bh
; 245:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 246:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 247:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 248:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D6AB
; 249:      entry = 77;
    mov bl, 4Dh
; 250:    v10 = 1292;

loc_86D6AB:    ; CODE XREF: standardstringentry+987j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Ch
; 251:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 252:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 253:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 254:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D6E9
; 255:      entry = 78;
    mov bl, 4Eh
; 256:    v10 = 1293;

loc_86D6E9:    ; CODE XREF: standardstringentry+9C5j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Dh
; 257:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 258:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 259:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 260:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D727
; 261:      entry = 79;
    mov bl, 4Fh
; 262:    v10 = 1294;

loc_86D727:    ; CODE XREF: standardstringentry+A03j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Eh
; 263:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 264:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 265:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 266:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D765
; 267:      entry = 80;
    mov bl, 50h
; 268:    v10 = 1295;

loc_86D765:    ; CODE XREF: standardstringentry+A41j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Fh
; 269:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 270:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 271:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 272:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D7A3
; 273:      entry = 81;
    mov bl, 51h
; 274:    v10 = 1296;

loc_86D7A3:    ; CODE XREF: standardstringentry+A7Fj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 510h
; 275:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 276:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 277:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 278:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D7E1
; 279:      entry = 82;
    mov bl, 52h
; 280:    v10 = 1297;

loc_86D7E1:    ; CODE XREF: standardstringentry+ABDj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 511h
; 281:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 282:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 283:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 284:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D81F
; 285:      entry = 83;
    mov bl, 53h
; 286:    v10 = 1298;

loc_86D81F:    ; CODE XREF: standardstringentry+AFBj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 512h
; 287:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 288:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 289:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 290:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D85D
; 291:      entry = 84;
    mov bl, 54h
; 292:    v10 = 1299;

loc_86D85D:    ; CODE XREF: standardstringentry+B39j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 513h
; 293:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 294:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 295:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 296:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D89B
; 297:      entry = 85;
    mov bl, 55h
; 298:    v10 = 1300;

loc_86D89B:    ; CODE XREF: standardstringentry+B77j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 514h
; 299:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 300:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 301:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 302:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D8D9
; 303:      entry = 86;
    mov bl, 56h
; 304:    v10 = 1301;

loc_86D8D9:    ; CODE XREF: standardstringentry+BB5j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 515h
; 305:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 306:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 307:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 308:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D917
; 309:      entry = 87;
    mov bl, 57h
; 310:    v10 = 1302;

loc_86D917:    ; CODE XREF: standardstringentry+BF3j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 516h
; 311:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 312:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 313:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 314:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D955
; 315:      entry = 88;
    mov bl, 58h
; 316:    v10 = 1303;

loc_86D955:    ; CODE XREF: standardstringentry+C31j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 517h
; 317:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 318:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 319:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 320:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D993
; 321:      entry = 89;
    mov bl, 59h
; 322:    v10 = 1304;

loc_86D993:    ; CODE XREF: standardstringentry+C6Fj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 518h
; 323:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 324:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 325:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 326:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86D9D1
; 327:      entry = 90;
    mov bl, 5Ah
; 329:  if ( flag & 2 )

loc_86D9D1:    ; CODE XREF: standardstringentry+13j standardstringentry+CADj
    test byte [esp+20h+flag], 2
    jz short loc_86DA16
; 331:    v10 = 1246;
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4DEh
; 332:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 333:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 334:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 335:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DA16
; 336:      entry = 32;
    mov bl, 20h
; 338:  v10 = 1214;

loc_86DA16:    ; CODE XREF: standardstringentry+CB6j standardstringentry+CF2j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4BEh
; 339:  _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 340:  v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 341:  _Distance2((int)&v10, v11, v12);
    call _Distance2
; 342:  if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DA54
; 343:    entry = 0;
    xor bl, bl
; 344:  if ( flag & 4 )

loc_86DA54:    ; CODE XREF: standardstringentry+D30j
    test byte [esp+20h+flag], 4
    jz loc_86DCCB
; 346:    v10 = 1262;
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4EEh
; 347:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 348:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 349:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 350:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DA9D
; 351:      entry = 48;
    mov bl, 30h
; 352:    v10 = 1263;

loc_86DA9D:    ; CODE XREF: standardstringentry+D79j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4EFh
; 353:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 354:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 355:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 356:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DADB
; 357:      entry = 49;
    mov bl, 31h
; 358:    v10 = 1264;

loc_86DADB:    ; CODE XREF: standardstringentry+DB7j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F0h
; 359:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 360:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 361:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 362:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DB19
; 363:      entry = 50;
    mov bl, 32h
; 364:    v10 = 1265;

loc_86DB19:    ; CODE XREF: standardstringentry+DF5j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F1h
; 365:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 366:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 367:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 368:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DB57
; 369:      entry = 51;
    mov bl, 33h
; 370:    v10 = 1266;

loc_86DB57:    ; CODE XREF: standardstringentry+E33j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F2h
; 371:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 372:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 373:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 374:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DB95
; 375:      entry = 52;
    mov bl, 34h
; 376:    v10 = 1267;

loc_86DB95:    ; CODE XREF: standardstringentry+E71j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F3h
; 377:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 378:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 379:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 380:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DBD3
; 381:      entry = 53;
    mov bl, 35h
; 382:    v10 = 1268;

loc_86DBD3:    ; CODE XREF: standardstringentry+EAFj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F4h
; 383:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 384:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 385:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 386:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DC11
; 387:      entry = 54;
    mov bl, 36h
; 388:    v10 = 1269;

loc_86DC11:    ; CODE XREF: standardstringentry+EEDj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F5h
; 389:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 390:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 391:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 392:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DC4F
; 393:      entry = 55;
    mov bl, 37h
; 394:    v10 = 1270;

loc_86DC4F:    ; CODE XREF: standardstringentry+F2Bj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F6h
; 395:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 396:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 397:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 398:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DC8D
; 399:      entry = 56;
    mov bl, 38h
; 400:    v10 = 1271;

loc_86DC8D:    ; CODE XREF: standardstringentry+F69j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F7h
; 401:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 402:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 403:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 404:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DCCB
; 405:      entry = 57;
    mov bl, 39h
; 407:  if ( flag & 0x10 )

loc_86DCCB:    ; CODE XREF: standardstringentry+D39j standardstringentry+FA7j
    test byte [esp+20h+flag], 10h
    jz loc_870972
; 409:    v10 = 1214;
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4BEh
; 410:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 411:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 412:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 413:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DD14
; 414:      entry = 0;
    xor bl, bl
; 415:    v10 = 1215;

loc_86DD14:    ; CODE XREF: standardstringentry+FF0j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4BFh
; 416:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 417:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 418:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 419:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DD52
; 420:      entry = 1;
    mov bl, 1
; 421:    v10 = 1216;

loc_86DD52:    ; CODE XREF: standardstringentry+102Ej
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C0h
; 422:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 423:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 424:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 425:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DD90
; 426:      entry = 2;
    mov bl, 2
; 427:    v10 = 1217;

loc_86DD90:    ; CODE XREF: standardstringentry+106Cj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C1h
; 428:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 429:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 430:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 431:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DDCE
; 432:      entry = 3;
    mov bl, 3
; 433:    v10 = 1218;

loc_86DDCE:    ; CODE XREF: standardstringentry+10AAj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C2h
; 434:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 435:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 436:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 437:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DE0C
; 438:      entry = 4;
    mov bl, 4
; 439:    v10 = 1219;

loc_86DE0C:    ; CODE XREF: standardstringentry+10E8j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C3h
; 440:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 441:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 442:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 443:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DE4A
; 444:      entry = 5;
    mov bl, 5
; 445:    v10 = 1220;

loc_86DE4A:    ; CODE XREF: standardstringentry+1126j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C4h
; 446:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 447:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 448:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 449:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DE88
; 450:      entry = 6;
    mov bl, 6
; 451:    v10 = 1221;

loc_86DE88:    ; CODE XREF: standardstringentry+1164j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C5h
; 452:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 453:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 454:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 455:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DEC6
; 456:      entry = 7;
    mov bl, 7
; 457:    v10 = 1222;

loc_86DEC6:    ; CODE XREF: standardstringentry+11A2j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C6h
; 458:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 459:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 460:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 461:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DF04
; 462:      entry = 8;
    mov bl, 8
; 463:    v10 = 1223;

loc_86DF04:    ; CODE XREF: standardstringentry+11E0j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C7h
; 464:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 465:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 466:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 467:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DF42
; 468:      entry = 9;
    mov bl, 9
; 469:    v10 = 1224;

loc_86DF42:    ; CODE XREF: standardstringentry+121Ej
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C8h
; 470:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 471:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 472:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 473:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DF80
; 474:      entry = 10;
    mov bl, 0Ah
; 475:    v10 = 1225;

loc_86DF80:    ; CODE XREF: standardstringentry+125Cj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4C9h
; 476:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 477:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 478:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 479:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DFBE
; 480:      entry = 11;
    mov bl, 0Bh
; 481:    v10 = 1226;

loc_86DFBE:    ; CODE XREF: standardstringentry+129Aj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4CAh
; 482:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 483:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 484:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 485:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86DFFC
; 486:      entry = 12;
    mov bl, 0Ch
; 487:    v10 = 1227;

loc_86DFFC:    ; CODE XREF: standardstringentry+12D8j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4CBh
; 488:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 489:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 490:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 491:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E03A
; 492:      entry = 13;
    mov bl, 0Dh
; 493:    v10 = 1228;

loc_86E03A:    ; CODE XREF: standardstringentry+1316j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4CCh
; 494:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 495:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 496:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 497:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E078
; 498:      entry = 14;
    mov bl, 0Eh
; 499:    v10 = 1229;

loc_86E078:    ; CODE XREF: standardstringentry+1354j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4CDh
; 500:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 501:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 502:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 503:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E0B6
; 504:      entry = 15;
    mov bl, 0Fh
; 505:    v10 = 1230;

loc_86E0B6:    ; CODE XREF: standardstringentry+1392j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4CEh
; 506:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 507:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 508:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 509:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E0F4
; 510:      entry = 16;
    mov bl, 10h
; 511:    v10 = 1231;

loc_86E0F4:    ; CODE XREF: standardstringentry+13D0j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4CFh
; 512:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 513:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 514:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 515:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E132
; 516:      entry = 17;
    mov bl, 11h
; 517:    v10 = 1232;

loc_86E132:    ; CODE XREF: standardstringentry+140Ej
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D0h
; 518:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 519:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 520:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 521:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E170
; 522:      entry = 18;
    mov bl, 12h
; 523:    v10 = 1233;

loc_86E170:    ; CODE XREF: standardstringentry+144Cj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D1h
; 524:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 525:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 526:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 527:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E1AE
; 528:      entry = 19;
    mov bl, 13h
; 529:    v10 = 1234;

loc_86E1AE:    ; CODE XREF: standardstringentry+148Aj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D2h
; 530:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 531:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 532:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 533:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E1EC
; 534:      entry = 20;
    mov bl, 14h
; 535:    v10 = 1235;

loc_86E1EC:    ; CODE XREF: standardstringentry+14C8j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D3h
; 536:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 537:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 538:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 539:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E22A
; 540:      entry = 21;
    mov bl, 15h
; 541:    v10 = 1236;

loc_86E22A:    ; CODE XREF: standardstringentry+1506j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D4h
; 542:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 543:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 544:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 545:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E268
; 546:      entry = 22;
    mov bl, 16h
; 547:    v10 = 1237;

loc_86E268:    ; CODE XREF: standardstringentry+1544j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D5h
; 548:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 549:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 550:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 551:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E2A6
; 552:      entry = 23;
    mov bl, 17h
; 553:    v10 = 1238;

loc_86E2A6:    ; CODE XREF: standardstringentry+1582j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D6h
; 554:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 555:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 556:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 557:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E2E4
; 558:      entry = 24;
    mov bl, 18h
; 559:    v10 = 1239;

loc_86E2E4:    ; CODE XREF: standardstringentry+15C0j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D7h
; 560:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 561:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 562:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 563:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E322
; 564:      entry = 25;
    mov bl, 19h
; 565:    v10 = 1240;

loc_86E322:    ; CODE XREF: standardstringentry+15FEj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D8h
; 566:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 567:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 568:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 569:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E360
; 570:      entry = 26;
    mov bl, 1Ah
; 571:    v10 = 1241;

loc_86E360:    ; CODE XREF: standardstringentry+163Cj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4D9h
; 572:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 573:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 574:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 575:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E39E
; 576:      entry = 27;
    mov bl, 1Bh
; 577:    v10 = 1242;

loc_86E39E:    ; CODE XREF: standardstringentry+167Aj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4DAh
; 578:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 579:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 580:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 581:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E3DC
; 582:      entry = 28;
    mov bl, 1Ch
; 583:    v10 = 1243;

loc_86E3DC:    ; CODE XREF: standardstringentry+16B8j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4DBh
; 584:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 585:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 586:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 587:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E41A
; 588:      entry = 29;
    mov bl, 1Dh
; 589:    v10 = 1244;

loc_86E41A:    ; CODE XREF: standardstringentry+16F6j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4DCh
; 590:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 591:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 592:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 593:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E458
; 594:      entry = 30;
    mov bl, 1Eh
; 595:    v10 = 1245;

loc_86E458:    ; CODE XREF: standardstringentry+1734j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4DDh
; 596:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 597:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 598:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 599:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E496
; 600:      entry = 31;
    mov bl, 1Fh
; 601:    v10 = 1246;

loc_86E496:    ; CODE XREF: standardstringentry+1772j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4DEh
; 602:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 603:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 604:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 605:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E4D4
; 606:      entry = 32;
    mov bl, 20h
; 607:    v10 = 1247;

loc_86E4D4:    ; CODE XREF: standardstringentry+17B0j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4DFh
; 608:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 609:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 610:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 611:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E512
; 612:      entry = 33;
    mov bl, 21h
; 613:    v10 = 1248;

loc_86E512:    ; CODE XREF: standardstringentry+17EEj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E0h
; 614:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 615:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 616:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 617:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E550
; 618:      entry = 34;
    mov bl, 22h
; 619:    v10 = 1249;

loc_86E550:    ; CODE XREF: standardstringentry+182Cj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E1h
; 620:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 621:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 622:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 623:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E58E
; 624:      entry = 35;
    mov bl, 23h
; 625:    v10 = 1250;

loc_86E58E:    ; CODE XREF: standardstringentry+186Aj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E2h
; 626:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 627:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 628:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 629:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E5CC
; 630:      entry = 36;
    mov bl, 24h
; 631:    v10 = 1251;

loc_86E5CC:    ; CODE XREF: standardstringentry+18A8j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E3h
; 632:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 633:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 634:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 635:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E60A
; 636:      entry = 37;
    mov bl, 25h
; 637:    v10 = 1252;

loc_86E60A:    ; CODE XREF: standardstringentry+18E6j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E4h
; 638:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 639:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 640:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 641:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E648
; 642:      entry = 38;
    mov bl, 26h
; 643:    v10 = 1253;

loc_86E648:    ; CODE XREF: standardstringentry+1924j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E5h
; 644:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 645:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 646:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 647:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E686
; 648:      entry = 39;
    mov bl, 27h
; 649:    v10 = 1254;

loc_86E686:    ; CODE XREF: standardstringentry+1962j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E6h
; 650:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 651:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 652:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 653:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E6C4
; 654:      entry = 40;
    mov bl, 28h
; 655:    v10 = 1255;

loc_86E6C4:    ; CODE XREF: standardstringentry+19A0j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E7h
; 656:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 657:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 658:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 659:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E702
; 660:      entry = 41;
    mov bl, 29h
; 661:    v10 = 1256;

loc_86E702:    ; CODE XREF: standardstringentry+19DEj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E8h
; 662:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 663:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 664:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 665:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E740
; 666:      entry = 42;
    mov bl, 2Ah
; 667:    v10 = 1257;

loc_86E740:    ; CODE XREF: standardstringentry+1A1Cj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4E9h
; 668:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 669:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 670:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 671:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E77E
; 672:      entry = 43;
    mov bl, 2Bh
; 673:    v10 = 1258;

loc_86E77E:    ; CODE XREF: standardstringentry+1A5Aj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4EAh
; 674:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 675:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 676:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 677:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E7BC
; 678:      entry = 44;
    mov bl, 2Ch
; 679:    v10 = 1259;

loc_86E7BC:    ; CODE XREF: standardstringentry+1A98j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4EBh
; 680:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 681:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 682:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 683:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E7FA
; 684:      entry = 45;
    mov bl, 2Dh
; 685:    v10 = 1260;

loc_86E7FA:    ; CODE XREF: standardstringentry+1AD6j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4ECh
; 686:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 687:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 688:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 689:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E838
; 690:      entry = 46;
    mov bl, 2Eh
; 691:    v10 = 1261;

loc_86E838:    ; CODE XREF: standardstringentry+1B14j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4EDh
; 692:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 693:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 694:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 695:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E876
; 696:      entry = 47;
    mov bl, 2Fh
; 697:    v10 = 1262;

loc_86E876:    ; CODE XREF: standardstringentry+1B52j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4EEh
; 698:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 699:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 700:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 701:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E8B4
; 702:      entry = 48;
    mov bl, 30h
; 703:    v10 = 1263;

loc_86E8B4:    ; CODE XREF: standardstringentry+1B90j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4EFh
; 704:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 705:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 706:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 707:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E8F2
; 708:      entry = 49;
    mov bl, 31h
; 709:    v10 = 1264;

loc_86E8F2:    ; CODE XREF: standardstringentry+1BCEj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F0h
; 710:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 711:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 712:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 713:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E930
; 714:      entry = 50;
    mov bl, 32h
; 715:    v10 = 1265;

loc_86E930:    ; CODE XREF: standardstringentry+1C0Cj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F1h
; 716:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 717:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 718:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 719:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E96E
; 720:      entry = 51;
    mov bl, 33h
; 721:    v10 = 1266;

loc_86E96E:    ; CODE XREF: standardstringentry+1C4Aj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F2h
; 722:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 723:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 724:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 725:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E9AC
; 726:      entry = 52;
    mov bl, 34h
; 727:    v10 = 1267;

loc_86E9AC:    ; CODE XREF: standardstringentry+1C88j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F3h
; 728:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 729:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 730:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 731:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86E9EA
; 732:      entry = 53;
    mov bl, 35h
; 733:    v10 = 1268;

loc_86E9EA:    ; CODE XREF: standardstringentry+1CC6j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F4h
; 734:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 735:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 736:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 737:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EA28
; 738:      entry = 54;
    mov bl, 36h
; 739:    v10 = 1269;

loc_86EA28:    ; CODE XREF: standardstringentry+1D04j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F5h
; 740:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 741:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 742:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 743:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EA66
; 744:      entry = 55;
    mov bl, 37h
; 745:    v10 = 1270;

loc_86EA66:    ; CODE XREF: standardstringentry+1D42j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F6h
; 746:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 747:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 748:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 749:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EAA4
; 750:      entry = 56;
    mov bl, 38h
; 751:    v10 = 1271;

loc_86EAA4:    ; CODE XREF: standardstringentry+1D80j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F7h
; 752:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 753:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 754:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 755:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EAE2
; 756:      entry = 57;
    mov bl, 39h
; 757:    v10 = 1272;

loc_86EAE2:    ; CODE XREF: standardstringentry+1DBEj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F8h
; 758:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 759:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 760:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 761:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EB20
; 762:      entry = 58;
    mov bl, 3Ah
; 763:    v10 = 1273;

loc_86EB20:    ; CODE XREF: standardstringentry+1DFCj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4F9h
; 764:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 765:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 766:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 767:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EB5E
; 768:      entry = 59;
    mov bl, 3Bh
; 769:    v10 = 1274;

loc_86EB5E:    ; CODE XREF: standardstringentry+1E3Aj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4FAh
; 770:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 771:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 772:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 773:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EB9C
; 774:      entry = 60;
    mov bl, 3Ch
; 775:    v10 = 1275;

loc_86EB9C:    ; CODE XREF: standardstringentry+1E78j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4FBh
; 776:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 777:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 778:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 779:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EBDA
; 780:      entry = 61;
    mov bl, 3Dh
; 781:    v10 = 1276;

loc_86EBDA:    ; CODE XREF: standardstringentry+1EB6j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4FCh
; 782:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 783:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 784:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 785:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EC18
; 786:      entry = 62;
    mov bl, 3Eh
; 787:    v10 = 1277;

loc_86EC18:    ; CODE XREF: standardstringentry+1EF4j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4FDh
; 788:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 789:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 790:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 791:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EC56
; 792:      entry = 63;
    mov bl, 3Fh
; 793:    v10 = 1278;

loc_86EC56:    ; CODE XREF: standardstringentry+1F32j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4FEh
; 794:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 795:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 796:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 797:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EC94
; 798:      entry = 64;
    mov bl, 40h
; 799:    v10 = 1279;

loc_86EC94:    ; CODE XREF: standardstringentry+1F70j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 4FFh
; 800:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 801:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 802:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 803:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86ECD2
; 804:      entry = 65;
    mov bl, 41h
; 805:    v10 = 1280;

loc_86ECD2:    ; CODE XREF: standardstringentry+1FAEj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 500h
; 806:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 807:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 808:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 809:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86ED10
; 810:      entry = 66;
    mov bl, 42h
; 811:    v10 = 1281;

loc_86ED10:    ; CODE XREF: standardstringentry+1FECj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 501h
; 812:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 813:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 814:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 815:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86ED4E
; 816:      entry = 67;
    mov bl, 43h
; 817:    v10 = 1282;

loc_86ED4E:    ; CODE XREF: standardstringentry+202Aj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 502h
; 818:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 819:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 820:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 821:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86ED8C
; 822:      entry = 68;
    mov bl, 44h
; 823:    v10 = 1283;

loc_86ED8C:    ; CODE XREF: standardstringentry+2068j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 503h
; 824:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 825:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 826:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 827:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EDCA
; 828:      entry = 69;
    mov bl, 45h
; 829:    v10 = 1284;

loc_86EDCA:    ; CODE XREF: standardstringentry+20A6j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 504h
; 830:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 831:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 832:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 833:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EE08
; 834:      entry = 70;
    mov bl, 46h
; 835:    v10 = 1285;

loc_86EE08:    ; CODE XREF: standardstringentry+20E4j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 505h
; 836:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 837:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 838:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 839:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EE46
; 840:      entry = 71;
    mov bl, 47h
; 841:    v10 = 1286;

loc_86EE46:    ; CODE XREF: standardstringentry+2122j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 506h
; 842:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 843:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 844:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 845:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EE84
; 846:      entry = 72;
    mov bl, 48h
; 847:    v10 = 1287;

loc_86EE84:    ; CODE XREF: standardstringentry+2160j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 507h
; 848:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 849:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 850:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 851:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EEC2
; 852:      entry = 73;
    mov bl, 49h
; 853:    v10 = 1288;

loc_86EEC2:    ; CODE XREF: standardstringentry+219Ej
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 508h
; 854:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 855:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 856:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 857:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EF00
; 858:      entry = 74;
    mov bl, 4Ah
; 859:    v10 = 1289;

loc_86EF00:    ; CODE XREF: standardstringentry+21DCj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 509h
; 860:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 861:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 862:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 863:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EF3E
; 864:      entry = 75;
    mov bl, 4Bh
; 865:    v10 = 1290;

loc_86EF3E:    ; CODE XREF: standardstringentry+221Aj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Ah
; 866:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 867:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 868:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 869:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EF7C
; 870:      entry = 76;
    mov bl, 4Ch
; 871:    v10 = 1291;

loc_86EF7C:    ; CODE XREF: standardstringentry+2258j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Bh
; 872:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 873:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 874:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 875:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EFBA
; 876:      entry = 77;
    mov bl, 4Dh
; 877:    v10 = 1292;

loc_86EFBA:    ; CODE XREF: standardstringentry+2296j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Ch
; 878:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 879:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 880:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 881:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86EFF8
; 882:      entry = 78;
    mov bl, 4Eh
; 883:    v10 = 1293;

loc_86EFF8:    ; CODE XREF: standardstringentry+22D4j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Dh
; 884:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 885:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 886:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 887:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F036
; 888:      entry = 79;
    mov bl, 4Fh
; 889:    v10 = 1294;

loc_86F036:    ; CODE XREF: standardstringentry+2312j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Eh
; 890:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 891:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 892:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 893:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F074
; 894:      entry = 80;
    mov bl, 50h
; 895:    v10 = 1295;

loc_86F074:    ; CODE XREF: standardstringentry+2350j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 50Fh
; 896:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 897:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 898:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 899:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F0B2
; 900:      entry = 81;
    mov bl, 51h
; 901:    v10 = 1296;

loc_86F0B2:    ; CODE XREF: standardstringentry+238Ej
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 510h
; 902:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 903:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 904:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 905:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F0F0
; 906:      entry = 82;
    mov bl, 52h
; 907:    v10 = 1297;

loc_86F0F0:    ; CODE XREF: standardstringentry+23CCj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 511h
; 908:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 909:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 910:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 911:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F12E
; 912:      entry = 83;
    mov bl, 53h
; 913:    v10 = 1298;

loc_86F12E:    ; CODE XREF: standardstringentry+240Aj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 512h
; 914:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 915:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 916:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 917:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F16C
; 918:      entry = 84;
    mov bl, 54h
; 919:    v10 = 1299;

loc_86F16C:    ; CODE XREF: standardstringentry+2448j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 513h
; 920:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 921:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 922:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 923:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F1AA
; 924:      entry = 85;
    mov bl, 55h
; 925:    v10 = 1300;

loc_86F1AA:    ; CODE XREF: standardstringentry+2486j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 514h
; 926:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 927:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 928:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 929:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F1E8
; 930:      entry = 86;
    mov bl, 56h
; 931:    v10 = 1301;

loc_86F1E8:    ; CODE XREF: standardstringentry+24C4j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 515h
; 932:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 933:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 934:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 935:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F226
; 936:      entry = 87;
    mov bl, 57h
; 937:    v10 = 1302;

loc_86F226:    ; CODE XREF: standardstringentry+2502j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 516h
; 938:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 939:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 940:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 941:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F264
; 942:      entry = 88;
    mov bl, 58h
; 943:    v10 = 1303;

loc_86F264:    ; CODE XREF: standardstringentry+2540j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 517h
; 944:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 945:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 946:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 947:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F2A2
; 948:      entry = 89;
    mov bl, 59h
; 949:    v10 = 1304;

loc_86F2A2:    ; CODE XREF: standardstringentry+257Ej
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 518h
; 950:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 951:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 952:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 953:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F2E0
; 954:      entry = 90;
    mov bl, 5Ah
; 955:    v10 = 1305;

loc_86F2E0:    ; CODE XREF: standardstringentry+25BCj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 519h
; 956:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 957:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 958:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 959:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F31E
; 960:      entry = 91;
    mov bl, 5Bh
; 961:    v10 = 1306;

loc_86F31E:    ; CODE XREF: standardstringentry+25FAj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 51Ah
; 962:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 963:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 964:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 965:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F35C
; 966:      entry = 92;
    mov bl, 5Ch
; 967:    v10 = 1307;

loc_86F35C:    ; CODE XREF: standardstringentry+2638j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 51Bh
; 968:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 969:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 970:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 971:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F39A
; 972:      entry = 93;
    mov bl, 5Dh
; 973:    v10 = 1308;

loc_86F39A:    ; CODE XREF: standardstringentry+2676j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 51Ch
; 974:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 975:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 976:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 977:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F3D8
; 978:      entry = 94;
    mov bl, 5Eh
; 979:    v10 = 1309;

loc_86F3D8:    ; CODE XREF: standardstringentry+26B4j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 51Dh
; 980:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 981:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 982:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 983:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F416
; 984:      entry = 95;
    mov bl, 5Fh
; 985:    v10 = 1310;

loc_86F416:    ; CODE XREF: standardstringentry+26F2j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 51Eh
; 986:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 987:    v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 988:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 989:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F454
; 990:      entry = 96;
    mov bl, 60h
; 991:    v10 = 1311;

loc_86F454:    ; CODE XREF: standardstringentry+2730j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 51Fh
; 992:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 993:    v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 994:    _Distance2((int)&v10, v11, v12);
    call _Distance2
; 995:    if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F492
; 996:      entry = 97;
    mov bl, 61h
; 997:    v10 = 1312;

loc_86F492:    ; CODE XREF: standardstringentry+276Ej
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 520h
; 998:    _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 999:    v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1000:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1001:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F4D0
; 1002:       entry = 98;
    mov bl, 62h
; 1003:     v10 = 1313;

loc_86F4D0:    ; CODE XREF: standardstringentry+27ACj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 521h
; 1004:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1005:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1006:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1007:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F50E
; 1008:       entry = 99;
    mov bl, 63h
; 1009:     v10 = 1314;

loc_86F50E:    ; CODE XREF: standardstringentry+27EAj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 522h
; 1010:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1011:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1012:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1013:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F54C
; 1014:       entry = 100;
    mov bl, 64h
; 1015:     v10 = 1315;

loc_86F54C:    ; CODE XREF: standardstringentry+2828j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 523h
; 1016:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1017:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1018:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1019:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F58A
; 1020:       entry = 101;
    mov bl, 65h
; 1021:     v10 = 1316;

loc_86F58A:    ; CODE XREF: standardstringentry+2866j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 524h
; 1022:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1023:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1024:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1025:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F5C8
; 1026:       entry = 102;
    mov bl, 66h
; 1027:     v10 = 1317;

loc_86F5C8:    ; CODE XREF: standardstringentry+28A4j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 525h
; 1028:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1029:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1030:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1031:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F606
; 1032:       entry = 103;
    mov bl, 67h
; 1033:     v10 = 1318;

loc_86F606:    ; CODE XREF: standardstringentry+28E2j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 526h
; 1034:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1035:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1036:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1037:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F644
; 1038:       entry = 104;
    mov bl, 68h
; 1039:     v10 = 1319;

loc_86F644:    ; CODE XREF: standardstringentry+2920j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 527h
; 1040:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1041:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1042:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1043:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F682
; 1044:       entry = 105;
    mov bl, 69h
; 1045:     v10 = 1320;

loc_86F682:    ; CODE XREF: standardstringentry+295Ej
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 528h
; 1046:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1047:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1048:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1049:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F6C0
; 1050:       entry = 106;
    mov bl, 6Ah
; 1051:     v10 = 1321;

loc_86F6C0:    ; CODE XREF: standardstringentry+299Cj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 529h
; 1052:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1053:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1054:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1055:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F6FE
; 1056:       entry = 107;
    mov bl, 6Bh
; 1057:     v10 = 1322;

loc_86F6FE:    ; CODE XREF: standardstringentry+29DAj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Ah
; 1058:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1059:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1060:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1061:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F73C
; 1062:       entry = 108;
    mov bl, 6Ch
; 1063:     v10 = 1323;

loc_86F73C:    ; CODE XREF: standardstringentry+2A18j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Bh
; 1064:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1065:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1066:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1067:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F77A
; 1068:       entry = 109;
    mov bl, 6Dh
; 1069:     v10 = 1324;

loc_86F77A:    ; CODE XREF: standardstringentry+2A56j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Ch
; 1070:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1071:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1072:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1073:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F7B8
; 1074:       entry = 110;
    mov bl, 6Eh
; 1075:     v10 = 1325;

loc_86F7B8:    ; CODE XREF: standardstringentry+2A94j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Dh
; 1076:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1077:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1078:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1079:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F7F6
; 1080:       entry = 111;
    mov bl, 6Fh
; 1081:     v10 = 1326;

loc_86F7F6:    ; CODE XREF: standardstringentry+2AD2j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Eh
; 1082:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1083:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1084:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1085:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F834
; 1086:       entry = 112;
    mov bl, 70h
; 1087:     v10 = 1327;

loc_86F834:    ; CODE XREF: standardstringentry+2B10j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 52Fh
; 1088:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1089:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1090:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1091:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F872
; 1092:       entry = 113;
    mov bl, 71h
; 1093:     v10 = 1328;

loc_86F872:    ; CODE XREF: standardstringentry+2B4Ej
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 530h
; 1094:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1095:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1096:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1097:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F8B0
; 1098:       entry = 114;
    mov bl, 72h
; 1099:     v10 = 1329;

loc_86F8B0:    ; CODE XREF: standardstringentry+2B8Cj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 531h
; 1100:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1101:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1102:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1103:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F8EE
; 1104:       entry = 115;
    mov bl, 73h
; 1105:     v10 = 1330;

loc_86F8EE:    ; CODE XREF: standardstringentry+2BCAj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 532h
; 1106:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1107:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1108:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1109:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F92C
; 1110:       entry = 116;
    mov bl, 74h
; 1111:     v10 = 1331;

loc_86F92C:    ; CODE XREF: standardstringentry+2C08j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 533h
; 1112:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1113:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1114:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1115:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F96A
; 1116:       entry = 117;
    mov bl, 75h
; 1117:     v10 = 1332;

loc_86F96A:    ; CODE XREF: standardstringentry+2C46j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 534h
; 1118:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1119:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1120:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1121:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F9A8
; 1122:       entry = 118;
    mov bl, 76h
; 1123:     v10 = 1333;

loc_86F9A8:    ; CODE XREF: standardstringentry+2C84j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 535h
; 1124:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1125:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1126:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1127:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86F9E6
; 1128:       entry = 119;
    mov bl, 77h
; 1129:     v10 = 1334;

loc_86F9E6:    ; CODE XREF: standardstringentry+2CC2j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 536h
; 1130:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1131:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1132:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1133:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FA24
; 1134:       entry = 120;
    mov bl, 78h
; 1135:     v10 = 1335;

loc_86FA24:    ; CODE XREF: standardstringentry+2D00j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 537h
; 1136:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1137:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1138:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1139:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FA62
; 1140:       entry = 121;
    mov bl, 79h
; 1141:     v10 = 1336;

loc_86FA62:    ; CODE XREF: standardstringentry+2D3Ej
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 538h
; 1142:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1143:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1144:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1145:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FAA0
; 1146:       entry = 122;
    mov bl, 7Ah
; 1147:     v10 = 1337;

loc_86FAA0:    ; CODE XREF: standardstringentry+2D7Cj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 539h
; 1148:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1149:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1150:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1151:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FADE
; 1152:       entry = 123;
    mov bl, 7Bh
; 1153:     v10 = 1338;

loc_86FADE:    ; CODE XREF: standardstringentry+2DBAj
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 53Ah
; 1154:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1155:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1156:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1157:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FB1C
; 1158:       entry = 124;
    mov bl, 7Ch
; 1159:     v10 = 1339;

loc_86FB1C:    ; CODE XREF: standardstringentry+2DF8j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 53Bh
; 1160:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1161:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1162:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1163:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FB5A
; 1164:       entry = 125;
    mov bl, 7Dh
; 1165:     v10 = 1340;

loc_86FB5A:    ; CODE XREF: standardstringentry+2E36j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 53Ch
; 1166:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1167:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1168:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1169:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FB98
; 1170:       entry = 126;
    mov bl, 7Eh
; 1171:     v10 = 1341;

loc_86FB98:    ; CODE XREF: standardstringentry+2E74j
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 53Dh
; 1172:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1173:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1174:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1175:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FBD6
; 1176:       entry = -128;
    mov bl, 80h
; 1177:     v10 = 1342;

loc_86FBD6:    ; CODE XREF: standardstringentry+2EB2j
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 53Eh
; 1178:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1179:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1180:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1181:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FC14
; 1182:       entry = -127;
    mov bl, 81h
; 1183:     v10 = 1343;

loc_86FC14:    ; CODE XREF: standardstringentry+2EF0j
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 53Fh
; 1184:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1185:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1186:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1187:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FC52
; 1188:       entry = -126;
    mov bl, 82h
; 1189:     v10 = 1344;

loc_86FC52:    ; CODE XREF: standardstringentry+2F2Ej
    lea edx, [esp+20h+var_8]
    push edx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 540h
; 1190:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1191:     v10 = 0;
    mov eax, [esp+20h+flag]
    mov ecx, [esp+20h+var_4]
    mov edx, [esp+20h+var_8]
    push eax
    push ecx
    push edx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1192:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1193:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FC90
; 1194:       entry = -125;
    mov bl, 83h
; 1195:     v10 = 1345;

loc_86FC90:    ; CODE XREF: standardstringentry+2F6Cj
    lea eax, [esp+20h+var_8]
    push eax
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 541h
; 1196:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1197:     v10 = 0;
    mov ecx, [esp+20h+flag]
    mov edx, [esp+20h+var_4]
    mov eax, [esp+20h+var_8]
    push ecx
    push edx
    push eax
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1198:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1199:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FCCE
; 1200:       entry = -124;
    mov bl, 84h
; 1201:     v10 = 1346;

loc_86FCCE:    ; CODE XREF: standardstringentry+2FAAj
    lea ecx, [esp+20h+var_8]
    push ecx
    push esi
    lea eax, [esp+28h+var_C]
    mov dword [esp+28h+var_C], 542h
; 1202:     _Eqrange((int)&v10, v5, (int)&v11);
    call _Eqrange
; 1203:     v10 = 0;
    mov edx, [esp+20h+flag]
    mov eax, [esp+20h+var_4]
    mov ecx, [esp+20h+var_8]
    push edx
    push eax
    push ecx
    lea edi, [esp+2Ch+var_C]
    mov [esp+2Ch+var_C], ebp
; 1204:     _Distance2((int)&v10, v11, v12);
    call _Distance2
; 1205:     if ( v10 )
    add esp, 0Ch
    cmp [esp+20h+var_C], ebp
    jz short loc_86FD0C
; 1206:       entry = -123;
    mov bl, 85h
; 1207:     v10 = 1347;

loc_86FD0C:    ; CODE XREF: standardstringentry+2FE8j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 543h
; 1208:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FD26
; 1209:       entry = -122;
    mov bl, 86h
; 1210:     v10 = 1348;

loc_86FD26:    ; CODE XREF: standardstringentry+3002j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 544h
; 1211:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FD40
; 1212:       entry = -121;
    mov bl, 87h
; 1213:     v10 = 1349;

loc_86FD40:    ; CODE XREF: standardstringentry+301Cj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 545h
; 1214:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FD5A
; 1215:       entry = -120;
    mov bl, 88h
; 1216:     v10 = 1350;

loc_86FD5A:    ; CODE XREF: standardstringentry+3036j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 546h
; 1217:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FD74
; 1218:       entry = -119;
    mov bl, 89h
; 1219:     v10 = 1351;

loc_86FD74:    ; CODE XREF: standardstringentry+3050j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 547h
; 1220:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FD8E
; 1221:       entry = -118;
    mov bl, 8Ah
; 1222:     v10 = 1352;

loc_86FD8E:    ; CODE XREF: standardstringentry+306Aj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 548h
; 1223:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FDA8
; 1224:       entry = -117;
    mov bl, 8Bh
; 1225:     v10 = 1353;

loc_86FDA8:    ; CODE XREF: standardstringentry+3084j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 549h
; 1226:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FDC2
; 1227:       entry = -116;
    mov bl, 8Ch
; 1228:     v10 = 1354;

loc_86FDC2:    ; CODE XREF: standardstringentry+309Ej
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 54Ah
; 1229:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FDDC
; 1230:       entry = -115;
    mov bl, 8Dh
; 1231:     v10 = 1355;

loc_86FDDC:    ; CODE XREF: standardstringentry+30B8j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 54Bh
; 1232:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FDF6
; 1233:       entry = -114;
    mov bl, 8Eh
; 1234:     v10 = 1356;

loc_86FDF6:    ; CODE XREF: standardstringentry+30D2j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 54Ch
; 1235:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FE10
; 1236:       entry = -113;
    mov bl, 8Fh
; 1237:     v10 = 1357;

loc_86FE10:    ; CODE XREF: standardstringentry+30ECj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 54Dh
; 1238:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FE2A
; 1239:       entry = -112;
    mov bl, 90h
; 1240:     v10 = 1358;

loc_86FE2A:    ; CODE XREF: standardstringentry+3106j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 54Eh
; 1241:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FE44
; 1242:       entry = -111;
    mov bl, 91h
; 1243:     v10 = 1359;

loc_86FE44:    ; CODE XREF: standardstringentry+3120j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 54Fh
; 1244:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FE5E
; 1245:       entry = -110;
    mov bl, 92h
; 1246:     v10 = 1360;

loc_86FE5E:    ; CODE XREF: standardstringentry+313Aj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 550h
; 1247:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FE78
; 1248:       entry = -109;
    mov bl, 93h
; 1249:     v10 = 1361;

loc_86FE78:    ; CODE XREF: standardstringentry+3154j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 551h
; 1250:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FE92
; 1251:       entry = -108;
    mov bl, 94h
; 1252:     v10 = 1362;

loc_86FE92:    ; CODE XREF: standardstringentry+316Ej
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 552h
; 1253:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FEAC
; 1254:       entry = -107;
    mov bl, 95h
; 1255:     v10 = 1363;

loc_86FEAC:    ; CODE XREF: standardstringentry+3188j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 553h
; 1256:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FEC6
; 1257:       entry = -106;
    mov bl, 96h
; 1258:     v10 = 1364;

loc_86FEC6:    ; CODE XREF: standardstringentry+31A2j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 554h
; 1259:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FEE0
; 1260:       entry = -105;
    mov bl, 97h
; 1261:     v10 = 1365;

loc_86FEE0:    ; CODE XREF: standardstringentry+31BCj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 555h
; 1262:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FEFA
; 1263:       entry = -104;
    mov bl, 98h
; 1264:     v10 = 1366;

loc_86FEFA:    ; CODE XREF: standardstringentry+31D6j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 556h
; 1265:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FF14
; 1266:       entry = -103;
    mov bl, 99h
; 1267:     v10 = 1367;

loc_86FF14:    ; CODE XREF: standardstringentry+31F0j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 557h
; 1268:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FF2E
; 1269:       entry = -102;
    mov bl, 9Ah
; 1270:     v10 = 1368;

loc_86FF2E:    ; CODE XREF: standardstringentry+320Aj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 558h
; 1271:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FF48
; 1272:       entry = -101;
    mov bl, 9Bh
; 1273:     v10 = 1369;

loc_86FF48:    ; CODE XREF: standardstringentry+3224j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 559h
; 1274:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FF62
; 1275:       entry = -100;
    mov bl, 9Ch
; 1276:     v10 = 1370;

loc_86FF62:    ; CODE XREF: standardstringentry+323Ej
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 55Ah
; 1277:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FF7C
; 1278:       entry = -99;
    mov bl, 9Dh
; 1279:     v10 = 1371;

loc_86FF7C:    ; CODE XREF: standardstringentry+3258j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 55Bh
; 1280:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FF96
; 1281:       entry = -98;
    mov bl, 9Eh
; 1282:     v10 = 1372;

loc_86FF96:    ; CODE XREF: standardstringentry+3272j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 55Ch
; 1283:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FFB0
; 1284:       entry = -97;
    mov bl, 9Fh
; 1285:     v10 = 1373;

loc_86FFB0:    ; CODE XREF: standardstringentry+328Cj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 55Dh
; 1286:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FFCA
; 1287:       entry = -96;
    mov bl, 0A0h
; 1288:     v10 = 1374;

loc_86FFCA:    ; CODE XREF: standardstringentry+32A6j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 55Eh
; 1289:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FFE4
; 1290:       entry = -95;
    mov bl, 0A1h
; 1291:     v10 = 1375;

loc_86FFE4:    ; CODE XREF: standardstringentry+32C0j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 55Fh
; 1292:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_86FFFE
; 1293:       entry = -94;
    mov bl, 0A2h
; 1294:     v10 = 1376;

loc_86FFFE:    ; CODE XREF: standardstringentry+32DAj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 560h
; 1295:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870018
; 1296:       entry = -93;
    mov bl, 0A3h
; 1297:     v10 = 1377;

loc_870018:    ; CODE XREF: standardstringentry+32F4j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 561h
; 1298:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870032
; 1299:       entry = -92;
    mov bl, 0A4h
; 1300:     v10 = 1378;

loc_870032:    ; CODE XREF: standardstringentry+330Ej
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 562h
; 1301:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87004C
; 1302:       entry = -91;
    mov bl, 0A5h
; 1303:     v10 = 1379;

loc_87004C:    ; CODE XREF: standardstringentry+3328j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 563h
; 1304:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870066
; 1305:       entry = -90;
    mov bl, 0A6h
; 1306:     v10 = 1380;

loc_870066:    ; CODE XREF: standardstringentry+3342j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 564h
; 1307:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870080
; 1308:       entry = -89;
    mov bl, 0A7h
; 1309:     v10 = 1381;

loc_870080:    ; CODE XREF: standardstringentry+335Cj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 565h
; 1310:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87009A
; 1311:       entry = -88;
    mov bl, 0A8h
; 1312:     v10 = 1382;

loc_87009A:    ; CODE XREF: standardstringentry+3376j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 566h
; 1313:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8700B4
; 1314:       entry = -87;
    mov bl, 0A9h
; 1315:     v10 = 1383;

loc_8700B4:    ; CODE XREF: standardstringentry+3390j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 567h
; 1316:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8700CE
; 1317:       entry = -86;
    mov bl, 0AAh
; 1318:     v10 = 1384;

loc_8700CE:    ; CODE XREF: standardstringentry+33AAj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 568h
; 1319:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8700E8
; 1320:       entry = -85;
    mov bl, 0ABh
; 1321:     v10 = 1385;

loc_8700E8:    ; CODE XREF: standardstringentry+33C4j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 569h
; 1322:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870102
; 1323:       entry = -84;
    mov bl, 0ACh
; 1324:     v10 = 1386;

loc_870102:    ; CODE XREF: standardstringentry+33DEj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 56Ah
; 1325:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87011C
; 1326:       entry = -83;
    mov bl, 0ADh
; 1327:     v10 = 1387;

loc_87011C:    ; CODE XREF: standardstringentry+33F8j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 56Bh
; 1328:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870136
; 1329:       entry = -82;
    mov bl, 0AEh
; 1330:     v10 = 1388;

loc_870136:    ; CODE XREF: standardstringentry+3412j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 56Ch
; 1331:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870150
; 1332:       entry = -81;
    mov bl, 0AFh
; 1333:     v10 = 1389;

loc_870150:    ; CODE XREF: standardstringentry+342Cj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 56Dh
; 1334:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87016A
; 1335:       entry = -80;
    mov bl, 0B0h
; 1336:     v10 = 1390;

loc_87016A:    ; CODE XREF: standardstringentry+3446j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 56Eh
; 1337:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870184
; 1338:       entry = -79;
    mov bl, 0B1h
; 1339:     v10 = 1391;

loc_870184:    ; CODE XREF: standardstringentry+3460j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 56Fh
; 1340:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87019E
; 1341:       entry = -78;
    mov bl, 0B2h
; 1342:     v10 = 1392;

loc_87019E:    ; CODE XREF: standardstringentry+347Aj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 570h
; 1343:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8701B8
; 1344:       entry = -77;
    mov bl, 0B3h
; 1345:     v10 = 1393;

loc_8701B8:    ; CODE XREF: standardstringentry+3494j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 571h
; 1346:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8701D2
; 1347:       entry = -76;
    mov bl, 0B4h
; 1348:     v10 = 1394;

loc_8701D2:    ; CODE XREF: standardstringentry+34AEj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 572h
; 1349:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8701EC
; 1350:       entry = -75;
    mov bl, 0B5h
; 1351:     v10 = 1395;

loc_8701EC:    ; CODE XREF: standardstringentry+34C8j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 573h
; 1352:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870206
; 1353:       entry = -74;
    mov bl, 0B6h
; 1354:     v10 = 1396;

loc_870206:    ; CODE XREF: standardstringentry+34E2j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 574h
; 1355:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870220
; 1356:       entry = -73;
    mov bl, 0B7h
; 1357:     v10 = 1397;

loc_870220:    ; CODE XREF: standardstringentry+34FCj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 575h
; 1358:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87023A
; 1359:       entry = -72;
    mov bl, 0B8h
; 1360:     v10 = 1398;

loc_87023A:    ; CODE XREF: standardstringentry+3516j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 576h
; 1361:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870254
; 1362:       entry = -71;
    mov bl, 0B9h
; 1363:     v10 = 1399;

loc_870254:    ; CODE XREF: standardstringentry+3530j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 577h
; 1364:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87026E
; 1365:       entry = -70;
    mov bl, 0BAh
; 1366:     v10 = 1400;

loc_87026E:    ; CODE XREF: standardstringentry+354Aj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 578h
; 1367:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870288
; 1368:       entry = -69;
    mov bl, 0BBh
; 1369:     v10 = 1401;

loc_870288:    ; CODE XREF: standardstringentry+3564j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 579h
; 1370:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8702A2
; 1371:       entry = -68;
    mov bl, 0BCh
; 1372:     v10 = 1402;

loc_8702A2:    ; CODE XREF: standardstringentry+357Ej
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 57Ah
; 1373:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8702BC
; 1374:       entry = -67;
    mov bl, 0BDh
; 1375:     v10 = 1403;

loc_8702BC:    ; CODE XREF: standardstringentry+3598j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 57Bh
; 1376:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8702D6
; 1377:       entry = -66;
    mov bl, 0BEh
; 1378:     v10 = 1404;

loc_8702D6:    ; CODE XREF: standardstringentry+35B2j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 57Ch
; 1379:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8702F0
; 1380:       entry = -65;
    mov bl, 0BFh
; 1381:     v10 = 1405;

loc_8702F0:    ; CODE XREF: standardstringentry+35CCj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 57Dh
; 1382:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87030A
; 1383:       entry = -64;
    mov bl, 0C0h
; 1384:     v10 = 1406;

loc_87030A:    ; CODE XREF: standardstringentry+35E6j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 57Eh
; 1385:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870324
; 1386:       entry = -63;
    mov bl, 0C1h
; 1387:     v10 = 1407;

loc_870324:    ; CODE XREF: standardstringentry+3600j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 57Fh
; 1388:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87033E
; 1389:       entry = -62;
    mov bl, 0C2h
; 1390:     v10 = 1408;

loc_87033E:    ; CODE XREF: standardstringentry+361Aj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 580h
; 1391:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870358
; 1392:       entry = -61;
    mov bl, 0C3h
; 1393:     v10 = 1409;

loc_870358:    ; CODE XREF: standardstringentry+3634j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 581h
; 1394:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870372
; 1395:       entry = -60;
    mov bl, 0C4h
; 1396:     v10 = 1410;

loc_870372:    ; CODE XREF: standardstringentry+364Ej
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 582h
; 1397:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87038C
; 1398:       entry = -59;
    mov bl, 0C5h
; 1399:     v10 = 1411;

loc_87038C:    ; CODE XREF: standardstringentry+3668j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 583h
; 1400:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8703A6
; 1401:       entry = -58;
    mov bl, 0C6h
; 1402:     v10 = 1412;

loc_8703A6:    ; CODE XREF: standardstringentry+3682j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 584h
; 1403:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8703C0
; 1404:       entry = -57;
    mov bl, 0C7h
; 1405:     v10 = 1413;

loc_8703C0:    ; CODE XREF: standardstringentry+369Cj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 585h
; 1406:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8703DA
; 1407:       entry = -56;
    mov bl, 0C8h
; 1408:     v10 = 1414;

loc_8703DA:    ; CODE XREF: standardstringentry+36B6j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 586h
; 1409:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8703F4
; 1410:       entry = -55;
    mov bl, 0C9h
; 1411:     v10 = 1415;

loc_8703F4:    ; CODE XREF: standardstringentry+36D0j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 587h
; 1412:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87040E
; 1413:       entry = -54;
    mov bl, 0CAh
; 1414:     v10 = 1416;

loc_87040E:    ; CODE XREF: standardstringentry+36EAj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 588h
; 1415:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870428
; 1416:       entry = -53;
    mov bl, 0CBh
; 1417:     v10 = 1417;

loc_870428:    ; CODE XREF: standardstringentry+3704j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 589h
; 1418:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870442
; 1419:       entry = -52;
    mov bl, 0CCh
; 1420:     v10 = 1418;

loc_870442:    ; CODE XREF: standardstringentry+371Ej
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 58Ah
; 1421:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87045C
; 1422:       entry = -51;
    mov bl, 0CDh
; 1423:     v10 = 1419;

loc_87045C:    ; CODE XREF: standardstringentry+3738j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 58Bh
; 1424:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870476
; 1425:       entry = -50;
    mov bl, 0CEh
; 1426:     v10 = 1420;

loc_870476:    ; CODE XREF: standardstringentry+3752j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 58Ch
; 1427:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870490
; 1428:       entry = -49;
    mov bl, 0CFh
; 1429:     v10 = 1421;

loc_870490:    ; CODE XREF: standardstringentry+376Cj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 58Dh
; 1430:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8704AA
; 1431:       entry = -48;
    mov bl, 0D0h
; 1432:     v10 = 1422;

loc_8704AA:    ; CODE XREF: standardstringentry+3786j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 58Eh
; 1433:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8704C4
; 1434:       entry = -47;
    mov bl, 0D1h
; 1435:     v10 = 1423;

loc_8704C4:    ; CODE XREF: standardstringentry+37A0j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 58Fh
; 1436:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8704DE
; 1437:       entry = -46;
    mov bl, 0D2h
; 1438:     v10 = 1424;

loc_8704DE:    ; CODE XREF: standardstringentry+37BAj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 590h
; 1439:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8704F8
; 1440:       entry = -45;
    mov bl, 0D3h
; 1441:     v10 = 1425;

loc_8704F8:    ; CODE XREF: standardstringentry+37D4j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 591h
; 1442:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870512
; 1443:       entry = -44;
    mov bl, 0D4h
; 1444:     v10 = 1426;

loc_870512:    ; CODE XREF: standardstringentry+37EEj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 592h
; 1445:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87052C
; 1446:       entry = -43;
    mov bl, 0D5h
; 1447:     v10 = 1427;

loc_87052C:    ; CODE XREF: standardstringentry+3808j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 593h
; 1448:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870546
; 1449:       entry = -42;
    mov bl, 0D6h
; 1450:     v10 = 1428;

loc_870546:    ; CODE XREF: standardstringentry+3822j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 594h
; 1451:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870560
; 1452:       entry = -41;
    mov bl, 0D7h
; 1453:     v10 = 1429;

loc_870560:    ; CODE XREF: standardstringentry+383Cj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 595h
; 1454:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87057A
; 1455:       entry = -40;
    mov bl, 0D8h
; 1456:     v10 = 1430;

loc_87057A:    ; CODE XREF: standardstringentry+3856j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 596h
; 1457:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870594
; 1458:       entry = -39;
    mov bl, 0D9h
; 1459:     v10 = 1431;

loc_870594:    ; CODE XREF: standardstringentry+3870j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 597h
; 1460:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8705AE
; 1461:       entry = -38;
    mov bl, 0DAh
; 1462:     v10 = 1432;

loc_8705AE:    ; CODE XREF: standardstringentry+388Aj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 598h
; 1463:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8705C8
; 1464:       entry = -37;
    mov bl, 0DBh
; 1465:     v10 = 1433;

loc_8705C8:    ; CODE XREF: standardstringentry+38A4j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 599h
; 1466:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8705E2
; 1467:       entry = -36;
    mov bl, 0DCh
; 1468:     v10 = 1434;

loc_8705E2:    ; CODE XREF: standardstringentry+38BEj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 59Ah
; 1469:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8705FC
; 1470:       entry = -35;
    mov bl, 0DDh
; 1471:     v10 = 1435;

loc_8705FC:    ; CODE XREF: standardstringentry+38D8j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 59Bh
; 1472:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870616
; 1473:       entry = -34;
    mov bl, 0DEh
; 1474:     v10 = 1436;

loc_870616:    ; CODE XREF: standardstringentry+38F2j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 59Ch
; 1475:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870630
; 1476:       entry = -33;
    mov bl, 0DFh
; 1477:     v10 = 1437;

loc_870630:    ; CODE XREF: standardstringentry+390Cj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 59Dh
; 1478:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87064A
; 1479:       entry = -32;
    mov bl, 0E0h
; 1480:     v10 = 1438;

loc_87064A:    ; CODE XREF: standardstringentry+3926j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 59Eh
; 1481:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870664
; 1482:       entry = -31;
    mov bl, 0E1h
; 1483:     v10 = 1439;

loc_870664:    ; CODE XREF: standardstringentry+3940j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 59Fh
; 1484:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87067E
; 1485:       entry = -30;
    mov bl, 0E2h
; 1486:     v10 = 1440;

loc_87067E:    ; CODE XREF: standardstringentry+395Aj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A0h
; 1487:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870698
; 1488:       entry = -29;
    mov bl, 0E3h
; 1489:     v10 = 1441;

loc_870698:    ; CODE XREF: standardstringentry+3974j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A1h
; 1490:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8706B2
; 1491:       entry = -28;
    mov bl, 0E4h
; 1492:     v10 = 1442;

loc_8706B2:    ; CODE XREF: standardstringentry+398Ej
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A2h
; 1493:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8706CC
; 1494:       entry = -27;
    mov bl, 0E5h
; 1495:     v10 = 1443;

loc_8706CC:    ; CODE XREF: standardstringentry+39A8j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A3h
; 1496:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8706E6
; 1497:       entry = -26;
    mov bl, 0E6h
; 1498:     v10 = 1444;

loc_8706E6:    ; CODE XREF: standardstringentry+39C2j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A4h
; 1499:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870700
; 1500:       entry = -25;
    mov bl, 0E7h
; 1501:     v10 = 1445;

loc_870700:    ; CODE XREF: standardstringentry+39DCj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A5h
; 1502:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87071A
; 1503:       entry = -24;
    mov bl, 0E8h
; 1504:     v10 = 1446;

loc_87071A:    ; CODE XREF: standardstringentry+39F6j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A6h
; 1505:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870734
; 1506:       entry = -23;
    mov bl, 0E9h
; 1507:     v10 = 1447;

loc_870734:    ; CODE XREF: standardstringentry+3A10j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A7h
; 1508:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87074E
; 1509:       entry = -22;
    mov bl, 0EAh
; 1510:     v10 = 1448;

loc_87074E:    ; CODE XREF: standardstringentry+3A2Aj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A8h
; 1511:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870768
; 1512:       entry = -21;
    mov bl, 0EBh
; 1513:     v10 = 1449;

loc_870768:    ; CODE XREF: standardstringentry+3A44j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5A9h
; 1514:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870782
; 1515:       entry = -20;
    mov bl, 0ECh
; 1516:     v10 = 1450;

loc_870782:    ; CODE XREF: standardstringentry+3A5Ej
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5AAh
; 1517:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87079C
; 1518:       entry = -19;
    mov bl, 0EDh
; 1519:     v10 = 1451;

loc_87079C:    ; CODE XREF: standardstringentry+3A78j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5ABh
; 1520:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8707B6
; 1521:       entry = -18;
    mov bl, 0EEh
; 1522:     v10 = 1452;

loc_8707B6:    ; CODE XREF: standardstringentry+3A92j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5ACh
; 1523:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8707D0
; 1524:       entry = -17;
    mov bl, 0EFh
; 1525:     v10 = 1453;

loc_8707D0:    ; CODE XREF: standardstringentry+3AACj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5ADh
; 1526:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8707EA
; 1527:       entry = -16;
    mov bl, 0F0h
; 1528:     v10 = 1454;

loc_8707EA:    ; CODE XREF: standardstringentry+3AC6j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5AEh
; 1529:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870804
; 1530:       entry = -15;
    mov bl, 0F1h
; 1531:     v10 = 1455;

loc_870804:    ; CODE XREF: standardstringentry+3AE0j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5AFh
; 1532:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87081E
; 1533:       entry = -14;
    mov bl, 0F2h
; 1534:     v10 = 1456;

loc_87081E:    ; CODE XREF: standardstringentry+3AFAj
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B0h
; 1535:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870838
; 1536:       entry = -13;
    mov bl, 0F3h
; 1537:     v10 = 1457;

loc_870838:    ; CODE XREF: standardstringentry+3B14j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B1h
; 1538:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870852
; 1539:       entry = -12;
    mov bl, 0F4h
; 1540:     v10 = 1458;

loc_870852:    ; CODE XREF: standardstringentry+3B2Ej
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B2h
; 1541:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87086C
; 1542:       entry = -11;
    mov bl, 0F5h
; 1543:     v10 = 1459;

loc_87086C:    ; CODE XREF: standardstringentry+3B48j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B3h
; 1544:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870886
; 1545:       entry = -10;
    mov bl, 0F6h
; 1546:     v10 = 1460;

loc_870886:    ; CODE XREF: standardstringentry+3B62j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B4h
; 1547:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8708A0
; 1548:       entry = -9;
    mov bl, 0F7h
; 1549:     v10 = 1461;

loc_8708A0:    ; CODE XREF: standardstringentry+3B7Cj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B5h
; 1550:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8708BA
; 1551:       entry = -8;
    mov bl, 0F8h
; 1552:     v10 = 1462;

loc_8708BA:    ; CODE XREF: standardstringentry+3B96j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B6h
; 1553:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8708D4
; 1554:       entry = -7;
    mov bl, 0F9h
; 1555:     v10 = 1463;

loc_8708D4:    ; CODE XREF: standardstringentry+3BB0j
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B7h
; 1556:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_8708EE
; 1557:       entry = -6;
    mov bl, 0FAh
; 1558:     v10 = 1464;

loc_8708EE:    ; CODE XREF: standardstringentry+3BCAj
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B8h
; 1559:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870908
; 1560:       entry = -5;
    mov bl, 0FBh
; 1561:     v10 = 1465;

loc_870908:    ; CODE XREF: standardstringentry+3BE4j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5B9h
; 1562:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870922
; 1563:       entry = -4;
    mov bl, 0FCh
; 1564:     v10 = 1466;

loc_870922:    ; CODE XREF: standardstringentry+3BFEj
    lea ecx, [esp+20h+var_C]
    push ecx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5BAh
; 1565:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_87093C
; 1566:       entry = -3;
    mov bl, 0FDh
; 1567:     v10 = 1467;

loc_87093C:    ; CODE XREF: standardstringentry+3C18j
    lea edx, [esp+20h+var_C]
    push edx
    mov ecx, esi
    mov dword [esp+24h+var_C], 5BBh
; 1568:     if ( sub_595E10(&v10) )
    call count
    test eax, eax
    jz short loc_870956
; 1569:       entry = -2;
    mov bl, 0FEh
; 1570:     v10 = 1468;

loc_870956:    ; CODE XREF: standardstringentry+3C32j
    lea eax, [esp+20h+var_C]
    push eax
    mov ecx, esi
    mov dword [esp+24h+var_C], 5BCh
    call count
    test eax, eax
    jnz return_0

; 1574:   if ( entry == -1 )
loc_870972:    ; CODE XREF: standardstringentry+FB0j
    cmp bl, 0FFh
    jz return_0

; 1581:     if ( !entry )
    test bl, bl
    jnz short loc_87099A

    mov eax, [esp+20h+_str] ; a1
    mov ecx, [eax+10h]

    cmp ecx, ebp
    jbe short return_1

    dec ecx  ; a2
    call resize

    mov al, 1
    pop edi
    pop esi
    pop ebp
    pop ebx
    add esp, 10h
    retn
; ---------------------------------------------------------------------------

loc_87099A:    ; CODE XREF: standardstringentry+3C5Dj
    mov edi, [esp+20h+_str]
    mov eax, [edi+10h]
    mov ecx, [esp+20h+maxlen]
    mov esi, eax
    cmp esi, ecx
    jl short loc_8709AE
    lea esi, [ecx-1]

loc_8709AE:    ; CODE XREF: standardstringentry+3C89j
    cmp esi, ebp
    jge short loc_8709B4
    xor esi, esi

loc_8709B4:    ; CODE XREF: standardstringentry+3C90j
    lea ecx, [esi+1] ; a2
    cmp eax, ecx
    jnb short loc_8709C2
    mov eax, edi ; a1
    call resize

loc_8709C2:    ; CODE XREF: standardstringentry+3C99j
    lea ecx, [ebx-61h]
    cmp cl, 19h
    ja short loc_8709E9
    test byte [esp+20h+flag], 8
    jz short loc_8709E9
    cmp dword [edi+14h], 10h
    jb short loc_8709D9
    mov edi, [edi]

loc_8709D9:    ; CODE XREF: standardstringentry+3CB5j
    sub bl, 20h
    mov [edi+esi], bl
; 1609:     result = 1;
    mov al, 1
    pop edi
    pop esi
    pop ebp
    pop ebx
    add esp, 10h
    retn
; ---------------------------------------------------------------------------
; 1601:       if ( *(_DWORD *)(a2 + 20) >= 0x10u )

loc_8709E9:    ; CODE XREF: standardstringentry+3CA8j standardstringentry+3CAFj
    cmp dword [edi+14h], 10h
    jb short loc_8709F1
; 1602:  v8 = *(_DWORD *)a2;
    mov edi, [edi]
; 1603:       *(_BYTE *)(v8 + v9) = entry;

loc_8709F1:    ; CODE XREF: standardstringentry+3CCDj
    mov [edi+esi], bl

return_1:    ; CODE XREF: standardstringentry+3C68j
    mov al, 1
; 1604:       return 1;
    pop edi
    pop esi
    pop ebp
    pop ebx
    add esp, 10h
    retn
; ---------------------------------------------------------------------------
; 1576: LABEL_664:
; 1577:     result = 0;

return_0:    ; CODE XREF: standardstringentry+3C4Cj standardstringentry+3C55j
    pop edi
    pop esi
    pop ebp
    xor al, al
    pop ebx
    add esp, 10h
    retn
; standardstringentry endp

