// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.os.Bundle;
import android.os.RemoteException;
import com.a.a.a.a;

// Referenced classes of package com.questvisual.wordlens.billing:
//            c, m, a, IAPService, 
//            l

public class h extends c
{

    long c;
    final IAPService d;

    public h(IAPService iapservice)
    {
        d = iapservice;
        super(iapservice, -1);
    }

    public volatile int a()
    {
        return super.a();
    }

    protected void a(RemoteException remoteexception)
    {
        super.a(remoteexception);
        com.questvisual.wordlens.billing.m.a(c);
    }

    protected void a(l l)
    {
        com.questvisual.wordlens.billing.a.a(d, this, l);
    }

    public volatile boolean b()
    {
        return super.b();
    }

    public volatile boolean c()
    {
        return super.c();
    }

    protected long d()
    {
        c = com.questvisual.wordlens.billing.m.a();
        Bundle bundle = a("RESTORE_TRANSACTIONS");
        bundle.putLong("NONCE", c);
        Bundle bundle1 = IAPService.e().a(bundle);
        a("restoreTransactions", bundle1);
        return bundle1.getLong("REQUEST_ID", -1L);
    }
}
