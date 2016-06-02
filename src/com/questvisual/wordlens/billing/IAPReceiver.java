// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

// Referenced classes of package com.questvisual.wordlens.billing:
//            IAPService, l

public class IAPReceiver extends BroadcastReceiver
{

    public IAPReceiver()
    {
    }

    private void a(Context context, long l1, int i)
    {
        Intent intent = new Intent("com.android.vending.billing.RESPONSE_CODE");
        intent.setClass(context, com/questvisual/wordlens/billing/IAPService);
        intent.putExtra("request_id", l1);
        intent.putExtra("response_code", i);
        context.startService(intent);
    }

    private void a(Context context, String s)
    {
        Intent intent = new Intent("com.questvisual.wordlens.GET_PURCHASE_INFORMATION");
        intent.setClass(context, com/questvisual/wordlens/billing/IAPService);
        intent.putExtra("notification_id", s);
        context.startService(intent);
    }

    private void a(Context context, String s, String s1)
    {
        Intent intent = new Intent("com.android.vending.billing.PURCHASE_STATE_CHANGED");
        intent.setClass(context, com/questvisual/wordlens/billing/IAPService);
        intent.putExtra("inapp_signed_data", s);
        intent.putExtra("inapp_signature", s1);
        context.startService(intent);
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if ("com.android.vending.billing.PURCHASE_STATE_CHANGED".equals(s))
        {
            a(context, intent.getStringExtra("inapp_signed_data"), intent.getStringExtra("inapp_signature"));
            return;
        }
        if ("com.android.vending.billing.IN_APP_NOTIFY".equals(s))
        {
            a(context, intent.getStringExtra("notification_id"));
            return;
        }
        if ("com.android.vending.billing.RESPONSE_CODE".equals(s))
        {
            a(context, intent.getLongExtra("request_id", -1L), intent.getIntExtra("response_code", l.g.ordinal()));
            return;
        } else
        {
            Log.w("QV", (new StringBuilder("IAPReceiver: unexpected action: ")).append(s).toString());
            return;
        }
    }
}
