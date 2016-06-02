// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.messaging;


public final class c extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    public static final c d;
    private static final c e[];

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/questvisual/wordlens/messaging/c, s);
    }

    public static c[] values()
    {
        c ac[] = e;
        int i = ac.length;
        c ac1[] = new c[i];
        System.arraycopy(ac, 0, ac1, 0, i);
        return ac1;
    }

    static 
    {
        a = new c("CANCEL", 0);
        b = new c("DOWN", 1);
        c = new c("MOVE", 2);
        d = new c("UP", 3);
        c ac[] = new c[4];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        ac[3] = d;
        e = ac;
    }
}
