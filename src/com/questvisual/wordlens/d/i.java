// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.questvisual.wordlens.at;
import com.questvisual.wordlens.e.a;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.questvisual.wordlens.d:
//            h

public class i extends AsyncTask
{

    final h a;
    private ProgressDialog b;

    public i(h h1)
    {
        a = h1;
        super();
    }

    protected transient Boolean a(Void avoid[])
    {
        return Boolean.valueOf(h.c(a));
    }

    public void a()
    {
        if (b != null)
        {
            b.dismiss();
            b = null;
        }
        h.b(a).set(false);
    }

    protected void a(Boolean boolean1)
    {
        super.onPostExecute(boolean1);
        a();
        if (isCancelled())
        {
            return;
        }
        if (boolean1.booleanValue())
        {
            h.d(a);
        } else
        {
            Log.e("QV", "Unable to save snapshot image! Will not share =(");
            com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", "Unable to save snapshot image!", "");
        }
        com.questvisual.wordlens.d.h.a(a, null);
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
        super.onPreExecute();
        b = ProgressDialog.show(com.questvisual.wordlens.d.h.a(a), null, com.questvisual.wordlens.d.h.a(a).getString(at.generating_snapshot), true);
    }
}
