// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;


// Referenced classes of package com.b.a:
//            f, o

public class g
    implements Thread.UncaughtExceptionHandler
{

    private Thread.UncaughtExceptionHandler a;

    g()
    {
        a = Thread.getDefaultUncaughtExceptionHandler();
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        try
        {
            f.d().a(throwable);
        }
        catch (Throwable throwable1)
        {
            o.b("FlurryAgent", "", throwable1);
        }
        if (a != null)
        {
            a.uncaughtException(thread, throwable);
        }
    }
}
