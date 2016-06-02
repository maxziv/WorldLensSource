// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

// Referenced classes of package com.questvisual.wordlens:
//            n, NativeGLRenderer

class p
    implements android.opengl.GLSurfaceView.EGLContextFactory
{

    private static int a = 12440;

    private p()
    {
    }

    p(p p1)
    {
        this();
    }

    public EGLContext createContext(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig)
    {
        Log.w(n.a(), "creating OpenGL ES 2.0 context");
        n.a("Before eglCreateContext", egl10);
        int ai[] = new int[3];
        ai[0] = a;
        ai[1] = 2;
        ai[2] = 12344;
        EGLContext eglcontext = egl10.eglCreateContext(egldisplay, eglconfig, EGL10.EGL_NO_CONTEXT, ai);
        n.a("After eglCreateContext", egl10);
        return eglcontext;
    }

    public void destroyContext(EGL10 egl10, EGLDisplay egldisplay, EGLContext eglcontext)
    {
        Log.w(n.a(), "destroying OpenGL ES 2.0 context");
        egl10.eglDestroyContext(egldisplay, eglcontext);
        NativeGLRenderer.a();
    }

}
