// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.os.Bundle;
import com.a.a.a.a;

// Referenced classes of package com.questvisual.wordlens.billing:
//            c, IAPService

class e extends c
{

    final String c[];
    final IAPService d;

    public e(IAPService iapservice, int i, String as[])
    {
        d = iapservice;
        super(iapservice, i);
        c = as;
    }

    protected long d()
    {
        Bundle bundle = a("CONFIRM_NOTIFICATIONS");
        bundle.putStringArray("NOTIFY_IDS", c);
        Bundle bundle1 = IAPService.e().a(bundle);
        a("confirmNotifications", bundle1);
        return bundle1.getLong("REQUEST_ID", -1L);
    }
}
