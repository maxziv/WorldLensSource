// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.DisplayMetrics;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.WindowManager;

// Referenced classes of package com.questvisual.wordlens:
//            NativeGLRenderer, n, WordLensActivity

class cb
    implements android.view.SurfaceHolder.Callback
{

    n a;
    NativeGLRenderer b;
    boolean c;
    final WordLensActivity d;

    public cb(WordLensActivity wordlensactivity, n n1)
    {
        d = wordlensactivity;
        super();
        a = n1;
        b = new NativeGLRenderer();
        n1.setRenderer(b);
        n1.setRenderMode(1);
        n1.getHolder().addCallback(this);
    }

    void a()
    {
        b.b(true);
        a.onPause();
        b.a(null);
    }

    void b()
    {
        a.onResume();
        b.b(false);
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        d.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        b.a(displaymetrics.density);
        c = true;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        c = false;
    }
}
