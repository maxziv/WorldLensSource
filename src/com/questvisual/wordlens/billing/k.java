// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;


public final class k extends Enum
{

    public static final k a;
    public static final k b;
    public static final k c;
    private static final k d[];

    private k(String s, int i)
    {
        super(s, i);
    }

    public static k a(int i)
    {
        k ak[] = values();
        if (i < 0 || i >= ak.length)
        {
            return b;
        } else
        {
            return ak[i];
        }
    }

    public static k valueOf(String s)
    {
        return (k)Enum.valueOf(com/questvisual/wordlens/billing/k, s);
    }

    public static k[] values()
    {
        k ak[] = d;
        int i = ak.length;
        k ak1[] = new k[i];
        System.arraycopy(ak, 0, ak1, 0, i);
        return ak1;
    }

    static 
    {
        a = new k("PURCHASED", 0);
        b = new k("CANCELED", 1);
        c = new k("REFUNDED", 2);
        k ak[] = new k[3];
        ak[0] = a;
        ak[1] = b;
        ak[2] = c;
        d = ak;
    }
}
