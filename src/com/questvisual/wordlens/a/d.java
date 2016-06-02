// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.a;

import android.hardware.Camera;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceHolder;
import java.io.IOException;

// Referenced classes of package com.questvisual.wordlens.a:
//            c

class d extends Handler
{

    final c a;

    d(c c1, Looper looper)
    {
        a = c1;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        int i = message.what;
        i;
        JVM INSTR tableswitch 1 24: default 120
    //                   1 131
    //                   2 198
    //                   3 233
    //                   4 246
    //                   5 120
    //                   6 294
    //                   7 315
    //                   8 328
    //                   9 362
    //                   10 382
    //                   11 402
    //                   12 120
    //                   13 415
    //                   14 432
    //                   15 120
    //                   16 120
    //                   17 120
    //                   18 452
    //                   19 472
    //                   20 500
    //                   21 120
    //                   22 120
    //                   23 259
    //                   24 348;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7 _L8 _L9 _L10 _L11 _L1 _L12 _L13 _L1 _L1 _L1 _L14 _L15 _L16 _L1 _L1 _L17 _L18
_L1:
        break; /* Loop/switch isn't completed */
_L16:
        break MISSING_BLOCK_LABEL_500;
_L19:
        c.b(a).open();
        return;
_L2:
        try
        {
            c.a(a).release();
            c.a(a, null);
            c.a(a, null);
        }
        catch (RuntimeException runtimeexception)
        {
            Log.e("QV", (new StringBuilder("Camera Runtime Exception in handleMessage(): ")).append(runtimeexception.getLocalizedMessage()).toString(), runtimeexception);
            c.a(a, runtimeexception);
        }
          goto _L19
_L3:
        c.a(a, null);
        c.a(a).reconnect();
          goto _L19
        IOException ioexception1;
        ioexception1;
        c.a(a, ioexception1);
          goto _L19
_L4:
        c.a(a).unlock();
          goto _L19
_L5:
        c.a(a).lock();
          goto _L19
_L17:
        c.a(a).setPreviewDisplay((SurfaceHolder)message.obj);
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        throw new RuntimeException(ioexception);
_L6:
        c.a(a, null);
        c.a(a).startPreview();
          goto _L19
_L7:
        c.a(a).stopPreview();
          goto _L19
_L8:
        c.a(a).setPreviewCallbackWithBuffer((android.hardware.Camera.PreviewCallback)message.obj);
          goto _L19
_L18:
        c.a(a).setPreviewCallback(null);
          goto _L19
_L9:
        c.a(a).addCallbackBuffer((byte[])message.obj);
          goto _L19
_L10:
        c.a(a).autoFocus((android.hardware.Camera.AutoFocusCallback)message.obj);
          goto _L19
_L11:
        c.a(a).cancelAutoFocus();
          goto _L19
_L12:
        c.a(a).setDisplayOrientation(message.arg1);
          goto _L19
_L13:
        c.a(a).setZoomChangeListener((android.hardware.Camera.OnZoomChangeListener)message.obj);
          goto _L19
_L14:
        c.a(a).setErrorCallback((android.hardware.Camera.ErrorCallback)message.obj);
          goto _L19
_L15:
        c.a(a, null);
        c.a(a).setParameters((android.hardware.Camera.Parameters)message.obj);
          goto _L19
        c.a(a, c.a(a).getParameters());
          goto _L19
    }
}
