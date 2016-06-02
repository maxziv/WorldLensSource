// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e.a;


public final class d extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    public static final d e;
    public static final d f;
    public static final d g;
    public static final d h;
    private static final d i[];

    private d(String s, int j)
    {
        super(s, j);
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/questvisual/wordlens/e/a/d, s);
    }

    public static d[] values()
    {
        d ad[] = i;
        int j = ad.length;
        d ad1[] = new d[j];
        System.arraycopy(ad, 0, ad1, 0, j);
        return ad1;
    }

    static 
    {
        a = new d("DEFAULT", 0);
        b = new d("LEFT_EDGES", 1);
        c = new d("RIGHT_EDGES", 2);
        d = new d("TO_LEFT_OF", 3);
        e = new d("TO_RIGHT_OF", 4);
        f = new d("CENTER", 5);
        g = new d("SCREEN_CENTER", 6);
        h = new d("RIGHT_EDGE_AT_CENTER", 7);
        d ad[] = new d[8];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        ad[3] = d;
        ad[4] = e;
        ad[5] = f;
        ad[6] = g;
        ad[7] = h;
        i = ad;
    }
}
