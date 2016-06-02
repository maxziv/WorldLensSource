// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


public final class af extends Enum
{

    public static final af a;
    public static final af b;
    public static final af c;
    public static final af d;
    public static final af e;
    public static final af f;
    public static final af g;
    private static final af h[];

    private af(String s, int i)
    {
        super(s, i);
    }

    public static af valueOf(String s)
    {
        return (af)Enum.valueOf(com/questvisual/wordlens/af, s);
    }

    public static af[] values()
    {
        af aaf[] = h;
        int i = aaf.length;
        af aaf1[] = new af[i];
        System.arraycopy(aaf, 0, aaf1, 0, i);
        return aaf1;
    }

    static 
    {
        a = new af("UNKNOWN", 0);
        b = new af("ASCII", 1);
        c = new af("LATIN_9", 2);
        d = new af("CYRILLIC", 3);
        e = new af("UTF8", 4);
        f = new af("UTF16", 5);
        g = new af("UTF32", 6);
        af aaf[] = new af[7];
        aaf[0] = a;
        aaf[1] = b;
        aaf[2] = c;
        aaf[3] = d;
        aaf[4] = e;
        aaf[5] = f;
        aaf[6] = g;
        h = aaf;
    }
}
