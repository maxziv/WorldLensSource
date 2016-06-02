// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.questvisual.wordlens.billing:
//            i, b, g, l, 
//            h, k

public class a
{

    private static i a;

    public a()
    {
    }

    static i a()
    {
        return a;
    }

    public static void a(PendingIntent pendingintent, Intent intent)
    {
        if (a == null)
        {
            return;
        } else
        {
            a.a(pendingintent, intent);
            return;
        }
    }

    public static void a(Context context, g g, l l)
    {
        if (a != null)
        {
            a.a(g, l);
        }
    }

    public static void a(Context context, h h, l l)
    {
        if (a != null)
        {
            a.a(h, l);
        }
    }

    public static void a(Context context, k k, String s, String s1, long l, String s2)
    {
        (new Thread(new b(context, k, s))).start();
    }

    public static void a(i j)
    {
        com/questvisual/wordlens/billing/a;
        JVM INSTR monitorenter ;
        a = j;
        com/questvisual/wordlens/billing/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(boolean flag)
    {
        if (a != null)
        {
            a.a(flag);
        }
    }

    public static void b(i j)
    {
        com/questvisual/wordlens/billing/a;
        JVM INSTR monitorenter ;
        a = null;
        com/questvisual/wordlens/billing/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
