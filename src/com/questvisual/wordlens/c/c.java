// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.c;


public final class c extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/questvisual/wordlens/c/c, s);
    }

    public static c[] values()
    {
        c ac[] = c;
        int i = ac.length;
        c ac1[] = new c[i];
        System.arraycopy(ac, 0, ac1, 0, i);
        return ac1;
    }

    static 
    {
        a = new c("LOCAL", 0);
        b = new c("REMOTE", 1);
        c ac[] = new c[2];
        ac[0] = a;
        ac[1] = b;
        c = ac;
    }
}
