// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.os.Bundle;
import android.os.RemoteException;
import com.a.a.a.a;

// Referenced classes of package com.questvisual.wordlens.billing:
//            c, m, IAPService

class f extends c
{

    long c;
    final String d[];
    final IAPService e;

    public f(IAPService iapservice, int i, String as[])
    {
        e = iapservice;
        super(iapservice, i);
        d = as;
    }

    protected void a(RemoteException remoteexception)
    {
        super.a(remoteexception);
        com.questvisual.wordlens.billing.m.a(c);
    }

    protected long d()
    {
        c = com.questvisual.wordlens.billing.m.a();
        Bundle bundle = a("GET_PURCHASE_INFORMATION");
        bundle.putLong("NONCE", c);
        bundle.putStringArray("NOTIFY_IDS", d);
        Bundle bundle1 = IAPService.e().a(bundle);
        a("getPurchaseInformation", bundle1);
        return bundle1.getLong("REQUEST_ID", -1L);
    }
}
