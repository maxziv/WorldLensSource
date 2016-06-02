// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import com.questvisual.wordlens.billing.g;
import com.questvisual.wordlens.billing.i;
import com.questvisual.wordlens.billing.l;
import com.questvisual.wordlens.e.a;
import com.questvisual.wordlens.e.a.h;

// Referenced classes of package com.questvisual.wordlens:
//            y, at

class ad extends i
{

    final y a;

    public ad(y y1, Handler handler)
    {
        a = y1;
        super(y1.j(), handler);
    }

    public void a()
    {
        if (com.questvisual.wordlens.y.a(a).getString("key.first.start.of.wordlens.plus", null) == null)
        {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setClassName("com.questvisual.wordlens", "com.questvisual.wordlens.WLSplashActivity");
            intent.addCategory("android.intent.category.LAUNCHER");
            a.a(intent);
            a.a();
            return;
        } else
        {
            y.b(a);
            return;
        }
    }

    public void a(g g1, l l1)
    {
        if (l1 == l.a)
        {
            com.questvisual.wordlens.y.a(a, at.purchase_submitted, 0);
            return;
        }
        if (l1 == l.b)
        {
            com.questvisual.wordlens.y.a(a, at.purchase_cancelled, 0);
            return;
        }
        if (l1 == l.c)
        {
            h.a(at.billing_service_unavailable, a.j());
            return;
        }
        if (l1 == l.d)
        {
            h.a(at.billing_not_supported_message, a.j());
            return;
        }
        if (l1 == l.e)
        {
            com.questvisual.wordlens.e.a.a("IAP_ITEM_UNAVAILABLE", (new StringBuilder("Unknown product id: ")).append(g1.d).toString(), "");
            h.a(at.billing_QV_error, a.j());
            return;
        }
        if (l1 == l.f)
        {
            com.questvisual.wordlens.e.a.a("IAP_DEVELOPER_ERROR", (new StringBuilder("Developer Error for product id: ")).append(g1.d).toString(), "");
            h.a(at.billing_QV_error, a.j());
            return;
        } else
        {
            com.questvisual.wordlens.e.a.a("IAP_UNKNOWN_RESP_CODE", (new StringBuilder("Unknown response code: ")).append(l1).append(" for product id: ").append(g1.d).toString(), "");
            com.questvisual.wordlens.y.a(a, at.purchase_failed, 0);
            return;
        }
    }

    public void a(com.questvisual.wordlens.billing.h h1, l l1)
    {
        if (l1 == l.a)
        {
            android.content.SharedPreferences.Editor editor = com.questvisual.wordlens.y.a(a).edit();
            editor.putBoolean("db_initialized", true);
            editor.commit();
            return;
        }
        if (l1 == l.c)
        {
            h.a(at.billing_service_unavailable, a.j());
            return;
        } else
        {
            com.questvisual.wordlens.e.a.a("IAP_ONRESTORE_ERROR", (new StringBuilder("Unhandled response code for onRestoreTransactionsResponse: ")).append(l1).toString(), "");
            Log.w("QV", (new StringBuilder("WLIAP: RestoreTransactions error: ")).append(l1).toString());
            return;
        }
    }

    public void a(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = com.questvisual.wordlens.y.a(a).edit();
        editor.putBoolean("device.in.app.billing.supported", flag);
        editor.commit();
        if (flag)
        {
            com.questvisual.wordlens.y.a(a, false);
        } else
        {
            com.questvisual.wordlens.y.a(a, 2);
        }
        y.b(a);
    }
}
