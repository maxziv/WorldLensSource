// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.os.AsyncTask;

// Referenced classes of package com.questvisual.wordlens:
//            ae, d, NativeDictionary, h

class j extends AsyncTask
    implements ae
{

    final d a;
    private String b;

    private j(d d1)
    {
        a = d1;
        super();
        b = null;
    }

    j(d d1, j j1)
    {
        this(d1);
    }

    protected transient Void a(Void avoid[])
    {
        b = null;
        String s = Thread.currentThread().getName();
        Thread.currentThread().setName(getClass().getSimpleName());
        if (d.a(a))
        {
            d.b(a).a(this);
            d.b(a).a();
        }
        Thread.currentThread().setName(s);
        return null;
    }

    public void a(String s)
    {
        b = s;
    }

    protected void a(Void void1)
    {
        super.onPostExecute(void1);
        if (b != null)
        {
            d.b(a, b);
            d.a(a, b);
        }
        d.c(a).notifyDataSetChanged();
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }
}
