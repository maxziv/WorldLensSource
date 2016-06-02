// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


public final class ag extends Enum
{

    public static final ag a;
    public static final ag b;
    public static final ag c;
    private static final ag e[];
    public int d;

    private ag(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static ag a(int i)
    {
        switch (i)
        {
        default:
            return a;

        case 2: // '\002'
            return c;

        case 1: // '\001'
            return b;
        }
    }

    public static ag valueOf(String s)
    {
        return (ag)Enum.valueOf(com/questvisual/wordlens/ag, s);
    }

    public static ag[] values()
    {
        ag aag[] = e;
        int i = aag.length;
        ag aag1[] = new ag[i];
        System.arraycopy(aag, 0, aag1, 0, i);
        return aag1;
    }

    static 
    {
        a = new ag("IDLE", 0, 0);
        b = new ag("VIDEO", 1, 1);
        c = new ag("SNAPSHOT", 2, 2);
        ag aag[] = new ag[3];
        aag[0] = a;
        aag[1] = b;
        aag[2] = c;
        e = aag;
    }
}
