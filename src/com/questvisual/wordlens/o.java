// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

class o
    implements android.opengl.GLSurfaceView.EGLConfigChooser
{

    private static int g;
    private static int h[];
    protected int a;
    protected int b;
    protected int c;
    protected int d;
    protected int e;
    protected int f;
    private int i[];

    public o(int j, int k, int l, int i1, int j1, int k1)
    {
        i = new int[1];
        a = j;
        b = k;
        c = l;
        d = i1;
        e = j1;
        f = k1;
    }

    private int a(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig, int j, int k)
    {
        if (egl10.eglGetConfigAttrib(egldisplay, eglconfig, j, i))
        {
            k = i[0];
        }
        return k;
    }

    public EGLConfig a(EGL10 egl10, EGLDisplay egldisplay, EGLConfig aeglconfig[])
    {
        int j;
        int k;
        j = aeglconfig.length;
        k = 0;
_L2:
        EGLConfig eglconfig;
        if (k >= j)
        {
            return null;
        }
        eglconfig = aeglconfig[k];
        int l = a(egl10, egldisplay, eglconfig, 12325, 0);
        int i1 = a(egl10, egldisplay, eglconfig, 12326, 0);
        if (l >= e && i1 >= f)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        int j1 = a(egl10, egldisplay, eglconfig, 12324, 0);
        int k1 = a(egl10, egldisplay, eglconfig, 12323, 0);
        int l1 = a(egl10, egldisplay, eglconfig, 12322, 0);
        int i2 = a(egl10, egldisplay, eglconfig, 12321, 0);
        if (j1 == a && k1 == b && l1 == c && i2 == d)
        {
            return eglconfig;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay)
    {
        int ai[] = new int[1];
        egl10.eglChooseConfig(egldisplay, h, null, 0, ai);
        int j = ai[0];
        if (j <= 0)
        {
            throw new IllegalArgumentException("No configs match configSpec");
        } else
        {
            EGLConfig aeglconfig[] = new EGLConfig[j];
            egl10.eglChooseConfig(egldisplay, h, aeglconfig, j, ai);
            return a(egl10, egldisplay, aeglconfig);
        }
    }

    static 
    {
        g = 4;
        int ai[] = new int[9];
        ai[0] = 12324;
        ai[1] = 4;
        ai[2] = 12323;
        ai[3] = 4;
        ai[4] = 12322;
        ai[5] = 4;
        ai[6] = 12352;
        ai[7] = g;
        ai[8] = 12344;
        h = ai;
    }
}
