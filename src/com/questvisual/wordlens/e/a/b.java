// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e.a;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    public static final b d;
    public static final b e;
    public static final b f;
    private static final b g[];

    private b(String s, int i)
    {
        super(s, i);
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/questvisual/wordlens/e/a/b, s);
    }

    public static b[] values()
    {
        b ab[] = g;
        int i = ab.length;
        b ab1[] = new b[i];
        System.arraycopy(ab, 0, ab1, 0, i);
        return ab1;
    }

    static 
    {
        a = new b("ANIM_GROW_FROM_LEFT", 0);
        b = new b("ANIM_GROW_FROM_RIGHT", 1);
        c = new b("ANIM_GROW_FROM_CENTER", 2);
        d = new b("ANIM_REFLECT", 3);
        e = new b("ANIM_AUTO", 4);
        f = new b("NONE", 5);
        b ab[] = new b[6];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        ab[4] = e;
        ab[5] = f;
        g = ab;
    }
}
