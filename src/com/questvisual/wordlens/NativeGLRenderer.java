// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;
import com.questvisual.wordlens.e.b;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem, NativeWordLensUI, ag

class NativeGLRenderer
    implements android.opengl.GLSurfaceView.Renderer
{

    private boolean a;
    private ag b;
    float pixelDensity;

    public NativeGLRenderer()
    {
        pixelDensity = 1.0F;
        a = true;
        b = null;
    }

    public static void a()
    {
        synchronized (WordLensSystem.g())
        {
            Log.d("QV", "NativeGLRenderer.onEGLContextDestroyed()");
            onContextDestroyedNative();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private native int getViewOrientationNative();

    private static native void onContextDestroyedNative();

    private native void setDrawOCRResultsNative(boolean flag);

    public static native void setIsAppWindowAutoRotate(boolean flag);

    public void a(float f)
    {
        pixelDensity = f;
    }

    public void a(int i)
    {
        com.questvisual.wordlens.e.b.a(i);
        synchronized (WordLensSystem.g())
        {
            setViewOrientationNative(i);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ag ag)
    {
        b = ag;
    }

    public void a(boolean flag)
    {
        setDrawOCRResultsNative(flag);
    }

    public int b()
    {
        int i;
        synchronized (WordLensSystem.g())
        {
            i = getViewOrientationNative();
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(boolean flag)
    {
        a = flag;
    }

    public void onDrawFrame(GL10 gl10)
    {
        if (!a)
        {
            synchronized (WordLensSystem.g())
            {
                onDrawFrameNative(gl10);
            }
            return;
        } else
        {
            gl10.glClear(16640);
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public native void onDrawFrameNative(GL10 gl10);

    public void onSurfaceChanged(GL10 gl10, int i, int j)
    {
        synchronized (WordLensSystem.g())
        {
            onSurfaceChangedNative(gl10, i, j);
            if (b != null)
            {
                NativeWordLensUI.a().a(b);
                b = null;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public native void onSurfaceChangedNative(GL10 gl10, int i, int j);

    public void onSurfaceCreated(GL10 gl10, EGLConfig eglconfig)
    {
        synchronized (WordLensSystem.g())
        {
            onSurfaceCreatedNative(gl10, eglconfig);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public native void onSurfaceCreatedNative(GL10 gl10, EGLConfig eglconfig);

    public native void setViewOrientationNative(int i);
}
