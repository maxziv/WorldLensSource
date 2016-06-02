// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.util.Log;

final class o
{

    private static boolean a = false;
    private static int b = 5;

    static int a(String s, String s1)
    {
        if (a || b <= 3)
        {
            return 0;
        } else
        {
            return Log.d(s, s1);
        }
    }

    static int a(String s, String s1, Throwable throwable)
    {
        if (a || b <= 3)
        {
            return 0;
        } else
        {
            return Log.d(s, s1, throwable);
        }
    }

    static void a()
    {
        a = true;
    }

    static boolean a(String s)
    {
        return Log.isLoggable(s, 3);
    }

    static int b(String s, String s1)
    {
        if (a || b <= 6)
        {
            return 0;
        } else
        {
            return Log.e(s, s1);
        }
    }

    static int b(String s, String s1, Throwable throwable)
    {
        if (a || b <= 6)
        {
            return 0;
        } else
        {
            return Log.e(s, s1, throwable);
        }
    }

    static void b()
    {
        a = false;
    }

    static int c(String s, String s1)
    {
        if (a || b <= 4)
        {
            return 0;
        } else
        {
            return Log.i(s, s1);
        }
    }

    static int c(String s, String s1, Throwable throwable)
    {
        if (a || b <= 4)
        {
            return 0;
        } else
        {
            return Log.i(s, s1, throwable);
        }
    }

    static int d(String s, String s1)
    {
        if (a || b <= 5)
        {
            return 0;
        } else
        {
            return Log.w(s, s1);
        }
    }

}
