char standardstringentry(string &str,int maxlen,unsigned int flag,std::set<InterfaceKey> &events)
{
    unsigned char entry=1;
    unsigned char cont;
    unsigned short int item;
    if(flag & STRINGENTRY_LETTERS)
    {
        if(events.count(INTERFACEKEY_STRING_A168))entry=168;//Ё
        if(events.count(INTERFACEKEY_STRING_A184))entry=184;//ё
        cont=192;
        for(item = INTERFACEKEY_STRING_A192; item <= INTERFACEKEY_STRING_A255; item++)//все русские буквы
        {
            if(events.count(item)) entry = cont;
            cont++;
        }
        cont='a';
        for(item = INTERFACEKEY_STRING_A097; item <= INTERFACEKEY_STRING_A122; item++)//маленькие английские буквы
        {
            if(events.count(item)) entry = cont;
            cont++;
        }
        cont='A';
        for(item = INTERFACEKEY_STRING_A065; item <= INTERFACEKEY_STRING_A090; item++)//большие английские буквы
        {
            if(events.count(item)) entry = cont;
            cont++;
        }
    }
    if(flag & STRINGENTRY_SPACE)
        if(events.count(INTERFACEKEY_STRING_A032)) entry=' ';
    
    if(events.count(INTERFACEKEY_STRING_A000)) entry='\x0';
    if(flag & STRINGENTRY_NUMBERS)
    {
        cont=0;
        for(item = INTERFACEKEY_STRING_A048; item <= INTERFACEKEY_STRING_A057; item++)//цифры
        {
            if(events.count(item))entry=cont;
            cont++;
        }
    }
        
    if(flag & STRINGENTRY_SYMBOLS)
    {
        cont=0;
        for(item = INTERFACEKEY_STRING_A000; item <= INTERFACEKEY_STRING_A255; item++)
        {
            if(events.count(item)) entry=cont;
            cont++;
        }
    }

    if(entry!=1)
    {
        if(entry=='\x0')
            if(str.length()>0) str.resize(str.length()-1);
        else
        {
            int cursor=str.length();
            if(cursor>=maxlen) cursor=maxlen-1;
            if(cursor<0) cursor=0;

            if(str.length()<cursor+1) str.resize(cursor+1);

            if(entry>='a'&&entry<='z'&&(flag & STRINGENTRY_CAPS)) str[cursor]=entry+'A'-'a';
            if(entry>=224&&entry<=255&&(flag & STRINGENTRY_CAPS)) str[cursor]=entry+'A'-'a';
            if(entry==184&&(flag & STRINGENTRY_CAPS)) str[cursor]=entry-10;
            else str[cursor]=entry;
        }
        return 1;
    }

    return 0;
}
