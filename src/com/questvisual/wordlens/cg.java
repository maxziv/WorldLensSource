// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import com.questvisual.wordlens.a.b;
import com.questvisual.wordlens.e.a;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.questvisual.wordlens:
//            ag, WordLensSystem, NativeWordLensUI, WordLensActivity, 
//            cb, NativeGLRenderer, an, al, 
//            at

class cg extends AsyncTask
{

    private static int e[];
    final WordLensActivity a;
    private ag b;
    private ag c;
    private ProgressDialog d;

    public cg(WordLensActivity wordlensactivity, ag ag1, ag ag2)
    {
        a = wordlensactivity;
        super();
        b = ag1;
        c = ag2;
    }

    static int[] b()
    {
        int ai[] = e;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[ag.values().length];
        try
        {
            ai1[com.questvisual.wordlens.ag.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ag.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[com.questvisual.wordlens.ag.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        e = ai1;
        return ai1;
    }

    protected transient Boolean a(Void avoid[])
    {
        String s;
        boolean flag;
        s = Thread.currentThread().getName();
        Thread.currentThread().setName(getClass().getSimpleName());
        SystemClock.uptimeMillis();
        WordLensSystem.f().h();
        synchronized (WordLensSystem.g())
        {
            com.questvisual.wordlens.NativeWordLensUI.a().a(c);
            if (WordLensActivity.g(a) != null)
            {
                WordLensActivity.g(a).b.a(c);
            }
        }
        com.questvisual.wordlens.e.a.c(a);
        flag = true;
        b()[c.ordinal()];
        JVM INSTR tableswitch 1 3: default 124
    //                   1 124
    //                   2 151
    //                   3 226;
           goto _L1 _L1 _L2 _L3
_L1:
        WordLensSystem.f().i();
        Thread.currentThread().setName(s);
        return Boolean.valueOf(flag);
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (WordLensActivity.f(a) != null)
        {
            WordLensActivity.d(a).a(WordLensActivity.f(a).booleanValue());
        }
        if (WordLensActivity.s(a) != null)
        {
            WordLensActivity.d(a).b(WordLensActivity.s(a).booleanValue());
        }
        flag = WordLensActivity.d(a).e();
        continue; /* Loop/switch isn't completed */
_L3:
        if (com.questvisual.wordlens.ag.b == b)
        {
            WordLensActivity.d(a).a(false);
            WordLensActivity.d(a).g();
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void a()
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        d.dismiss();
        d = null;
        this;
        JVM INSTR monitorexit ;
_L2:
        WordLensActivity.c(a).set(false);
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(Boolean boolean1)
    {
        if (isCancelled())
        {
            Log.d("QV", "setUIModeTask: enter onPostExecute. Is cancelled!");
            return;
        }
        WordLensActivity.g(a).b.b(false);
        WordLensActivity.q(a).a(c, WordLensActivity.d(a));
        a();
        if (!boolean1.booleanValue()) goto _L2; else goto _L1
_L1:
        b()[c.ordinal()];
        JVM INSTR tableswitch 1 3: default 100
    //                   1 100
    //                   2 132
    //                   3 183;
           goto _L3 _L3 _L4 _L5
_L3:
        WordLensActivity.x(a);
        WordLensActivity.y(a);
        this;
        JVM INSTR monitorenter ;
        com.questvisual.wordlens.WordLensActivity.a(a, null);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        if (WordLensActivity.t(a) != null)
        {
            WordLensActivity.t(a).setImageResource(an.vid_pause_selector);
        }
        com.questvisual.wordlens.WordLensActivity.a(a, c);
        WordLensActivity.f(a, WordLensActivity.u(a));
        continue; /* Loop/switch isn't completed */
_L5:
        if (WordLensActivity.t(a) != null)
        {
            WordLensActivity.t(a).setImageResource(an.vid_play_selector);
        }
        com.questvisual.wordlens.WordLensActivity.a(a, c);
        WordLensActivity.f(a, true);
        if (a.getResources().getBoolean(al.do_snap_flash) && b != com.questvisual.wordlens.ag.a)
        {
            WordLensActivity.v(a);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        WordLensActivity.w(a);
        if (true) goto _L3; else goto _L6
_L6:
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        WordLensActivity.g(a).b.b(true);
        switch (b()[c.ordinal()])
        {
        default:
            d = null;
            return;

        case 2: // '\002'
            d = ProgressDialog.show(a, null, a.getString(at.opening_camera), true);
            return;

        case 3: // '\003'
            break;
        }
        if (com.questvisual.wordlens.ag.b.equals(b))
        {
            d = ProgressDialog.show(a, null, a.getString(at.closing_camera), true);
            return;
        } else
        {
            d = null;
            return;
        }
    }
}
