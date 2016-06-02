// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.c;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.view.SurfaceView;
import android.widget.ImageView;
import com.questvisual.wordlens.a.b;
import com.questvisual.wordlens.at;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.questvisual.wordlens.c:
//            e

public class d extends AsyncTask
{

    private static d f = null;
    private b a;
    private ImageView b;
    private ProgressDialog c;
    private e d;
    private AtomicBoolean e;

    private d(b b1, ImageView imageview, e e1, AtomicBoolean atomicboolean)
    {
        a = b1;
        b = imageview;
        d = e1;
        e = atomicboolean;
    }

    public static d a(b b1, ImageView imageview, e e1, AtomicBoolean atomicboolean)
    {
        com/questvisual/wordlens/c/d;
        JVM INSTR monitorenter ;
        if (f != null) goto _L2; else goto _L1
_L1:
        d d1;
        f = new d(b1, imageview, e1, atomicboolean);
        d1 = f;
_L4:
        com/questvisual/wordlens/c/d;
        JVM INSTR monitorexit ;
        return d1;
_L2:
        d1 = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected transient Boolean a(Void avoid[])
    {
        String s;
        s = Thread.currentThread().getName();
        Thread.currentThread().setName(getClass().getSimpleName());
        b b1 = a;
        boolean flag;
        if (a.l())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        try
        {
            b1.c(flag);
        }
        catch (Exception exception)
        {
            Log.e("QV", (new StringBuilder("Unable to change preview size: ")).append(exception.getLocalizedMessage()).toString(), exception);
        }
        Thread.currentThread().setName(s);
        return Boolean.valueOf(a.l());
    }

    protected void a(Boolean boolean1)
    {
        if (c != null)
        {
            c.dismiss();
        }
        b.setSelected(boolean1.booleanValue());
        if (d != null)
        {
            d.a(a);
        }
        f = null;
        e.set(false);
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onCancelled()
    {
        super.onCancelled();
        Log.i("QV", "ToggleCameraZoomTask.onCancelled()!");
        f = null;
        e.set(false);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        Context context = a.c.getContext();
        int i;
        if (a.l())
        {
            i = at.zooming_camera_out;
        } else
        {
            i = at.zooming_camera_in;
        }
        c = ProgressDialog.show(context, null, context.getString(i));
    }

}
