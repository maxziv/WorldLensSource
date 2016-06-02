// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.util.Log;
import com.questvisual.wordlens.af;

public class k
{

    private static int a[];

    static String a(af af1)
    {
        switch (a()[af1.ordinal()])
        {
        case 5: // '\005'
        default:
            Log.w("QV", (new StringBuilder("Unknown ScriptEncoding: ")).append(af1).append(", defaulting to UTF-8").toString());
            return "UTF-8";

        case 4: // '\004'
            return "ISO-8859-5";

        case 6: // '\006'
            return "UTF-16LE";

        case 3: // '\003'
            return "ISO-8859-15";
        }
    }

    public static String a(String s)
    {
        af af1;
        if ("ru".equals(s))
        {
            af1 = af.d;
        } else
        if ("ko".equals(s))
        {
            af1 = af.f;
        } else
        if ("ja".equals(s))
        {
            af1 = af.f;
        } else
        {
            af1 = af.c;
        }
        return a(af1);
    }

    static int[] a()
    {
        int ai[] = a;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[af.values().length];
        try
        {
            ai1[af.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[af.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[af.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[af.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[af.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[af.g.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[af.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        a = ai1;
        return ai1;
    }
}
