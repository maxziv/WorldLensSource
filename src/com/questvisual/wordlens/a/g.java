// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.os.SystemClock;
import com.questvisual.wordlens.WordLensSystem;
import com.questvisual.wordlens.at;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.questvisual.wordlens.a:
//            i, e, h, b

public class g
    implements android.hardware.Camera.PreviewCallback
{

    private i a;
    private Context b;
    private int c;
    private int d;
    private int e;
    private byte f[][];
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private h l;
    private boolean m;

    public g(Context context)
    {
        c = 0;
        d = 0;
        e = 0;
        g = -1L;
        h = 0L;
        i = 0L;
        j = 0L;
        k = 0L;
        l = null;
        m = false;
        a = null;
        b = context;
        if (WordLensSystem.f().mDefaultSharedPrefs.getBoolean(context.getString(at.KEY_DEV_SHOW_FPS_STATS), false))
        {
            g = -1L;
            return;
        }
        int i1 = WordLensSystem.f().a("app.maximum.fps");
        if (i1 == 0)
        {
            g = -1L;
            return;
        } else
        {
            g = 1000 / i1;
            return;
        }
    }

    public static int a(List list)
    {
        Iterator iterator = list.iterator();
        byte byte0 = -1;
        do
        {
            Integer integer;
            do
            {
                if (!iterator.hasNext())
                {
                    return byte0;
                }
                integer = (Integer)iterator.next();
                if (integer.intValue() == 17)
                {
                    return 17;
                }
            } while (integer.intValue() != 16);
            byte0 = 16;
        } while (true);
    }

    private void b()
    {
        f = null;
    }

    protected void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (a == null) goto _L2; else goto _L1
_L1:
        if (c != 17) goto _L4; else goto _L3
_L3:
        int i1 = 128 + (1 * d * e + 4 * (d / 2) * (e / 2));
_L8:
        if (i1 <= 0) goto _L6; else goto _L5
_L5:
        f = new byte[2][];
        int j1 = 0;
          goto _L7
_L6:
        a.a(c, d, e);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L9:
        f[j1] = new byte[i1];
        j1++;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
_L4:
        i1 = 0;
          goto _L8
_L7:
        if (j1 < 2) goto _L9; else goto _L6
    }

    protected void a(e e1)
    {
        if (e1 != null)
        {
            e1.d();
        }
        b();
    }

    protected void a(e e1, b b1)
    {
        this;
        JVM INSTR monitorenter ;
        android.hardware.Camera.Parameters parameters = e1.f();
        c = parameters.getPreviewFormat();
        android.hardware.Camera.Size size = parameters.getPreviewSize();
        d = size.width;
        e = size.height;
        a();
        e1.a(this);
        if (f == null) goto _L2; else goto _L1
_L1:
        byte abyte0[][];
        int i1;
        abyte0 = f;
        i1 = abyte0.length;
        int j1 = 0;
_L5:
        if (j1 < i1) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        e1.a(abyte0[j1]);
        j1++;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public void a(h h1)
    {
        l = h1;
    }

    public void a(i i1)
    {
        this;
        JVM INSTR monitorenter ;
        a = i1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onPreviewFrame(byte abyte0[], Camera camera)
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = SystemClock.uptimeMillis() - h;
        if (l1 <= 5000L) goto _L2; else goto _L1
_L1:
        float f1 = 1000F * ((float)i / (float)l1);
        float f2 = 1000F * ((float)j / (float)l1);
        h = SystemClock.uptimeMillis();
        i = 0L;
        j = 0L;
        if (l != null)
        {
            l.a(f1, f2);
        }
_L5:
        if (abyte0 != null) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        i = 1L + i;
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L4:
        if (a == null || abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_195;
        }
        long l2 = SystemClock.uptimeMillis();
        long l3 = l2 - k;
        if (g == -1L || l3 >= g)
        {
            a.a(abyte0);
            j = 1L + j;
            k = l2;
        }
_L7:
        if (camera == null) goto _L3; else goto _L6
_L6:
        camera.addCallbackBuffer(abyte0);
          goto _L3
        k = 0L;
          goto _L7
    }
}
