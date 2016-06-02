// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.a;

import android.hardware.Camera;
import android.os.SystemClock;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.questvisual.wordlens.a:
//            b

public class a extends Thread
    implements android.hardware.Camera.AutoFocusCallback
{

    private boolean a;
    private b b;
    private boolean c;
    private boolean d;
    private String e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;

    public a(b b1)
    {
        a = true;
        f = false;
        g = 0;
        h = 5000;
        i = 5000;
        j = 0L;
        k = false;
        l = true;
        m = false;
        b = b1;
        android.hardware.Camera.Parameters parameters = b.d();
        if (parameters != null)
        {
            List list = parameters.getSupportedFocusModes();
            if (list != null)
            {
                Iterator iterator = list.iterator();
                String s = "camera focus modes = ( ";
                boolean flag;
                boolean flag1;
                do
                {
                    if (!iterator.hasNext())
                    {
                        Log.d("QV", (new StringBuilder(String.valueOf(s))).append(")").toString());
                        String s1;
                        if (android.os.Build.VERSION.SDK_INT >= 14)
                        {
                            c = list.contains("continuous-picture");
                        } else
                        {
                            c = false;
                        }
                        d = list.contains("auto");
                        flag = list.contains("infinity");
                        flag1 = list.contains("fixed");
                        if (c)
                        {
                            e = "continuous-picture";
                            b(true);
                            return;
                        }
                        break;
                    }
                    s1 = (String)iterator.next();
                    s = (new StringBuilder(String.valueOf(s))).append(s1).append(" ").toString();
                } while (true);
                if (d)
                {
                    e = "auto";
                    b(true);
                    return;
                }
                if (flag)
                {
                    e = "infinity";
                    b(false);
                    Log.v("QV", "AF handler not needed for infinity.");
                    return;
                }
                if (flag1)
                {
                    e = "fixed";
                    b(false);
                    Log.v("QV", "AF handler not needed for fixed.");
                    return;
                } else
                {
                    Log.w("QV", "Word Lens unable to determine preferred focus mode. AF Handler thread will not run.");
                    b(false);
                    return;
                }
            } else
            {
                com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", "Encountered device without focus modes?", "");
                e = "";
                b(false);
                return;
            }
        } else
        {
            com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", "AutoFocusHandler unable to initialize camera capabilites.", "");
            e = "";
            b(false);
            return;
        }
    }

    private void b()
    {
        if (!b.m() || !d)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        a(true);
        if (b.h() != "auto")
        {
            b.a("auto");
        }
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        Log.w("QV", (new StringBuilder("Autofocus Failed? ")).append(runtimeexception.getClass().getSimpleName()).append(": ").append(runtimeexception.getMessage()).toString());
        return;
    }

    public void a()
    {
        l = true;
        if (!f)
        {
            g = 1 + g;
            if (g > 5)
            {
                Log.e("QV", "User tapped screen many times. Giving up on continuous AF...");
                f = true;
            }
        }
        a(false);
    }

    public void a(boolean flag)
    {
        k = flag;
        if (!k)
        {
            interrupt();
        }
    }

    public void b(boolean flag)
    {
        a = flag;
    }

    public void c(boolean flag)
    {
        if (!flag)
        {
            a(false);
        }
    }

    public void onAutoFocus(boolean flag, Camera camera)
    {
        long l1;
        if (flag)
        {
            l1 = SystemClock.uptimeMillis();
        } else
        {
            l1 = 0L;
        }
        j = l1;
        if (flag && a && camera != null)
        {
            android.hardware.Camera.Parameters parameters = camera.getParameters();
            if (parameters != null)
            {
                String s = parameters.getFocusMode();
                if (!e.equals(s) && !f && (e == "continuous-video" || e == "continuous-picture"))
                {
                    b.a(e);
                }
            }
        }
        a(false);
    }

    public void run()
    {
        super.run();
        setName("AutoFocusHandler");
        Log.d("QV", (new StringBuilder("FocusHandler starting. Setting init focus mode to: ")).append(e).toString());
        b.a(e);
_L7:
        if (a) goto _L2; else goto _L1
_L1:
        return;
_L2:
        this;
        JVM INSTR monitorenter ;
        if (!k) goto _L4; else goto _L3
_L3:
        wait();
_L11:
        this;
        JVM INSTR monitorexit ;
        if (!a) goto _L1; else goto _L5
_L5:
        if (k) goto _L7; else goto _L6
_L6:
        long l1;
        String s;
        l1 = SystemClock.uptimeMillis();
        s = b.h();
        if (s == null) goto _L7; else goto _L8
_L8:
        if (!l) goto _L10; else goto _L9
_L9:
        l = false;
        b();
_L12:
        yield();
          goto _L7
        RuntimeException runtimeexception;
        runtimeexception;
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Unable to perform autofocus: ")).append(runtimeexception.getLocalizedMessage()).toString(), "");
          goto _L7
_L4:
        Exception exception;
        try
        {
            wait(500L);
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
          goto _L11
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L10:
label0:
        {
            if (!m)
            {
                break label0;
            }
            Log.i("QV", "Performing requested cancel AF");
            b.c();
            m = false;
        }
          goto _L12
        if (!"auto".equals(s)) goto _L14; else goto _L13
_L13:
        long l2 = l1 - j;
        if (l2 <= (long)i || f || !c || e != "continuous-picture") goto _L16; else goto _L15
_L15:
        b.a("continuous-picture");
          goto _L12
_L16:
        if (l2 <= (long)h) goto _L12; else goto _L17
_L17:
        b();
          goto _L12
_L14:
        if ("continuous-video".equals(s) || "continuous-picture".equals(s)) goto _L12; else goto _L18
_L18:
        Log.w("QV", (new StringBuilder("Unhandled focus mode: ")).append(s).toString());
          goto _L12
    }
}
