// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem, ag

public class NativeWordLensUI
{

    private static NativeWordLensUI a;

    private NativeWordLensUI()
    {
    }

    public static NativeWordLensUI a()
    {
        if (a == null)
        {
            a = new NativeWordLensUI();
        }
        return a;
    }

    private static native boolean isAvailableNative();

    native int GetUIModeNative();

    native void SetUIModeNative(int i);

    public void a(ag ag1)
    {
        synchronized (WordLensSystem.g())
        {
            SetUIModeNative(ag1.d);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ag b()
    {
        return ag.a(GetUIModeNative());
    }
}
