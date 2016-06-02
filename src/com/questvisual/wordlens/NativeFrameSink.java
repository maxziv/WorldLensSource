// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;
import com.questvisual.util.a;
import com.questvisual.wordlens.a.i;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem

public class NativeFrameSink
    implements i
{

    private boolean a;
    private int b;

    public NativeFrameSink()
    {
        a = true;
        b = -1;
    }

    public int a()
    {
        this;
        JVM INSTR monitorenter ;
        int j = b;
        this;
        JVM INSTR monitorexit ;
        return j;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(int j)
    {
        this;
        JVM INSTR monitorenter ;
        Log.i("QV", (new StringBuilder("NativeFrameSink camera natural orientation set to: ")).append(j).toString());
        b = j;
        synchronized (WordLensSystem.g())
        {
            setCameraOrientationNative(com.questvisual.util.a.a(j, 360));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int j, int k, int l)
    {
        onSetImageInfoNative(j, k, l);
    }

    public void a(byte abyte0[])
    {
        onSetNextFrameNative(abyte0);
    }

    public native void onSetImageInfoNative(int j, int k, int l);

    public native void onSetNextFrameNative(byte abyte0[]);

    public native void setCameraOrientationNative(int j);
}
