// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.a.a.a.a;
import com.a.a.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.questvisual.wordlens.billing:
//            m, n, a, c, 
//            l, e, f, d, 
//            g, h

public class IAPService extends Service
    implements ServiceConnection
{

    private static a a;
    private static LinkedList b = new LinkedList();
    private static HashMap c = new HashMap();

    public IAPService()
    {
    }

    private void a(int i, String s, String s1)
    {
        ArrayList arraylist = com.questvisual.wordlens.billing.m.a(s, s1);
        if (arraylist != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ArrayList arraylist1 = new ArrayList();
        Iterator iterator = arraylist.iterator();
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    break label0;
                }
                if (!arraylist1.isEmpty())
                {
                    a(i, (String[])arraylist1.toArray(new String[arraylist1.size()]));
                    return;
                }
            }
            if (true)
            {
                continue;
            }
            n n1 = (n)iterator.next();
            if (n1.b != null)
            {
                arraylist1.add(n1.b);
            }
            com.questvisual.wordlens.billing.a.a(this, n1.a, n1.c, n1.d, n1.e, n1.f);
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void a(long l1, l l2)
    {
        c c1 = (c)c.get(Long.valueOf(l1));
        if (c1 != null)
        {
            c1.a(l2);
        }
        c.remove(Long.valueOf(l1));
    }

    private void a(Intent intent, int i)
    {
        if (intent == null)
        {
            Log.i("QV", "IAPService.handleCommand() received null intent");
        } else
        {
            String s = intent.getAction();
            if ("com.questvisual.wordlens.CONFIRM_NOTIFICATION".equals(s))
            {
                a(i, intent.getStringArrayExtra("notification_id"));
                return;
            }
            if ("com.questvisual.wordlens.GET_PURCHASE_INFORMATION".equals(s))
            {
                b(i, new String[] {
                    intent.getStringExtra("notification_id")
                });
                return;
            }
            if ("com.android.vending.billing.PURCHASE_STATE_CHANGED".equals(s))
            {
                a(i, intent.getStringExtra("inapp_signed_data"), intent.getStringExtra("inapp_signature"));
                return;
            }
            if ("com.android.vending.billing.RESPONSE_CODE".equals(s))
            {
                a(intent.getLongExtra("request_id", -1L), com.questvisual.wordlens.billing.l.a(intent.getIntExtra("response_code", l.g.ordinal())));
                return;
            }
        }
    }

    static void a(a a1)
    {
        a = a1;
    }

    private boolean a(int i, String as[])
    {
        return (new e(this, i, as)).b();
    }

    static boolean a(IAPService iapservice)
    {
        return iapservice.g();
    }

    private boolean b(int i, String as[])
    {
        return (new f(this, i, as)).b();
    }

    static LinkedList d()
    {
        return b;
    }

    static a e()
    {
        return a;
    }

    static HashMap f()
    {
        return c;
    }

    private boolean g()
    {
        if (bindService(new Intent("com.android.vending.billing.MarketBillingService.BIND"), this, 1))
        {
            return true;
        }
        try
        {
            Log.e("QV", "IAPService: Could not bind to service.");
        }
        catch (SecurityException securityexception)
        {
            Log.e("QV", (new StringBuilder("IAPService: Security exception: ")).append(securityexception).toString());
        }
        return false;
    }

    private void h()
    {
        int i = -1;
        do
        {
            c c1 = (c)b.peek();
            if (c1 == null)
            {
                if (i >= 0)
                {
                    stopSelf(i);
                }
                return;
            }
            if (!c1.c())
            {
                break;
            }
            b.remove();
            if (i < c1.a())
            {
                i = c1.a();
            }
        } while (true);
        g();
    }

    public void a(Context context)
    {
        attachBaseContext(context);
    }

    public boolean a()
    {
        return (new d(this)).b();
    }

    public boolean a(String s, String s1)
    {
        return (new g(this, s, s1)).b();
    }

    public boolean b()
    {
        return (new h(this)).b();
    }

    public void c()
    {
        try
        {
            unbindService(this);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return;
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        a = com.a.a.a.b.a(ibinder);
        h();
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        Log.w("QV", "IAPService: Billing service disconnected");
        a = null;
    }

    public void onStart(Intent intent, int i)
    {
        a(intent, i);
    }

}
