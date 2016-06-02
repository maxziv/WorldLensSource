// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.a;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Message;
import android.view.SurfaceHolder;
import com.questvisual.util.b;

// Referenced classes of package com.questvisual.wordlens.a:
//            c

public class e
{

    final c a;

    private e(c c1)
    {
        a = c1;
        super();
        boolean flag;
        if (com.questvisual.wordlens.a.c.a(c1) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.questvisual.util.b.a(flag);
    }

    e(c c1, e e1)
    {
        this(c1);
    }

    private void b(android.hardware.Camera.Parameters parameters)
    {
        if (a.a)
        {
            parameters.set("cam_mode", 1);
        }
        if (a.b)
        {
            parameters.set("cam-mode", 1);
        }
    }

    public void a()
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).sendEmptyMessage(1);
        com.questvisual.wordlens.a.c.b(a).block();
    }

    public void a(android.hardware.Camera.AutoFocusCallback autofocuscallback)
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).obtainMessage(10, autofocuscallback).sendToTarget();
        com.questvisual.wordlens.a.c.b(a).block();
    }

    public void a(android.hardware.Camera.Parameters parameters)
    {
        b(parameters);
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).obtainMessage(19, parameters).sendToTarget();
        com.questvisual.wordlens.a.c.b(a).block();
        if (com.questvisual.wordlens.a.c.d(a) != null)
        {
            throw com.questvisual.wordlens.a.c.d(a);
        } else
        {
            return;
        }
    }

    public void a(android.hardware.Camera.PreviewCallback previewcallback)
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).obtainMessage(8, previewcallback).sendToTarget();
        com.questvisual.wordlens.a.c.b(a).block();
    }

    public void a(SurfaceHolder surfaceholder)
    {
        com.questvisual.wordlens.a.c.c(a).obtainMessage(23, surfaceholder).sendToTarget();
    }

    public void a(byte abyte0[])
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).obtainMessage(9, abyte0).sendToTarget();
        com.questvisual.wordlens.a.c.b(a).block();
    }

    public void b()
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).sendEmptyMessage(6);
        com.questvisual.wordlens.a.c.b(a).block();
        if (com.questvisual.wordlens.a.c.d(a) != null)
        {
            throw com.questvisual.wordlens.a.c.d(a);
        } else
        {
            return;
        }
    }

    public void c()
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).sendEmptyMessage(7);
        com.questvisual.wordlens.a.c.b(a).block();
    }

    public void d()
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).obtainMessage(24).sendToTarget();
        com.questvisual.wordlens.a.c.b(a).block();
    }

    public void e()
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).sendEmptyMessage(11);
        com.questvisual.wordlens.a.c.b(a).block();
    }

    public android.hardware.Camera.Parameters f()
    {
        com.questvisual.wordlens.a.c.b(a).close();
        com.questvisual.wordlens.a.c.c(a).sendEmptyMessage(20);
        com.questvisual.wordlens.a.c.b(a).block();
        return com.questvisual.wordlens.a.c.e(a);
    }
}
