// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


final class ci extends Enum
{

    public static final ci a;
    public static final ci b;
    public static final ci c;
    public static final ci d;
    private static final ci e[];

    private ci(String s, int i)
    {
        super(s, i);
    }

    public static ci valueOf(String s)
    {
        return (ci)Enum.valueOf(com/questvisual/wordlens/ci, s);
    }

    public static ci[] values()
    {
        ci aci[] = e;
        int i = aci.length;
        ci aci1[] = new ci[i];
        System.arraycopy(aci, 0, aci1, 0, i);
        return aci1;
    }

    static 
    {
        a = new ci("WELCOME", 0);
        b = new ci("CAMERA_CHECK", 1);
        c = new ci("CAMERA_ADJUST", 2);
        d = new ci("NORMAL", 3);
        ci aci[] = new ci[4];
        aci[0] = a;
        aci[1] = b;
        aci[2] = c;
        aci[3] = d;
        e = aci;
    }
}
