// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.LinkedList;

// Referenced classes of package com.questvisual.wordlens.billing:
//            IAPService, l

abstract class c
{

    protected long a;
    final IAPService b;
    private final int c;

    public c(IAPService iapservice, int i)
    {
        b = iapservice;
        super();
        c = i;
    }

    public int a()
    {
        return c;
    }

    protected Bundle a(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putString("BILLING_REQUEST", s);
        bundle.putInt("API_VERSION", 1);
        bundle.putString("PACKAGE_NAME", b.getPackageName());
        return bundle;
    }

    protected void a(RemoteException remoteexception)
    {
        Log.w("QV", "IAPService: remote billing service crashed");
        IAPService.a(null);
    }

    protected void a(l l1)
    {
    }

    protected void a(String s, Bundle bundle)
    {
        l.a(bundle.getInt("RESPONSE_CODE"));
    }

    public boolean b()
    {
        if (c())
        {
            return true;
        }
        if (IAPService.a(b))
        {
            IAPService.d().add(this);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean c()
    {
        if (IAPService.e() == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        a = d();
        if (a >= 0L)
        {
            IAPService.f().put(Long.valueOf(a), this);
        }
        return true;
        RemoteException remoteexception;
        remoteexception;
        a(remoteexception);
        return false;
    }

    protected abstract long d();
}
