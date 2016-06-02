// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;


public final class l extends Enum
{

    public static final l a;
    public static final l b;
    public static final l c;
    public static final l d;
    public static final l e;
    public static final l f;
    public static final l g;
    private static final l h[];

    private l(String s, int i)
    {
        super(s, i);
    }

    public static l a(int i)
    {
        l al[] = values();
        if (i < 0 || i >= al.length)
        {
            return g;
        } else
        {
            return al[i];
        }
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/questvisual/wordlens/billing/l, s);
    }

    public static l[] values()
    {
        l al[] = h;
        int i = al.length;
        l al1[] = new l[i];
        System.arraycopy(al, 0, al1, 0, i);
        return al1;
    }

    static 
    {
        a = new l("RESULT_OK", 0);
        b = new l("RESULT_USER_CANCELED", 1);
        c = new l("RESULT_SERVICE_UNAVAILABLE", 2);
        d = new l("RESULT_BILLING_UNAVAILABLE", 3);
        e = new l("RESULT_ITEM_UNAVAILABLE", 4);
        f = new l("RESULT_DEVELOPER_ERROR", 5);
        g = new l("RESULT_ERROR", 6);
        l al[] = new l[7];
        al[0] = a;
        al[1] = b;
        al[2] = c;
        al[3] = d;
        al[4] = e;
        al[5] = f;
        al[6] = g;
        h = al;
    }
}
