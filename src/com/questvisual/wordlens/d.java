// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.i;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import com.questvisual.util.ui.a;
import com.questvisual.wordlens.messaging.MessageManager;
import com.questvisual.wordlens.messaging.b;
import com.questvisual.wordlens.messaging.g;
import java.util.Map;

// Referenced classes of package com.questvisual.wordlens:
//            f, NativeLangMan, LangPackInfo, g, 
//            NativeDictionary, h, aq, ao, 
//            e, k, at, j

public class d extends a
    implements b
{

    private static int af[];
    private boolean Y;
    private Button Z;
    private EditText aa;
    private k ab;
    private NativeDictionary ac;
    private boolean ad;
    private h ae;

    public d()
    {
        Y = false;
        ad = true;
    }

    static int[] E()
    {
        int ai[] = af;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[com.questvisual.wordlens.messaging.g.values().length];
        try
        {
            ai1[g.t.ordinal()] = 20;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[g.u.ordinal()] = 21;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[g.v.ordinal()] = 22;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[g.w.ordinal()] = 23;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[g.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[g.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[g.s.ordinal()] = 19;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[g.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai1[g.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai1[g.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            ai1[g.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            ai1[g.n.ordinal()] = 14;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            ai1[g.m.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            ai1[g.l.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            ai1[g.p.ordinal()] = 16;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            ai1[g.j.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            ai1[g.k.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            ai1[g.i.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            ai1[g.o.ordinal()] = 15;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        try
        {
            ai1[g.r.ordinal()] = 18;
        }
        catch (NoSuchFieldError nosuchfielderror19) { }
        try
        {
            ai1[g.q.ordinal()] = 17;
        }
        catch (NoSuchFieldError nosuchfielderror20) { }
        try
        {
            ai1[g.h.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror21) { }
        try
        {
            ai1[g.g.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror22) { }
        af = ai1;
        return ai1;
    }

    private boolean F()
    {
        int l = 0xf & k().getConfiguration().screenLayout;
        return l == 3 || l == 4;
    }

    private void G()
    {
        g ag[] = new g[2];
        ag[0] = g.m;
        ag[1] = g.l;
        MessageManager.a(this, ag);
    }

    private void H()
    {
        MessageManager.a(this);
    }

    private void I()
    {
        e(false);
    }

    private void J()
    {
        e(true);
        aa.post(new f(this));
    }

    private void K()
    {
        LangPackInfo langpackinfo = com.questvisual.wordlens.NativeLangMan.a();
        Z.setText(langpackinfo.getDescription(j()));
    }

    static void a(d d1, CharSequence charsequence)
    {
        d1.b(charsequence);
    }

    static void a(d d1, String s)
    {
        d1.a(s);
    }

    static void a(d d1, boolean flag)
    {
        d1.ad = flag;
    }

    private void a(CharSequence charsequence)
    {
        aa.post(new com.questvisual.wordlens.g(this, charsequence));
    }

    private void a(String s)
    {
        j().getSharedPreferences("word.lens", 0).edit().putString("key.dict.last.searched.word", s).apply();
    }

    static boolean a(d d1)
    {
        return d1.ad;
    }

    static NativeDictionary b(d d1)
    {
        return d1.ac;
    }

    static void b(d d1, CharSequence charsequence)
    {
        d1.a(charsequence);
    }

    private void b(CharSequence charsequence)
    {
        if (ad)
        {
            a(charsequence.toString());
            ac.a(charsequence);
            ae.notifyDataSetChanged();
        }
    }

    static h c(d d1)
    {
        return d1.ae;
    }

    public static d d(boolean flag)
    {
        d d1 = new d();
        Bundle bundle = new Bundle();
        bundle.putBoolean("key.do.init.lookup", flag);
        d1.g(bundle);
        return d1;
    }

    static boolean d(d d1)
    {
        return d1.F();
    }

    static void e(d d1)
    {
        d1.K();
    }

    static EditText f(d d1)
    {
        return d1.aa;
    }

    static k g(d d1)
    {
        return d1.ab;
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(aq.dict_screen, viewgroup, false);
        Z = (Button)view.findViewById(ao.switch_language_button);
        Z.setOnClickListener(new e(this));
        aa = (EditText)view.findViewById(ao.dict_search_field);
        aa.setInputType(0x80090);
        ab = new k(this, null);
        aa.addTextChangedListener(ab);
        ListView listview = (ListView)view.findViewById(0x102000a);
        listview.setEmptyView(view.findViewById(0x1020004));
        ae = new h(this, j());
        listview.setAdapter(ae);
        listview.setOnItemClickListener(ae);
        ab.a(true);
        Y = false;
        if (i() != null)
        {
            Y = i().getBoolean("key.do.init.lookup", false);
        }
        if (b() != null)
        {
            b().setTitle(at.dict_label);
        }
        return view;
    }

    public void a(int l, int i1, Intent intent)
    {
        if (264 == l && i1 == 0)
        {
            e(true);
            return;
        } else
        {
            super.a(l, i1, intent);
            return;
        }
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        ac = NativeDictionary.c();
    }

    public void a(View view, Bundle bundle)
    {
        if (!D())
        {
            b().getWindow().setSoftInputMode(16);
        }
        super.a(view, bundle);
    }

    public void a(com.questvisual.wordlens.messaging.a a1)
    {
        switch (E()[a1.a().ordinal()])
        {
        default:
            return;

        case 12: // '\f'
            I();
            return;

        case 13: // '\r'
            J();
            break;
        }
    }

    public void e()
    {
        super.e();
        com.questvisual.wordlens.e.a.a(j());
    }

    public void e(boolean flag)
    {
        ad = flag;
    }

    public void f()
    {
        com.questvisual.wordlens.e.a.b(j());
        super.f();
    }

    public void p()
    {
        super.p();
        if (!Y) goto _L2; else goto _L1
_L1:
        (new j(this, null)).execute(new Void[0]);
_L4:
        G();
        K();
        return;
_L2:
        SharedPreferences sharedpreferences = j().getSharedPreferences("word.lens", 0);
        String s = sharedpreferences.getString("key.dict.last.searched.word", null);
        if (s != null)
        {
            try
            {
                a(s);
                b(s);
            }
            catch (ClassCastException classcastexception)
            {
                Log.w("QV", "Illegal preference found for key key.dict.last.searched.word");
                Log.w("QV", (new StringBuilder("Value was: ")).append(sharedpreferences.getAll().get("key.dict.last.searched.word")).toString());
            }
        }
        aa.requestFocus();
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void q()
    {
        H();
        super.q();
    }

    public void r()
    {
        NativeDictionary.d();
        super.r();
    }
}
