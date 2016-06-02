// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.Camera;
import android.os.Build;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.questvisual.wordlens.NativeFrameSink;
import com.questvisual.wordlens.NativeWordLensUI;
import com.questvisual.wordlens.WordLensSystem;
import com.questvisual.wordlens.ag;
import com.questvisual.wordlens.ak;
import com.questvisual.wordlens.ap;
import com.questvisual.wordlens.e.a;
import com.questvisual.wordlens.messaging.MessageManager;
import com.questvisual.wordlens.messaging.g;
import com.questvisual.wordlens.q;
import java.util.List;

// Referenced classes of package com.questvisual.wordlens.a:
//            g, c, e, f, 
//            a

public class b
    implements android.view.SurfaceHolder.Callback
{

    android.hardware.Camera.CameraInfo a;
    public boolean b;
    public SurfaceView c;
    public com.questvisual.wordlens.a.g d;
    public NativeFrameSink e;
    public boolean f;
    public int g;
    public int h;
    private e i;
    private boolean j;
    private com.questvisual.wordlens.a.a k;
    private boolean l;
    private int m;
    private Context n;
    private Boolean o;
    private android.hardware.Camera.Size p;
    private android.hardware.Camera.Size q;
    private boolean r;
    private boolean s;
    private Boolean t;

    public b(Context context, SurfaceView surfaceview, int i1)
    {
        a = null;
        j = false;
        k = null;
        l = false;
        f = false;
        g = 0;
        h = 0;
        m = 0;
        o = null;
        p = null;
        q = null;
        r = false;
        s = false;
        t = null;
        c = surfaceview;
        n = context;
        m = i1;
        SurfaceHolder surfaceholder = surfaceview.getHolder();
        surfaceholder.addCallback(this);
        surfaceholder.setType(3);
        d = new com.questvisual.wordlens.a.g(context);
        e = new NativeFrameSink();
    }

    private void a(android.hardware.Camera.Parameters parameters)
    {
        if (android.os.Build.VERSION.SDK_INT <= 14)
        {
            if ("true".equals(parameters.get("video-stabilization-supported")))
            {
                parameters.set("video-stabilization", "true");
            }
        } else
        if (parameters.isVideoStabilizationSupported())
        {
            parameters.setVideoStabilization(true);
            return;
        }
    }

    private static boolean a(String s1, List list)
    {
        while (list == null || list.indexOf(s1) < 0) 
        {
            return false;
        }
        return true;
    }

    private void e(boolean flag)
    {
        if (a != null)
        {
            int i1 = a.orientation;
            int j1 = i1 + m;
            com.questvisual.wordlens.e.b.a(i1, m);
            if (j1 != e.a())
            {
                Log.i("QV", (new StringBuilder("Setting native camNaturalOrientation: ")).append(j1).append(", computed: ").append(i1).append(", compensation: ").append(m).toString());
                e.a(j1);
                if (flag)
                {
                    n();
                    return;
                }
            }
        }
    }

    private void n()
    {
        this;
        JVM INSTR monitorenter ;
        synchronized (WordLensSystem.g())
        {
            NativeWordLensUI nativewordlensui = NativeWordLensUI.a();
            ag ag1 = nativewordlensui.b();
            nativewordlensui.a(ag.a);
            nativewordlensui.a(ag1);
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

    private void o()
    {
        this;
        JVM INSTR monitorenter ;
        if (i != null) goto _L2; else goto _L1
_L1:
        int i1 = Camera.getNumberOfCameras();
        int j1 = 0;
          goto _L3
_L39:
        long l1;
        if (i == null && l1 < 8L) goto _L5; else goto _L4
_L4:
        if (i != null) goto _L7; else goto _L6
_L6:
        Log.e("QV", (new StringBuilder("Unable to open camera. What happened!?! Retry count is: ")).append(l1).toString());
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Unable to open camera after ")).append(l1).append(" tries. Device: ").append(Build.FINGERPRINT).toString(), "");
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L38:
        android.hardware.Camera.CameraInfo camerainfo;
        camerainfo = new android.hardware.Camera.CameraInfo();
        Camera.getCameraInfo(j1, camerainfo);
        if (camerainfo.facing != 0) goto _L9; else goto _L8
_L8:
        a = camerainfo;
          goto _L10
        Exception exception;
        exception;
        throw exception;
_L9:
        j1++;
        continue; /* Loop/switch isn't completed */
_L5:
        if (j1 < 0 || j1 >= i1) goto _L12; else goto _L11
_L11:
        i = com.questvisual.wordlens.a.c.a(n).a(j1);
          goto _L13
_L12:
        i = com.questvisual.wordlens.a.c.a(n).a(0x80000000);
          goto _L13
        RuntimeException runtimeexception;
        runtimeexception;
        Log.w("QV", (new StringBuilder("Unable to open camera on attempt # ")).append(l1).append(". Will wait and try again.").toString());
        i = null;
        try
        {
            Thread.sleep(250L);
        }
        catch (InterruptedException interruptedexception) { }
          goto _L13
_L7:
        Resources resources;
        int ai[];
        android.hardware.Camera.Parameters parameters;
        e(false);
        i.a(c.getHolder());
        resources = n.getResources();
        ai = resources.getIntArray(ak.prefNormalSize);
        parameters = i.f();
        com.questvisual.wordlens.a.f.a(parameters, ai[0], ai[1]);
        com.questvisual.wordlens.a.f.a(parameters);
        if (o == null)
        {
            break MISSING_BLOCK_LABEL_342;
        }
        List list;
        RuntimeException runtimeexception1;
        android.hardware.Camera.Size size;
        int k1;
        android.hardware.Camera.Size size1;
        android.hardware.Camera.Size size2;
        int i2;
        float f1;
        float f2;
        float f3;
        android.hardware.Camera.Size size3;
        android.hardware.Camera.Size size4;
        android.hardware.Camera.Size size5;
        boolean flag;
        boolean flag1;
        int ai2[];
        int j2;
        String s1;
        if (o.booleanValue())
        {
            s1 = "torch";
        } else
        {
            s1 = "off";
        }
        parameters.setFlashMode(s1);
        o = null;
        list = parameters.getSupportedPreviewSizes();
        if (list == null) goto _L15; else goto _L14
_L14:
        if (list.size() != 0) goto _L16; else goto _L15
_L15:
        Log.e("QV", "List of possible sizes was supposed to be at least one, at least the docs said so.");
        p = null;
        q = null;
_L31:
        if (t == null || !k()) goto _L18; else goto _L17
_L17:
        if (!t.booleanValue()) goto _L20; else goto _L19
_L19:
        size = q;
_L35:
        Log.d("QV", (new StringBuilder("Setting zoom. New size: ")).append(com.questvisual.wordlens.q.a(size)).toString());
        parameters.setPreviewSize(size.width, size.height);
        t = null;
_L18:
        a(parameters);
        i.a(parameters);
          goto _L2
        runtimeexception1;
        runtimeexception1.printStackTrace();
          goto _L2
_L32:
        if (k1 < list.size()) goto _L22; else goto _L21
_L21:
        size1 = com.questvisual.wordlens.q.a(list, ai[0], ai[1]);
        Log.d("QV", (new StringBuilder("[camsize] lowResNormalSize: ")).append(com.questvisual.wordlens.q.a(size1)).toString());
        int ai1[] = resources.getIntArray(ak.prefZoomedSize);
        size2 = com.questvisual.wordlens.q.b(list, ai1[0], ai1[1]);
        Log.d("QV", (new StringBuilder("[camsize] lowResZoomedSize: ")).append(com.questvisual.wordlens.q.a(size2)).toString());
        i2 = resources.getInteger(ap.WLOCR_MAX_DIM);
        f1 = g;
        f2 = h;
        if (f1 <= f2) goto _L24; else goto _L23
_L23:
        f3 = f1 / f2;
_L33:
        Log.d("QV", (new StringBuilder("Preview View is: ")).append(f1).append("x").append(f2).append(", AR=").append(f3).toString());
        size3 = com.questvisual.wordlens.q.a(list, f3, i2);
        Log.d("QV", (new StringBuilder("[camsize] mHighResNormalSize: ")).append(com.questvisual.wordlens.q.a(size3)).toString());
        size4 = com.questvisual.wordlens.q.a(list);
        Log.d("QV", (new StringBuilder("[camsize] mHighResZoomedSize: ")).append(com.questvisual.wordlens.q.a(size4)).toString());
        if (size3 == null || size4 == null) goto _L26; else goto _L25
_L25:
        j2 = size3.width * size3.height;
        if ((float)(size4.width * size4.height) / (float)j2 >= 1.5F) goto _L26; else goto _L27
_L27:
        size5 = null;
_L36:
        flag = n.getSharedPreferences("word.lens", 0).getBoolean("key.device.is.high.res.approved", false);
        PreferenceManager.getDefaultSharedPreferences(n);
        flag1 = flag & true;
        Log.d("QV", (new StringBuilder("[camsize] doHighRes: ")).append(flag1).toString());
        s = false;
        if (size3 == null || !flag1) goto _L29; else goto _L28
_L28:
        parameters.setPreviewSize(size3.width, size3.height);
        ai2 = com.questvisual.wordlens.q.a(f3, size3.width, size3.height, i2);
        p = size3;
        q = size5;
        s = true;
_L34:
        Log.d("QV", (new StringBuilder("[camsize] Using mNormalSize: ")).append(com.questvisual.wordlens.q.a(p)).toString());
        Log.d("QV", (new StringBuilder("[camsize] Using mZoomedSize: ")).append(com.questvisual.wordlens.q.a(q)).toString());
        Log.d("QV", (new StringBuilder("[camsize] Using previewSize: ")).append(com.questvisual.wordlens.q.a(parameters.getPreviewSize())).toString());
        if (ai2 == null) goto _L31; else goto _L30
_L30:
        WordLensSystem.f().a(ai2[0], ai2[1]);
          goto _L31
_L22:
        Log.d("QV", (new StringBuilder("[camsize] supported size: ")).append(com.questvisual.wordlens.q.a((android.hardware.Camera.Size)list.get(k1))).toString());
        k1++;
          goto _L32
_L24:
        f3 = f2 / f1;
          goto _L33
_L29:
        if (size1 == null)
        {
            break MISSING_BLOCK_LABEL_1180;
        }
        ai2 = com.questvisual.wordlens.q.a(f3, size1.width, size1.height, i2);
        p = size1;
        q = size2;
          goto _L34
_L20:
        size = p;
          goto _L35
_L26:
        size5 = size4;
          goto _L36
_L3:
        if (j1 < i1) goto _L38; else goto _L37
_L37:
        j1 = -1;
_L10:
        l1 = 0L;
          goto _L39
_L13:
        l1++;
          goto _L39
_L16:
        k1 = 0;
          goto _L32
        ai2 = null;
          goto _L34
    }

    private void p()
    {
        this;
        JVM INSTR monitorenter ;
        if (i != null)
        {
            i.a();
            i = null;
            j = false;
            p = null;
            q = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int a()
    {
        return m;
    }

    public void a(int i1)
    {
        Log.d("QV", (new StringBuilder("compensation: oldValue=")).append(m).append(", newValue=").append(i1).toString());
        m = i1;
        e(true);
    }

    public void a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        e e1 = i;
        if (e1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        android.hardware.Camera.Parameters parameters;
        List list;
        parameters = i.f();
        list = parameters.getSupportedFocusModes();
        if (a(s1, list)) goto _L4; else goto _L3
_L3:
        if (!a("auto", list)) goto _L6; else goto _L5
_L5:
        s1 = "auto";
_L4:
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        Log.e("QV", "Desired focus mode is null?!?!?!?!");
          goto _L1
        Exception exception;
        exception;
        throw exception;
_L6:
        String s4 = parameters.getFocusMode();
        s1 = s4;
          goto _L4
        String s2 = parameters.getFocusMode();
        if (!s1.equals(s2)) goto _L8; else goto _L7
_L7:
        if ("continuous-picture".equals(s2))
        {
            i.e();
        }
_L11:
        String s3 = parameters.getFocusMode();
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        if (!s3.equals(s1))
        {
            Log.w("QV", (new StringBuilder("Warning: wanted to set focus mode to ")).append(s1).append(", but it's really ").append(s3).toString());
        }
        if (!"continuous-picture".equals(s3)) goto _L10; else goto _L9
_L9:
        i.e();
          goto _L1
        Exception exception1;
        exception1;
        Log.e("QV", (new StringBuilder("Error setting focus mode \"")).append(s1).append("\"").toString(), exception1);
          goto _L1
_L8:
        parameters.setFocusMode(s1);
        i.a(parameters);
          goto _L11
_L10:
        if (!"auto".equals(s3)) goto _L1; else goto _L12
_L12:
        i.a(k);
          goto _L1
    }

    public void a(boolean flag)
    {
        if (i == null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        android.hardware.Camera.Parameters parameters = i.f();
        String s1;
        if (flag)
        {
            s1 = "torch";
        } else
        {
            s1 = "off";
        }
        try
        {
            parameters.setFlashMode(s1);
            i.a(parameters);
            o = null;
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            Log.w("QV", "Unable to setTorch. Ignoring error, hoping user will retry.");
        }
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Unable to setTorch=")).append(flag).append(" on device: ").append(Build.DEVICE).append(" for fingerprint: ").append(Build.FINGERPRINT).toString(), "");
        return;
        o = Boolean.valueOf(flag);
        return;
    }

    public void b()
    {
        if (i != null && !b && j && k != null)
        {
            k.a();
        }
    }

    public void b(boolean flag)
    {
        t = Boolean.valueOf(flag);
    }

    public void c()
    {
        this;
        JVM INSTR monitorenter ;
        if (m() && i != null)
        {
            i.e();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void c(boolean flag)
    {
        SystemClock.uptimeMillis();
        f();
        r = flag;
        if (i == null)
        {
            Log.e("QV", "Illegal use of CameraController.setZoomed! Should only be called when camera is not null!");
        } else
        {
            android.hardware.Camera.Parameters parameters = i.f();
            android.hardware.Camera.Size size;
            if (r)
            {
                size = q;
            } else
            {
                size = p;
            }
            Log.d("QV", (new StringBuilder("[camsize] Setting zoom. New size: ")).append(com.questvisual.wordlens.q.a(size)).toString());
            parameters.setPreviewSize(size.width, size.height);
            i.a(parameters);
            t = null;
        }
        e();
    }

    public android.hardware.Camera.Parameters d()
    {
        this;
        JVM INSTR monitorenter ;
        e e1 = i;
        android.hardware.Camera.Parameters parameters = null;
        if (e1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return parameters;
_L2:
        android.hardware.Camera.Parameters parameters1 = i.f();
        parameters = parameters1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        RuntimeException runtimeexception;
        runtimeexception;
        parameters = null;
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void d(boolean flag)
    {
        if (k != null)
        {
            k.c(flag);
        }
    }

    public boolean e()
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        SystemClock.uptimeMillis();
        if (f) goto _L2; else goto _L1
_L1:
        l = true;
        Log.w("QV", "Cannot yet start. Preview surface not created. Requested preview start upon surface creationg.");
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        b = false;
        if (j)
        {
            f();
            p();
        }
        o();
        if (i != null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        Log.e("QV", "Unable to open camera.");
        flag = false;
        continue; /* Loop/switch isn't completed */
        long l1 = 0L;
_L3:
        long l2;
        l2 = 1L + l1;
        if (l1 >= 2L)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        i.b();
        d.a(e);
        d.a(i, this);
        j = true;
        MessageManager.a(new com.questvisual.wordlens.messaging.a(g.t));
        k = new com.questvisual.wordlens.a.a(this);
        k.start();
        continue; /* Loop/switch isn't completed */
        RuntimeException runtimeexception;
        runtimeexception;
        if (l2 >= 2L)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        Log.w("QV", "Unable to startPreview. Beginning auto-retry!", runtimeexception);
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Unable to startPreview. Auto-retry startPreview on device: ")).append(Build.DEVICE).append(" for fingerprint: ").append(Build.FINGERPRINT).append(" MSG: ").append(runtimeexception.getLocalizedMessage()).toString(), "");
        f();
        Log.w("QV", "Unable to startPreview. Auto-retry stopped preview.");
        p();
        Log.w("QV", "Unable to startPreview. Auto-retry closed camera.");
        o();
        Log.w("QV", "Unable to startPreview. Auto-retry opened camera.");
        l1 = l2;
          goto _L3
        Log.w("QV", "Unable to startPreview. User will have to retry.", runtimeexception);
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Auto-restart failed for startPreview on device: ")).append(Build.DEVICE).append(" for fingerprint: ").append(Build.FINGERPRINT).toString(), "");
        k = null;
        l1 = l2;
          goto _L3
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void f()
    {
        this;
        JVM INSTR monitorenter ;
        SystemClock.uptimeMillis();
        if (d != null)
        {
            d.a(i);
        }
        d.a(null);
        if (k != null)
        {
            k.b(false);
            k.interrupt();
            k = null;
        }
        if (i != null && j)
        {
            j = false;
            i.c();
        }
        l = false;
        MessageManager.a(new com.questvisual.wordlens.messaging.a(g.u));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void g()
    {
        this;
        JVM INSTR monitorenter ;
        f();
        p();
        b = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String h()
    {
        if (i == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        android.hardware.Camera.Parameters parameters = i.f();
        if (parameters == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        String s1 = parameters.getFocusMode();
        return s1;
        RuntimeException runtimeexception;
        runtimeexception;
        return null;
    }

    public boolean i()
    {
        if (i != null)
        {
            return "torch".equals(i.f().getFlashMode());
        } else
        {
            return false;
        }
    }

    public boolean j()
    {
        List list;
label0:
        {
            if (i != null)
            {
                list = i.f().getSupportedFlashModes();
                if (list != null)
                {
                    break label0;
                }
            }
            return false;
        }
        return list.contains("torch");
    }

    public boolean k()
    {
        return q != null && p != null;
    }

    public boolean l()
    {
        return r;
    }

    public boolean m()
    {
        return j;
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
    {
        g = j1;
        h = k1;
        f = true;
        if (l)
        {
            e();
            l = false;
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        Log.d("WordLens", "CameraController.surfaceCreated");
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        f();
        p();
        f = false;
    }
}
