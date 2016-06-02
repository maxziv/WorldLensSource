// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util;


public class a
{

    public static int a(int i)
    {
        return 90 * (((i + 45) / 90) % 4);
    }

    public static int a(int i, int j)
    {
        int k = i % j;
        if (k >= 0)
        {
            return k;
        } else
        {
            return k + Math.abs(j);
        }
    }

    public static int b(int i, int j)
    {
        return -180 + a(180 + (i - j), 360);
    }
}
