// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.os.Bundle;
import android.util.Log;
import com.a.a.a.a;

// Referenced classes of package com.questvisual.wordlens.billing:
//            c, l, a, IAPService

class d extends c
{

    final IAPService c;

    public d(IAPService iapservice)
    {
        c = iapservice;
        super(iapservice, -1);
    }

    protected void a(l l1)
    {
        Log.i("QV", (new StringBuilder("IAPService: CheckSupported responseCodeReceived: ")).append(l1).toString());
        com.questvisual.wordlens.billing.a.a(com.questvisual.wordlens.billing.l.a.equals(l1));
    }

    protected long d()
    {
        Bundle bundle = a("CHECK_BILLING_SUPPORTED");
        Bundle bundle1 = IAPService.e().a(bundle);
        a("checkBillingSupported", bundle1);
        boolean flag;
        if (bundle1.getInt("RESPONSE_CODE") == com.questvisual.wordlens.billing.l.a.ordinal())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.questvisual.wordlens.billing.a.a(flag);
        return -1L;
    }
}
