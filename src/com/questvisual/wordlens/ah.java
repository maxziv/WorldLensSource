// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;

public final class ah extends Enum
{

    public static final ah a;
    public static final ah b;
    public static final ah c;
    public static final ah d;
    public static final ah e;
    public static final ah f;
    private static int g[];
    private static final ah h[];

    private ah(String s, int i)
    {
        super(s, i);
    }

    public static ah a(int i)
    {
        ah aah[] = values();
        if (aah != null && i < aah.length)
        {
            return aah[i];
        } else
        {
            Log.e("QV", (new StringBuilder("Unknown value of native enum value: ")).append(i).toString());
            return null;
        }
    }

    static int[] a()
    {
        int ai[] = g;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[values().length];
        try
        {
            ai1[f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        g = ai1;
        return ai1;
    }

    public static int b(int i)
    {
        ah ah1 = a(i);
        switch (a()[ah1.ordinal()])
        {
        case 3: // '\003'
        default:
            return 17;

        case 2: // '\002'
            return 19;

        case 4: // '\004'
            return 21;

        case 5: // '\005'
            return 23;
        }
    }

    public static ah valueOf(String s)
    {
        return (ah)Enum.valueOf(com/questvisual/wordlens/ah, s);
    }

    public static ah[] values()
    {
        ah aah[] = h;
        int i = aah.length;
        ah aah1[] = new ah[i];
        System.arraycopy(aah, 0, aah1, 0, i);
        return aah1;
    }

    static 
    {
        a = new ah("kQVTextAlignment_Default", 0);
        b = new ah("kQVTextAlignment_Left", 1);
        c = new ah("kQVTextAlignment_Center", 2);
        d = new ah("kQVTextAlignment_Right", 3);
        e = new ah("kQVTextAlignment_Justified", 4);
        f = new ah("kMaxQVTextAlignment", 5);
        ah aah[] = new ah[6];
        aah[0] = a;
        aah[1] = b;
        aah[2] = c;
        aah[3] = d;
        aah[4] = e;
        aah[5] = f;
        h = aah;
    }
}
