// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import java.io.IOException;

// Referenced classes of package com.questvisual.wordlens.a:
//            d, e

public class c
{

    private static c c;
    public boolean a;
    public boolean b;
    private ConditionVariable d;
    private android.hardware.Camera.Parameters e;
    private IOException f;
    private RuntimeException g;
    private Handler h;
    private e i;
    private Camera j;

    private c(SharedPreferences sharedpreferences)
    {
        d = new ConditionVariable();
        g = null;
        a = sharedpreferences.getBoolean("key.device.needs.samsungs.hd.cam.mode.one.hack", false);
        b = sharedpreferences.getBoolean("key.device.needs.htc.cam.mode.hack", false);
        HandlerThread handlerthread = new HandlerThread("Camera Handler Thread");
        handlerthread.start();
        h = new d(this, handlerthread.getLooper());
    }

    static Camera a(c c1)
    {
        return c1.j;
    }

    public static c a(Context context)
    {
        if (c == null)
        {
            c = new c(context.getSharedPreferences("word.lens", 0));
        }
        return c;
    }

    static void a(c c1, android.hardware.Camera.Parameters parameters)
    {
        c1.e = parameters;
    }

    static void a(c c1, Camera camera)
    {
        c1.j = camera;
    }

    static void a(c c1, e e1)
    {
        c1.i = e1;
    }

    static void a(c c1, IOException ioexception)
    {
        c1.f = ioexception;
    }

    static void a(c c1, RuntimeException runtimeexception)
    {
        c1.g = runtimeexception;
    }

    static ConditionVariable b(c c1)
    {
        return c1.d;
    }

    static Handler c(c c1)
    {
        return c1.h;
    }

    static RuntimeException d(c c1)
    {
        return c1.g;
    }

    static android.hardware.Camera.Parameters e(c c1)
    {
        return c1.e;
    }

    e a(int k)
    {
        Camera camera;
        e e1;
        if (k < 0)
        {
            j = Camera.open();
        } else
        {
            j = Camera.open(k);
        }
        camera = j;
        e1 = null;
        if (camera != null)
        {
            i = new e(this, null);
            e1 = i;
        }
        return e1;
    }
}
