// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.i;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.Toast;
import com.questvisual.util.ui.a;
import com.questvisual.wordlens.billing.IAPService;
import com.questvisual.wordlens.messaging.MessageManager;
import com.questvisual.wordlens.messaging.b;
import com.questvisual.wordlens.messaging.g;
import java.util.ArrayList;

// Referenced classes of package com.questvisual.wordlens:
//            c, ab, NativeLangMan, w, 
//            at, aq, aa, al, 
//            ad, z

public class y extends a
    implements c, b
{

    private ab Y;
    private IAPService Z;
    private Handler aa;
    private ad ab;
    private com.questvisual.wordlens.b.a ac;
    private boolean ad;
    private boolean ae;
    private ListView af;
    private aa ag;
    private boolean ah;
    private SharedPreferences ai;

    public y()
    {
        ac = null;
        ad = true;
        ae = false;
        ag = null;
        ah = false;
        ai = null;
    }

    private boolean E()
    {
        return ai.getBoolean("device.in.app.billing.supported", false);
    }

    private void F()
    {
        if (Y == null)
        {
            return;
        }
        if (ad)
        {
            G();
        } else
        {
            H();
            I();
        }
        Y.notifyDataSetChanged();
    }

    private void G()
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        com.questvisual.wordlens.NativeLangMan.a(j(), arraylist, arraylist1, true);
        Y.a(arraylist);
        if (!E())
        {
            Y.a(null);
            return;
        } else
        {
            Y.a(arraylist1);
            return;
        }
    }

    private void H()
    {
        ArrayList arraylist = new ArrayList();
        com.questvisual.wordlens.NativeLangMan.a(j(), arraylist, null, true);
        Y.a(arraylist);
    }

    private void I()
    {
        Y.a(null);
    }

    static SharedPreferences a(y y1)
    {
        return y1.ai;
    }

    private void a(int j, int k)
    {
        Toast.makeText(j(), j, k).show();
    }

    static void a(y y1, int j)
    {
        y1.b(j);
    }

    static void a(y y1, int j, int k)
    {
        y1.a(j, k);
    }

    static void a(y y1, boolean flag)
    {
        y1.d(flag);
    }

    private void b(int j)
    {
        w w1 = null;
        j;
        JVM INSTR tableswitch 1 2: default 24
    //                   1 39
    //                   2 52;
           goto _L1 _L2 _L3
_L1:
        if (w1 != null)
        {
            w1.a(m(), "iap_error_dialog");
        }
        return;
_L2:
        w1 = com.questvisual.wordlens.w.a(at.cannot_connect_title, at.cannot_connect_message);
        continue; /* Loop/switch isn't completed */
_L3:
        w1 = com.questvisual.wordlens.w.a(at.billing_not_supported_title, at.billing_not_supported_message);
        if (true) goto _L1; else goto _L4
_L4:
    }

    static void b(y y1)
    {
        y1.F();
    }

    static void b(y y1, boolean flag)
    {
        y1.ah = flag;
    }

    static ListView c(y y1)
    {
        return y1.af;
    }

    private void d(boolean flag)
    {
        if (!ad)
        {
            Log.e("QV", "This should not have been called. Cannot restoreDatabase when not using IAP.");
            com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", "restoreDatabase called when not in IAP build. Error!", "");
        } else
        {
            boolean flag1 = ai.getBoolean("db_initialized", false);
            if (flag || !flag1)
            {
                Z.b();
                Toast.makeText(j(), at.store_restoring_purchases, 0).show();
                return;
            }
        }
    }

    static boolean d(y y1)
    {
        return y1.ae;
    }

    static boolean e(y y1)
    {
        return y1.D();
    }

    static boolean f(y y1)
    {
        return y1.ad;
    }

    static IAPService g(y y1)
    {
        return y1.Z;
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(aq.list_content_simple, viewgroup, false);
        af = (ListView)view.findViewById(0x102000a);
        Y = new ab(this);
        af.setAdapter(Y);
        af.setOnItemClickListener(Y);
        af.setChoiceMode(1);
        F();
        if (b() != null)
        {
            b().setTitle(at.languages);
        }
        return view;
    }

    public void a(Activity activity)
    {
        super.a(activity);
        if (com/questvisual/wordlens/aa.isAssignableFrom(activity.getClass()))
        {
            ag = (aa)activity;
        }
        if (ai == null)
        {
            ai = j().getSharedPreferences("word.lens", 0);
        }
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        ad = k().getBoolean(al.use_iap_langpacks);
        ae = k().getBoolean(al.redirect_iap_to_paid_app);
        c(true);
        if (ad)
        {
            Log.d("QV", "Starting IAP service and checking...");
            aa = new Handler();
            ab = new ad(this, aa);
            Z = new IAPService();
            Z.a(j().getApplicationContext());
            com.questvisual.wordlens.billing.a.a(ab);
            if (!Z.a())
            {
                b(1);
            }
        }
    }

    public void a(com.questvisual.wordlens.messaging.a a1)
    {
        if (g.w == a1.a())
        {
            j().runOnUiThread(new z(this));
        }
    }

    public void a_()
    {
        if (D())
        {
            j().setResult(-1);
        } else
        {
            ah = true;
        }
        a();
    }

    public void d()
    {
        super.d();
    }

    public void e()
    {
        super.e();
        com.questvisual.wordlens.e.a.a(j());
        if (ad)
        {
            com.questvisual.wordlens.billing.a.a(ab);
        }
    }

    public void f()
    {
        if (ad)
        {
            com.questvisual.wordlens.billing.a.b(ab);
        }
        com.questvisual.wordlens.e.a.b(j());
        super.f();
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        if (ag != null && !ah)
        {
            ag.a();
        }
        super.onDismiss(dialoginterface);
    }

    public void p()
    {
        super.p();
        g ag1[] = new g[1];
        ag1[0] = g.w;
        MessageManager.a(this, ag1);
        com.questvisual.wordlens.e.a.a("lang_screen", true);
    }

    public void q()
    {
        com.questvisual.wordlens.e.a.b("lang_screen");
        super.q();
    }

    public void r()
    {
        if (ad)
        {
            Z.c();
        }
        if (ac != null)
        {
            ac.a();
        }
        super.r();
    }
}
