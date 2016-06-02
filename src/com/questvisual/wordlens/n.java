// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.Log;
import android.view.SurfaceHolder;
import javax.microedition.khronos.egl.EGL10;

// Referenced classes of package com.questvisual.wordlens:
//            p, o

class n extends GLSurfaceView
{

    private static String a = "GL2SurfaceView";

    public n(Context context)
    {
        super(context);
        a(false, 0, 0);
    }

    static String a()
    {
        return a;
    }

    static void a(String s, EGL10 egl10)
    {
        b(s, egl10);
    }

    private void a(boolean flag, int i, int j)
    {
        setEGLContextClientVersion(2);
        if (flag)
        {
            getHolder().setFormat(-3);
        }
        setEGLContextFactory(new p(null));
        o o1;
        if (flag)
        {
            o1 = new o(8, 8, 8, 8, i, j);
        } else
        {
            o1 = new o(5, 6, 5, 0, i, j);
        }
        setEGLConfigChooser(o1);
    }

    private static void b(String s, EGL10 egl10)
    {
        do
        {
            int i = egl10.eglGetError();
            if (i == 12288)
            {
                return;
            }
            String s1 = a;
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = Integer.valueOf(i);
            Log.e(s1, String.format("%s: EGL error: 0x%x", aobj));
        } while (true);
    }

}
