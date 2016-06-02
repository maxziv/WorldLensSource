// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


final class ay extends Enum
{

    public static final ay a;
    public static final ay b;
    public static final ay c;
    private static final ay d[];

    private ay(String s, int i)
    {
        super(s, i);
    }

    public static ay valueOf(String s)
    {
        return (ay)Enum.valueOf(com/questvisual/wordlens/ay, s);
    }

    public static ay[] values()
    {
        ay aay[] = d;
        int i = aay.length;
        ay aay1[] = new ay[i];
        System.arraycopy(aay, 0, aay1, 0, i);
        return aay1;
    }

    static 
    {
        a = new ay("WELCOME_1", 0);
        b = new ay("WELCOME_2", 1);
        c = new ay("INCLUDED_LANG_PICK", 2);
        ay aay[] = new ay[3];
        aay[0] = a;
        aay[1] = b;
        aay[2] = c;
        d = aay;
    }
}
