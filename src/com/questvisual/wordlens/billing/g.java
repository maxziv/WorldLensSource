// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.a.a.a.a;

// Referenced classes of package com.questvisual.wordlens.billing:
//            c, l, a, IAPService

public class g extends c
{

    private static int f[];
    public final String c;
    public final String d;
    final IAPService e;

    public g(IAPService iapservice, String s, String s1)
    {
        e = iapservice;
        super(iapservice, -1);
        c = s;
        d = s1;
    }

    static int[] e()
    {
        int ai[] = f;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[l.values().length];
        try
        {
            ai1[l.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[l.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[l.g.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[l.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[com.questvisual.wordlens.billing.l.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[l.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[l.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        f = ai1;
        return ai1;
    }

    public volatile int a()
    {
        return super.a();
    }

    protected void a(l l1)
    {
        com.questvisual.wordlens.billing.a.a(e, this, l1);
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
        Bundle bundle = a("REQUEST_PURCHASE");
        bundle.putString("ITEM_ID", d);
        Bundle bundle1 = IAPService.e().a(bundle);
        a("requestPurchase", bundle1);
        int i = bundle1.getInt("RESPONSE_CODE");
        Log.d("QV", (new StringBuilder("IAPService: RequestPurchase response code: ")).append(com.questvisual.wordlens.billing.l.a(i)).toString());
        l l1 = com.questvisual.wordlens.billing.l.a(i);
        switch (e()[l1.ordinal()])
        {
        default:
            com.questvisual.wordlens.e.a.a("IAP_UNKNOWN_RESP_CODE", (new StringBuilder("Unexpected synchronous response requesting purchase: ")).append(i).toString(), "");
            com.questvisual.wordlens.billing.a.a(e, this, l.g);
            return -1L;

        case 1: // '\001'
            PendingIntent pendingintent = (PendingIntent)bundle1.getParcelable("PURCHASE_INTENT");
            if (pendingintent == null)
            {
                Log.e("QV", "IAPService: Error with requestUpgradePurchase");
                return -1L;
            } else
            {
                com.questvisual.wordlens.billing.a.a(pendingintent, new Intent());
                return bundle1.getLong("REQUEST_ID", -1L);
            }

        case 7: // '\007'
            com.questvisual.wordlens.billing.a.a(e, this, l.c);
            return -1L;

        case 6: // '\006'
            com.questvisual.wordlens.billing.a.a(e, this, l1);
            return -1L;
        }
    }
}
