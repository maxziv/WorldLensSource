// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.ActionBar;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.i;
import android.support.v4.app.o;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.questvisual.util.ui.c;
import com.questvisual.util.ui.d;
import com.questvisual.wordlens.d.a;
import com.questvisual.wordlens.d.e;
import com.questvisual.wordlens.d.f;
import com.questvisual.wordlens.d.h;
import com.questvisual.wordlens.d.j;
import com.questvisual.wordlens.messaging.MessageManager;
import com.questvisual.wordlens.messaging.b;
import com.questvisual.wordlens.messaging.g;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.questvisual.wordlens:
//            aa, az, bk, bt, 
//            bu, ca, bv, bw, 
//            bx, by, aq, ao, 
//            NativeLangMan, LangPackInfo, an, am, 
//            bg, bh, bi, cf, 
//            bj, bl, ci, NativeWordLensUI, 
//            ag, bm, at, bq, 
//            br, ce, bs, bc, 
//            a, cg, NativeDictionary, bp, 
//            y, LanguagesActivity, d, DictActivity, 
//            ba, bb, be, s, 
//            InfoActivity, l, FeedbackActivity, aj, 
//            ch, cc, al, q, 
//            cb, NativeGLRenderer, bf, bo, 
//            WordLensSystem, r, n, bz, 
//            ar, bn

public class WordLensActivity extends i
    implements aa, j, b
{

    private static int aF = 0x80000000;
    private static int aQ[];
    private static int aR[];
    private static int aS[];
    private a A;
    private int B;
    private View C;
    private ImageView D;
    private TextView E;
    private f F;
    private f G;
    private ImageView H;
    private ImageView I;
    private ImageView J;
    private ImageView K;
    private ImageView L;
    private ImageView M;
    private ImageView N;
    private d O;
    private d P;
    private d Q;
    private com.questvisual.wordlens.e.a.a R;
    private com.questvisual.wordlens.e.a.a S;
    private com.questvisual.wordlens.e.a.a T;
    private View U;
    private View V;
    private View W;
    private int X[] = {
        -1, -1
    };
    private int Y[] = {
        -1, -1
    };
    private int Z[] = {
        -1, -1
    };
    private Boolean aA;
    private boolean aB;
    private boolean aC;
    private boolean aD;
    private LangPackInfo aE;
    private boolean aG;
    private boolean aH;
    private android.view.View.OnClickListener aI;
    private android.view.View.OnClickListener aJ;
    private Runnable aK;
    private cg aL;
    private android.view.View.OnClickListener aM;
    private android.view.View.OnClickListener aN;
    private android.view.View.OnClickListener aO;
    private com.questvisual.wordlens.c.e aP;
    private View aa;
    private ce ab;
    private RelativeLayout ac;
    private FrameLayout ad;
    private RelativeLayout ae;
    private boolean af;
    private ci ag;
    private boolean ah;
    private boolean ai;
    private AtomicBoolean aj;
    private int ak;
    private boolean al;
    private NumberFormat am;
    private android.view.View.OnClickListener an;
    private View ao;
    private View ap;
    private View aq;
    private View ar;
    private ImageView as;
    private RelativeLayout at;
    private e au;
    private RelativeLayout av;
    private ag aw;
    private ag ax;
    private ag ay;
    private Boolean az;
    long n;
    int o;
    private n p;
    private cb q;
    private com.questvisual.wordlens.a.b r;
    private SurfaceView s;
    private LayoutInflater t;
    private cf u;
    private f v;
    private View w;
    private AlertDialog x;
    private android.content.DialogInterface.OnDismissListener y;
    private ch z;

    public WordLensActivity()
    {
        x = null;
        y = new az(this);
        C = null;
        D = null;
        E = null;
        F = null;
        G = null;
        af = true;
        ag = null;
        ah = false;
        ai = false;
        aj = new AtomicBoolean(false);
        ak = 0x80000000;
        al = true;
        am = new DecimalFormat("0.####");
        an = new bk(this);
        at = null;
        au = null;
        av = null;
        aw = null;
        ax = null;
        ay = null;
        az = null;
        aA = null;
        aB = false;
        aC = true;
        aD = false;
        aE = null;
        aG = false;
        aH = false;
        aI = new bt(this);
        aJ = new bu(this);
        aK = new ca(this, null);
        aL = null;
        aM = new bv(this);
        aN = new bw(this);
        aO = new bx(this);
        aP = new by(this);
        n = -1L;
        o = 0;
    }

    private void A()
    {
        if (ah)
        {
            ActionBar actionbar = getActionBar();
            if (actionbar != null)
            {
                w = t.inflate(aq.language_header_ab, null);
                w.setOnClickListener(an);
                actionbar.setCustomView(w);
                actionbar.setDisplayShowTitleEnabled(false);
                actionbar.setDisplayShowCustomEnabled(true);
                return;
            } else
            {
                Log.e("QV", "Tried to initialize Action Bar, but no action bar found?");
                return;
            }
        } else
        {
            v = new f(t.inflate(aq.language_header, null), ao.langButton);
            LangPackInfo langpackinfo = com.questvisual.wordlens.NativeLangMan.a();
            v.a(langpackinfo.getDescription(this));
            w = new ImageView(this);
            ((ImageView)w).setImageBitmap(v.a());
            w.setOnClickListener(an);
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, 49);
            ad.addView(w, layoutparams);
            return;
        }
    }

    static boolean A(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.H();
    }

    private void B()
    {
        if (av != null)
        {
            ad.removeView(av);
        }
        View view = t.inflate(aq.camera_rot_adjust_panel, null);
        int i1;
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            au.a(view);
            av = new RelativeLayout(this);
            av.setBackgroundResource(an.float_bg);
            int j1 = getResources().getDimensionPixelSize(am.camera_panel_check_margin);
            av.setPadding(j1, j1, j1, j1);
            ao = new ImageView(this);
            ao.setId(ao.button_ok);
            aq = new ImageView(this);
            aq.setId(ao.button_rotate_left);
            ar = new ImageView(this);
            ar.setId(ao.button_rotate_right);
            as = new ImageView(this);
            as.setId(ao.camcheck_text);
        } else
        {
            av = (RelativeLayout)view;
            ao = av.findViewById(ao.button_ok);
            aq = av.findViewById(ao.button_rotate_left);
            ar = av.findViewById(ao.button_rotate_right);
        }
        ao.setOnClickListener(new bg(this));
        aq.setOnClickListener(new bh(this));
        ar.setOnClickListener(new bi(this));
        if (ai)
        {
            i1 = 0;
        } else
        {
            i1 = com.questvisual.wordlens.cf.a(u);
        }
        a(i1);
    }

    static void B(WordLensActivity wordlensactivity)
    {
        wordlensactivity.J();
    }

    private void C()
    {
        if (at != null)
        {
            ad.removeView(at);
        }
        Log.d("QV", "Creating camcheckpanel");
        View view = t.inflate(aq.camera_rot_confirm_panel, null);
        int i1;
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            au = new e(view);
            at = new RelativeLayout(this);
            at.setBackgroundResource(an.float_bg);
            int j1 = getResources().getDimensionPixelSize(am.camera_panel_check_margin);
            at.setPadding(j1, j1, j1, j1);
            ao = new ImageView(this);
            ao.setId(ao.button_ok);
            ap = new ImageView(this);
            ap.setId(ao.button_bad);
            as = new ImageView(this);
            as.setId(ao.camcheck_text);
        } else
        {
            at = (RelativeLayout)view;
            ao = at.findViewById(ao.button_ok);
            ap = at.findViewById(ao.button_bad);
        }
        ao.setOnClickListener(new bj(this));
        ap.setOnClickListener(new bl(this));
        if (ai)
        {
            i1 = 0;
        } else
        {
            i1 = com.questvisual.wordlens.cf.a(u);
        }
        b(i1);
    }

    static void C(WordLensActivity wordlensactivity)
    {
        wordlensactivity.I();
    }

    static FrameLayout D(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.ad;
    }

    private void D()
    {
        if (ag != com.questvisual.wordlens.ci.b)
        {
            Log.wtf("QV", "BUG! Should not go to adjuster except from checker");
            throw new IllegalStateException("BUG! Should not go to adjuster except from checker");
        } else
        {
            ad.removeView(at);
            at = null;
            ao = null;
            ap = null;
            B();
            ag = com.questvisual.wordlens.ci.c;
            return;
        }
    }

    private void E()
    {
        d(false);
        A.setVisibility(8);
        C();
        ag ag1 = com.questvisual.wordlens.NativeWordLensUI.a().b();
        if (com.questvisual.wordlens.ag.b != ag1)
        {
            a(com.questvisual.wordlens.ag.b, true);
        }
        ag = com.questvisual.wordlens.ci.b;
    }

    static void E(WordLensActivity wordlensactivity)
    {
        wordlensactivity.K();
    }

    static RelativeLayout F(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.ac;
    }

    private void F()
    {
        if (av != null)
        {
            ad.removeView(av);
            av = null;
        }
        if (!ah)
        {
            w.setVisibility(0);
        }
        if (getSharedPreferences("word.lens", 0).getInt("key.camera.orientation.compensation.v2", -1) == -1)
        {
            a(com.questvisual.wordlens.ci.b);
            return;
        }
        A.setVisibility(0);
        if (!ai)
        {
            A.a(com.questvisual.wordlens.cf.a(u));
        }
        d(true);
        U();
        ag = com.questvisual.wordlens.ci.d;
        p();
    }

    private void G()
    {
        d(true);
        A.setVisibility(8);
        if (!ah)
        {
            w.setVisibility(8);
        }
        View view = findViewById(ao.welcome_overlay);
        ac.removeView(view);
        View view1 = t.inflate(aq.tutorial_screen_buttons, null);
        view1.findViewById(ao.start_button).setOnClickListener(new bm(this));
        O = new d(null);
        P = new d(null);
        Q = new d(null);
        if (!ah)
        {
            View view5 = view1.findViewById(ao.bubble_world_icon);
            O.a(H);
            view5.setOnClickListener(O);
            View view6 = view1.findViewById(ao.bubble_playpause);
            P.a(I);
            view6.setOnClickListener(P);
            View view7 = view1.findViewById(ao.bubble_dict);
            Q.a(K);
            view7.setOnClickListener(Q);
        }
        if (!com.questvisual.wordlens.NativeLangMan.a().isDemo())
        {
            View view4 = view1.findViewById(ao.demo_explanation);
            if (view4 != null)
            {
                view4.setVisibility(8);
            }
        }
        ac.addView(view1);
        View view2 = findViewById(ao.tutorial_overlay_gray);
        ad.removeView(view2);
        View view3 = t.inflate(aq.tutorial_overlay, null);
        ad.addView(view3);
        ad.bringChildToFront(ae);
        ag = com.questvisual.wordlens.ci.a;
    }

    static void G(WordLensActivity wordlensactivity)
    {
        wordlensactivity.R();
    }

    private boolean H()
    {
        return false | a(U, X) | a(V, Y) | a(W, Z);
    }

    private void I()
    {
        if (ag == com.questvisual.wordlens.ci.a)
        {
            com.questvisual.wordlens.e.a.d d1;
            com.questvisual.wordlens.e.a.e e1;
            int j1;
            View view;
            View view1;
            int k1;
            com.questvisual.wordlens.e.a.d d2;
            com.questvisual.wordlens.e.a.e e2;
            View view2;
            if (x())
            {
                int l1 = aq.tutorial_bubble_world;
                d1 = com.questvisual.wordlens.e.a.d.b;
                e1 = com.questvisual.wordlens.e.a.e.d;
                j1 = l1;
            } else
            {
                int i1 = aq.tutorial_bubble_world_top;
                d1 = com.questvisual.wordlens.e.a.d.c;
                e1 = com.questvisual.wordlens.e.a.e.e;
                j1 = i1;
            }
            R = new com.questvisual.wordlens.e.a.a(this, com.questvisual.wordlens.e.a.b.f, d1, e1, 1);
            view = t.inflate(j1, null);
            view.setOnClickListener(O);
            R.a(view);
            R.a(am.tutorial_world_xoffset, am.tutorial_world_yoffset);
            view1 = t.inflate(aq.tutorial_bubble_playpause, null);
            view1.setOnClickListener(P);
            S = new com.questvisual.wordlens.e.a.a(this, com.questvisual.wordlens.e.a.b.f, com.questvisual.wordlens.e.a.d.h, com.questvisual.wordlens.e.a.e.d, 1);
            S.a(view1);
            S.a(am.tutorial_playpause_xoffset, am.tutorial_playpause_yoffset);
            if (x())
            {
                k1 = aq.tutorial_bubble_dict;
                d2 = com.questvisual.wordlens.e.a.d.b;
                e2 = com.questvisual.wordlens.e.a.e.d;
            } else
            {
                k1 = aq.tutorial_bubble_dict_top;
                d2 = com.questvisual.wordlens.e.a.d.b;
                e2 = com.questvisual.wordlens.e.a.e.e;
            }
            view2 = t.inflate(k1, null);
            view2.setOnClickListener(Q);
            T = new com.questvisual.wordlens.e.a.a(this, com.questvisual.wordlens.e.a.b.f, d2, e2, 1);
            T.a(view2);
            T.a(am.tutorial_dict_xoffset, am.tutorial_dict_yoffset);
            if (U != null && U.getWidth() != 0 && V != null && V.getWidth() != 0 && W != null && W.getWidth() != 0)
            {
                a(R, U, X);
                a(S, V, Y);
                a(T, W, Z);
                return;
            }
        }
    }

    private void J()
    {
        a(R);
        R = null;
        a(S);
        S = null;
        a(T);
        T = null;
        Arrays.fill(X, -1);
        Arrays.fill(Y, -1);
        Arrays.fill(Z, -1);
    }

    private void K()
    {
        O.a(null);
        P.a(null);
        Q.a(null);
    }

    private void L()
    {
        SharedPreferences sharedpreferences = getSharedPreferences("word.lens", 0);
        String s1 = sharedpreferences.getString("key.lang.code.source", null);
        String s2 = sharedpreferences.getString("key.lang.code.dest", null);
        int i1 = sharedpreferences.getInt("key.lang.pack.demo.mode", 0);
        if (s1 != null && s2 != null)
        {
            LangPackInfo langpackinfo = new LangPackInfo(s1, s2);
            langpackinfo.demoMode = i1;
            com.questvisual.wordlens.NativeLangMan.a(langpackinfo);
            sharedpreferences.edit().remove("key.lang.code.source").remove("key.lang.code.dest").remove("key.lang.pack.demo.mode").commit();
        }
    }

    private void M()
    {
        String s1;
        if (aD)
        {
            s1 = getString(at.translation_hidden);
        } else
        {
            s1 = com.questvisual.wordlens.NativeLangMan.a().getDescription(this);
        }
        if (v == null && ah)
        {
            ((TextView)w).setText(s1);
            return;
        } else
        {
            v.a(s1);
            ((ImageView)w).setImageBitmap(v.b());
            return;
        }
    }

    private void N()
    {
        g ag1[] = new g[12];
        ag1[0] = g.e;
        ag1[1] = g.f;
        ag1[2] = g.n;
        ag1[3] = g.h;
        ag1[4] = g.m;
        ag1[5] = g.o;
        ag1[6] = g.p;
        ag1[7] = g.j;
        ag1[8] = g.q;
        ag1[9] = g.r;
        ag1[10] = g.t;
        ag1[11] = g.w;
        MessageManager.a(this, ag1);
    }

    private void O()
    {
        MessageManager.a(this);
    }

    private void P()
    {
        if (af)
        {
            runOnUiThread(new bq(this));
        }
    }

    private void Q()
    {
        r.b();
        runOnUiThread(new br(this));
        com.questvisual.wordlens.e.a.a("wl_focus");
    }

    private void R()
    {
        aa.removeCallbacks(aK);
        aK.run();
        int i1 = com.questvisual.wordlens.ce.a(ab);
        int j1 = com.questvisual.wordlens.ce.b(ab);
        if (i1 < 0 || j1 < 0)
        {
            return;
        } else
        {
            int k1 = aa.getWidth();
            int l1 = aa.getHeight();
            int i2 = r.g;
            int j2 = r.h;
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)aa.getLayoutParams();
            layoutparams.setMargins(com.questvisual.util.b.a(i1 - k1 / 2, 0, i2 - k1), com.questvisual.util.b.a(j1 - l1 / 2, 0, j2 - l1), 0, 0);
            layoutparams.getRules()[13] = 0;
            aa.setVisibility(0);
            aa.requestLayout();
            aa.postDelayed(aK, 500L);
            return;
        }
    }

    private void S()
    {
        (new android.app.AlertDialog.Builder(this)).setMessage(at.camera_error).setPositiveButton(0x104000a, null).show();
    }

    private void T()
    {
        if (ah)
        {
            invalidateOptionsMenu();
        }
    }

    private void U()
    {
        if (!getSharedPreferences("word.lens", 0).getBoolean("key.tap.to.focus.hint.shown", false))
        {
            V();
        }
    }

    private void V()
    {
        runOnUiThread(new bs(this));
        android.content.SharedPreferences.Editor editor = getSharedPreferences("word.lens", 0).edit();
        editor.putBoolean("key.tap.to.focus.hint.shown", true);
        editor.apply();
    }

    private void W()
    {
    }

    static AlertDialog a(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.x;
    }

    private void a(int i1)
    {
        ad.removeView(av);
        if (android.os.Build.VERSION.SDK_INT >= 14) goto _L2; else goto _L1
_L1:
        int j1;
        av.removeAllViews();
        au.b(i1);
        ((ImageView)ao).setImageBitmap(au.a(ao.button_ok));
        if (au.a(ao.button_rotate_left) == null)
        {
            View view = t.inflate(aq.camera_rot_adjust_panel_backup, null);
            Button button = (Button)view.findViewById(ao.button_rotate_left);
            Button button1 = (Button)view.findViewById(ao.button_rotate_right);
            button.setText("\u2190");
            button1.setText("\u2192");
            au.a(view);
        }
        ((ImageView)aq).setImageBitmap(au.a(ao.button_rotate_left));
        ((ImageView)ar).setImageBitmap(au.a(ao.button_rotate_right));
        as.setImageBitmap(au.a(ao.camcheck_text));
        j1 = getResources().getDimensionPixelSize(am.camera_panel_button_margin);
        i1;
        JVM INSTR lookupswitch 3: default 236
    //                   90: 485
    //                   180: 667
    //                   270: 843;
           goto _L3 _L4 _L5 _L6
_L3:
        android.widget.RelativeLayout.LayoutParams layoutparams13 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams13.addRule(10);
        layoutparams13.addRule(14);
        layoutparams13.bottomMargin = j1;
        av.addView(as, layoutparams13);
        android.widget.RelativeLayout.LayoutParams layoutparams14 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams14.addRule(3, as.getId());
        layoutparams14.addRule(9);
        av.addView(aq, layoutparams14);
        android.widget.RelativeLayout.LayoutParams layoutparams15 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams15.addRule(14);
        layoutparams15.addRule(3, as.getId());
        av.addView(ao, layoutparams15);
        android.widget.RelativeLayout.LayoutParams layoutparams16 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams16.addRule(3, as.getId());
        layoutparams16.addRule(11);
        av.addView(ar, layoutparams16);
_L11:
        i1;
        JVM INSTR lookupswitch 3: default 456
    //                   90: 1049
    //                   180: 1055
    //                   270: 1061;
           goto _L7 _L8 _L9 _L10
_L7:
        byte byte0 = 81;
_L12:
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, byte0);
        ad.addView(av, layoutparams);
        return;
_L4:
        android.widget.RelativeLayout.LayoutParams layoutparams9 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams9.addRule(15);
        layoutparams9.addRule(1, ao.getId());
        layoutparams9.leftMargin = j1;
        av.addView(as, layoutparams9);
        android.widget.RelativeLayout.LayoutParams layoutparams10 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams10.addRule(6, ao.camcheck_text);
        layoutparams10.addRule(9);
        av.addView(aq, layoutparams10);
        android.widget.RelativeLayout.LayoutParams layoutparams11 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams11.addRule(15);
        layoutparams11.addRule(9);
        av.addView(ao, layoutparams11);
        android.widget.RelativeLayout.LayoutParams layoutparams12 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams12.addRule(8, ao.camcheck_text);
        layoutparams12.addRule(9);
        av.addView(ar, layoutparams12);
          goto _L11
_L5:
        android.widget.RelativeLayout.LayoutParams layoutparams5 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams5.addRule(3, ao.getId());
        layoutparams5.addRule(14);
        layoutparams5.topMargin = j1;
        av.addView(as, layoutparams5);
        android.widget.RelativeLayout.LayoutParams layoutparams6 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams6.addRule(10);
        layoutparams6.addRule(11);
        av.addView(aq, layoutparams6);
        android.widget.RelativeLayout.LayoutParams layoutparams7 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams7.addRule(14);
        layoutparams7.addRule(10);
        av.addView(ao, layoutparams7);
        android.widget.RelativeLayout.LayoutParams layoutparams8 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams8.addRule(10);
        layoutparams8.addRule(9);
        av.addView(ar, layoutparams8);
          goto _L11
_L6:
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(15);
        layoutparams1.addRule(9);
        layoutparams1.rightMargin = j1;
        av.addView(as, layoutparams1);
        android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams2.addRule(8, ao.camcheck_text);
        layoutparams2.addRule(1, as.getId());
        av.addView(aq, layoutparams2);
        android.widget.RelativeLayout.LayoutParams layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams3.addRule(15);
        layoutparams3.addRule(1, as.getId());
        av.addView(ao, layoutparams3);
        android.widget.RelativeLayout.LayoutParams layoutparams4 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams4.addRule(6, ao.camcheck_text);
        layoutparams4.addRule(1, as.getId());
        av.addView(ar, layoutparams4);
          goto _L11
_L2:
        av.setRotation(i1);
          goto _L11
_L8:
        byte0 = 19;
          goto _L12
_L9:
        byte0 = 49;
          goto _L12
_L10:
        byte0 = 21;
          goto _L12
    }

    private void a(Menu menu)
    {
        MenuItem menuitem = menu.findItem(ao.menu_world);
        O.a(menuitem.getActionView());
        if (U != menuitem.getActionView())
        {
            Log.i("QV", "menu action item changed");
        }
        U = menuitem.getActionView();
        MenuItem menuitem1 = menu.findItem(ao.menu_playpause);
        Object obj;
        if (x())
        {
            obj = menuitem1.getActionView();
        } else
        {
            obj = I;
        }
        V = ((View) (obj));
        P.a(V);
        W = menu.findItem(ao.menu_dict).getActionView();
        Q.a(W);
        W.addOnLayoutChangeListener(new bc(this));
    }

    private void a(MenuItem menuitem)
    {
        if (!x())
        {
            menuitem.setEnabled(false);
            menuitem.setVisible(false);
            return;
        }
        menuitem.setVisible(true);
        ImageView imageview = (ImageView)menuitem.getActionView();
        ag ag1 = ax;
        if (ag1 == null)
        {
            ag1 = com.questvisual.wordlens.NativeWordLensUI.a().b();
        }
        switch (h()[ag1.ordinal()])
        {
        default:
            return;

        case 2: // '\002'
            imageview.setImageResource(an.vid_pause_selector);
            return;

        case 3: // '\003'
            imageview.setImageResource(an.vid_play_selector);
            break;
        }
    }

    private void a(LangPackInfo langpackinfo)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("lang_pack_abbreviation", langpackinfo.getAbbreviation());
        com.questvisual.wordlens.e.a.a("wl_lang_pick", hashmap);
        if (langpackinfo.isDemo())
        {
            (new com.questvisual.wordlens.a(this, langpackinfo, null)).a();
            return;
        } else
        {
            com.questvisual.wordlens.NativeLangMan.a(langpackinfo);
            return;
        }
    }

    static void a(WordLensActivity wordlensactivity, int i1)
    {
        wordlensactivity.c(i1);
    }

    static void a(WordLensActivity wordlensactivity, AlertDialog alertdialog)
    {
        wordlensactivity.x = alertdialog;
    }

    static void a(WordLensActivity wordlensactivity, RelativeLayout relativelayout)
    {
        wordlensactivity.at = relativelayout;
    }

    static void a(WordLensActivity wordlensactivity, LangPackInfo langpackinfo)
    {
        wordlensactivity.a(langpackinfo);
    }

    static void a(WordLensActivity wordlensactivity, ag ag1)
    {
        wordlensactivity.ax = ag1;
    }

    static void a(WordLensActivity wordlensactivity, ag ag1, boolean flag)
    {
        wordlensactivity.a(ag1, flag);
    }

    static void a(WordLensActivity wordlensactivity, cg cg1)
    {
        wordlensactivity.aL = cg1;
    }

    static void a(WordLensActivity wordlensactivity, ci ci1)
    {
        wordlensactivity.a(ci1);
    }

    static void a(WordLensActivity wordlensactivity, com.questvisual.wordlens.messaging.a a1)
    {
        wordlensactivity.b(a1);
    }

    static void a(WordLensActivity wordlensactivity, Boolean boolean1)
    {
        wordlensactivity.az = boolean1;
    }

    static void a(WordLensActivity wordlensactivity, boolean flag)
    {
        wordlensactivity.b(flag);
    }

    private void a(ag ag1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!aj.compareAndSet(false, true)) goto _L2; else goto _L1
_L1:
        ag ag2;
        ag2 = com.questvisual.wordlens.NativeWordLensUI.a().b();
        if (aL != null)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        if (ag1 != ag2) goto _L4; else goto _L3
_L3:
        aj.set(false);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        aw = ag2;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        aw = ag1;
        aL = new cg(this, ag2, ag1);
        aL.execute(new Void[0]);
          goto _L2
        Exception exception;
        exception;
        throw exception;
        aj.set(false);
          goto _L2
    }

    private void a(ci ci1)
    {
        switch (i()[ci1.ordinal()])
        {
        default:
            return;

        case 3: // '\003'
            D();
            return;

        case 2: // '\002'
            E();
            return;

        case 4: // '\004'
            F();
            return;

        case 1: // '\001'
            G();
            return;
        }
    }

    private void a(com.questvisual.wordlens.e.a.a a1)
    {
        if (a1 != null && a1.b())
        {
            a1.a();
        }
    }

    private void a(com.questvisual.wordlens.e.a.a a1, View view, int ai1[])
    {
        if (a1 != null && !a1.b() && view.getWindowToken() != null)
        {
            a1.b(view);
            view.getLocationOnScreen(ai1);
        }
    }

    private void a(com.questvisual.wordlens.messaging.d d1)
    {
        aH = d1.d();
        if (r != null)
        {
            r.d(aH);
        }
        P();
    }

    private void a(com.questvisual.wordlens.messaging.f f1)
    {
        aG = f1.c;
        P();
    }

    private boolean a(View view, int ai1[])
    {
label0:
        {
            if (view != null)
            {
                int ai2[] = new int[2];
                view.getLocationOnScreen(ai2);
                if (!Arrays.equals(ai1, ai2))
                {
                    break label0;
                }
            }
            return false;
        }
        return true;
    }

    static android.content.DialogInterface.OnDismissListener b(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.y;
    }

    private void b(int i1)
    {
        ad.removeView(at);
        if (android.os.Build.VERSION.SDK_INT >= 14) goto _L2; else goto _L1
_L1:
        int j1;
        at.removeAllViews();
        au.b(i1);
        ((ImageView)ao).setImageBitmap(au.a(ao.button_ok));
        ((ImageView)ap).setImageBitmap(au.a(ao.button_bad));
        as.setImageBitmap(au.a(ao.camcheck_text));
        j1 = getResources().getDimensionPixelSize(am.camera_panel_button_margin);
        i1;
        JVM INSTR lookupswitch 3: default 140
    //                   90: 349
    //                   180: 491
    //                   270: 627;
           goto _L3 _L4 _L5 _L6
_L3:
        android.widget.RelativeLayout.LayoutParams layoutparams10 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams10.addRule(10);
        layoutparams10.addRule(9);
        layoutparams10.addRule(11);
        layoutparams10.bottomMargin = j1;
        at.addView(as, layoutparams10);
        android.widget.RelativeLayout.LayoutParams layoutparams11 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams11.addRule(3, as.getId());
        layoutparams11.addRule(9);
        at.addView(ao, layoutparams11);
        android.widget.RelativeLayout.LayoutParams layoutparams12 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams12.addRule(3, as.getId());
        layoutparams12.addRule(11);
        at.addView(ap, layoutparams12);
_L11:
        i1;
        JVM INSTR lookupswitch 3: default 320
    //                   90: 787
    //                   180: 793
    //                   270: 799;
           goto _L7 _L8 _L9 _L10
_L7:
        byte byte0 = 81;
_L12:
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, byte0);
        ad.addView(at, layoutparams);
        return;
_L4:
        android.widget.RelativeLayout.LayoutParams layoutparams7 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams7.addRule(15);
        layoutparams7.addRule(1, ao.getId());
        layoutparams7.leftMargin = j1;
        at.addView(as, layoutparams7);
        android.widget.RelativeLayout.LayoutParams layoutparams8 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams8.addRule(6, ao.camcheck_text);
        layoutparams8.addRule(9);
        at.addView(ao, layoutparams8);
        android.widget.RelativeLayout.LayoutParams layoutparams9 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams9.addRule(8, ao.camcheck_text);
        layoutparams9.addRule(9);
        at.addView(ap, layoutparams9);
          goto _L11
_L5:
        android.widget.RelativeLayout.LayoutParams layoutparams4 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams4.addRule(3, ao.getId());
        layoutparams4.addRule(14);
        layoutparams4.topMargin = j1;
        at.addView(as, layoutparams4);
        android.widget.RelativeLayout.LayoutParams layoutparams5 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams5.addRule(10);
        layoutparams5.addRule(11);
        at.addView(ao, layoutparams5);
        android.widget.RelativeLayout.LayoutParams layoutparams6 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams6.addRule(10);
        layoutparams6.addRule(9);
        at.addView(ap, layoutparams6);
          goto _L11
_L6:
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(15);
        layoutparams1.addRule(9);
        layoutparams1.rightMargin = j1;
        at.addView(as, layoutparams1);
        android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams2.addRule(8, ao.camcheck_text);
        layoutparams2.addRule(1, as.getId());
        at.addView(ao, layoutparams2);
        android.widget.RelativeLayout.LayoutParams layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams3.addRule(6, ao.camcheck_text);
        layoutparams3.addRule(1, as.getId());
        at.addView(ap, layoutparams3);
          goto _L11
_L2:
        at.setRotation(i1);
          goto _L11
_L8:
        byte0 = 19;
          goto _L12
_L9:
        byte0 = 49;
          goto _L12
_L10:
        byte0 = 21;
          goto _L12
    }

    static void b(WordLensActivity wordlensactivity, int i1)
    {
        wordlensactivity.b(i1);
    }

    static void b(WordLensActivity wordlensactivity, Boolean boolean1)
    {
        wordlensactivity.aA = boolean1;
    }

    static void b(WordLensActivity wordlensactivity, boolean flag)
    {
        wordlensactivity.c(flag);
    }

    private void b(com.questvisual.wordlens.messaging.a a1)
    {
        j()[a1.a().ordinal()];
        JVM INSTR tableswitch 5 23: default 100
    //                   5 100
    //                   6 100
    //                   7 100
    //                   8 126
    //                   9 100
    //                   10 100
    //                   11 100
    //                   12 100
    //                   13 171
    //                   14 117
    //                   15 100
    //                   16 153
    //                   17 162
    //                   18 100
    //                   19 100
    //                   20 101
    //                   21 100
    //                   22 100
    //                   23 171;
           goto _L1 _L1 _L1 _L1 _L2 _L1 _L1 _L1 _L1 _L3 _L4 _L1 _L5 _L6 _L1 _L1 _L7 _L1 _L1 _L3
_L1:
        return;
_L7:
        A.a(r);
        P();
        return;
_L4:
        com.questvisual.wordlens.NativeDictionary.b();
        c(true);
        return;
_L2:
        if (com.questvisual.wordlens.NativeWordLensUI.a().b() == com.questvisual.wordlens.ag.b && ag == com.questvisual.wordlens.ci.d)
        {
            Q();
            return;
        }
          goto _L1
_L5:
        a((com.questvisual.wordlens.messaging.d)a1);
        return;
_L6:
        a((com.questvisual.wordlens.messaging.f)a1);
        return;
_L3:
        runOnUiThread(new bp(this));
        return;
    }

    private void b(boolean flag)
    {
        if (flag)
        {
            com.questvisual.wordlens.e.a.a("wl_lang_world_icon");
        } else
        {
            com.questvisual.wordlens.e.a.a("wl_lang_more");
        }
        if (y())
        {
            (new y()).a(e(), "lang_dialog");
            return;
        } else
        {
            startActivity(new Intent(this, com/questvisual/wordlens/LanguagesActivity));
            return;
        }
    }

    static AtomicBoolean c(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.aj;
    }

    private void c(int i1)
    {
        while (v == null || w.getVisibility() != 0) 
        {
            return;
        }
        i1;
        JVM INSTR lookupswitch 3: default 52
    //                   90: 96
    //                   180: 102
    //                   270: 108;
           goto _L1 _L2 _L3 _L4
_L1:
        byte byte0 = 49;
_L6:
        v.d(i1);
        M();
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, byte0);
        w.setLayoutParams(layoutparams);
        w.requestLayout();
        return;
_L2:
        byte0 = 21;
        continue; /* Loop/switch isn't completed */
_L3:
        byte0 = 81;
        continue; /* Loop/switch isn't completed */
_L4:
        byte0 = 19;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static void c(WordLensActivity wordlensactivity, int i1)
    {
        wordlensactivity.a(i1);
    }

    static void c(WordLensActivity wordlensactivity, boolean flag)
    {
        wordlensactivity.aD = flag;
    }

    private void c(boolean flag)
    {
        if (y())
        {
            com.questvisual.wordlens.d.d(flag).(e(), "dict_dialog");
            return;
        }
        Intent intent = new Intent(this, com/questvisual/wordlens/DictActivity);
        if (flag)
        {
            intent.putExtra("key.do.init.lookup", true);
        }
        startActivity(intent);
    }

    static com.questvisual.wordlens.a.b d(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.r;
    }

    static void d(WordLensActivity wordlensactivity, boolean flag)
    {
        wordlensactivity.aB = flag;
    }

    private void d(boolean flag)
    {
        I.setEnabled(flag);
        if (ah)
        {
            al = flag;
            invalidateOptionsMenu();
            return;
        } else
        {
            H.setEnabled(flag);
            J.setEnabled(flag);
            K.setEnabled(flag);
            return;
        }
    }

    static com.questvisual.wordlens.c.e e(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.aP;
    }

    static void e(WordLensActivity wordlensactivity, boolean flag)
    {
        wordlensactivity.aC = flag;
    }

    private void e(boolean flag)
    {
        A.setOrientationLocked(flag);
        if (ai)
        {
            int i1;
            if (flag)
            {
                i1 = com.questvisual.util.ui.c.b(this);
            } else
            {
                i1 = 10;
            }
            setRequestedOrientation(i1);
            return;
        }
        if (flag)
        {
            u.disable();
        } else
        {
            u.enable();
        }
        setRequestedOrientation(1);
    }

    static Boolean f(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.az;
    }

    static void f(WordLensActivity wordlensactivity, boolean flag)
    {
        wordlensactivity.e(flag);
    }

    static cb g(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.q;
    }

    static boolean h(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.aD;
    }

    static int[] h()
    {
        int ai1[] = aQ;
        if (ai1 != null)
        {
            return ai1;
        }
        int ai2[] = new int[com.questvisual.wordlens.ag.values().length];
        try
        {
            ai2[com.questvisual.wordlens.ag.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai2[com.questvisual.wordlens.ag.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai2[com.questvisual.wordlens.ag.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        aQ = ai2;
        return ai2;
    }

    static void i(WordLensActivity wordlensactivity)
    {
        wordlensactivity.M();
    }

    static int[] i()
    {
        int ai1[] = aR;
        if (ai1 != null)
        {
            return ai1;
        }
        int ai2[] = new int[ci.values().length];
        try
        {
            ai2[com.questvisual.wordlens.ci.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai2[com.questvisual.wordlens.ci.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai2[com.questvisual.wordlens.ci.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai2[com.questvisual.wordlens.ci.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        aR = ai2;
        return ai2;
    }

    static boolean j(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.ai;
    }

    static int[] j()
    {
        int ai1[] = aS;
        if (ai1 != null)
        {
            return ai1;
        }
        int ai2[] = new int[com.questvisual.wordlens.messaging.g.values().length];
        try
        {
            ai2[g.t.ordinal()] = 20;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai2[g.u.ordinal()] = 21;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai2[g.v.ordinal()] = 22;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai2[g.w.ordinal()] = 23;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai2[g.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai2[g.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai2[g.s.ordinal()] = 19;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai2[g.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai2[g.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai2[g.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            ai2[g.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            ai2[g.n.ordinal()] = 14;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            ai2[g.m.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            ai2[g.l.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            ai2[g.p.ordinal()] = 16;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            ai2[g.j.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            ai2[g.k.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            ai2[g.i.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            ai2[g.o.ordinal()] = 15;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        try
        {
            ai2[g.r.ordinal()] = 18;
        }
        catch (NoSuchFieldError nosuchfielderror19) { }
        try
        {
            ai2[g.q.ordinal()] = 17;
        }
        catch (NoSuchFieldError nosuchfielderror20) { }
        try
        {
            ai2[g.h.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror21) { }
        try
        {
            ai2[g.g.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror22) { }
        aS = ai2;
        return ai2;
    }

    static cf k(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.u;
    }

    private void k()
    {
        Log.e("QV", "CPU does not support NEON. WordLens cannot run on this device.");
        Log.e("QV", (new StringBuilder("Unsupported! Product: ")).append(Build.PRODUCT).append(", Device: ").append(Build.DEVICE).append(", Board: ").append(Build.BOARD).append(", Model: ").append(Build.MODEL).append(", Manufacturer: ").append(Build.MANUFACTURER).toString());
        (new android.app.AlertDialog.Builder(this)).setIcon(0x1080027).setTitle(0x1040014).setMessage(at.device_not_supported).setPositiveButton(at.send_email, new ba(this)).setNegativeButton(at.exit, new bb(this)).create().show();
    }

    static View l(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.aa;
    }

    private void l()
    {
    }

    private void m()
    {
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(this)).setMessage(at.send_love_prompt).setPositiveButton(at.send_love_yes, new be(this)).setNegativeButton(at.send_love_no, null).create();
        alertdialog.show();
        View view = alertdialog.findViewById(0x102000b);
        if (view != null && view.getClass().isAssignableFrom(android/widget/TextView))
        {
            ((TextView)view).setGravity(17);
        }
    }

    static void m(WordLensActivity wordlensactivity)
    {
        wordlensactivity.z();
    }

    private void n()
    {
        if (y())
        {
            (new s()).a(e(), "info_dialog");
            return;
        } else
        {
            startActivity(new Intent(this, com/questvisual/wordlens/InfoActivity));
            return;
        }
    }

    static boolean n(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.ah;
    }

    static RelativeLayout o(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.at;
    }

    private void o()
    {
        if (y())
        {
            (new l()).a(e(), "feedback_dialog");
            return;
        } else
        {
            startActivity(new Intent(this, com/questvisual/wordlens/FeedbackActivity));
            return;
        }
    }

    static RelativeLayout p(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.av;
    }

    private void p()
    {
        if (r == null || r.g == 0 || r.h == 0 || !af)
        {
            return;
        }
        if (ag != com.questvisual.wordlens.ci.d || com.questvisual.wordlens.NativeWordLensUI.a().b() != com.questvisual.wordlens.ag.b)
        {
            q();
            r();
            return;
        }
        if (!aH)
        {
            v();
            r();
            return;
        }
        if (aG)
        {
            q();
            s();
            return;
        } else
        {
            q();
            r();
            return;
        }
    }

    static a q(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.A;
    }

    private void q()
    {
        android.view.animation.Animation animation = AnimationUtils.loadAnimation(this, aj.fade_out);
        if (C != null && 8 != C.getVisibility())
        {
            C.clearAnimation();
            C.startAnimation(animation);
            C.setVisibility(8);
        }
    }

    private void r()
    {
        android.view.animation.Animation animation = AnimationUtils.loadAnimation(this, aj.fade_out);
        if (ai)
        {
            if (E != null && 8 != E.getVisibility())
            {
                E.setVisibility(8);
                E.startAnimation(animation);
            }
        } else
        if (D != null && 8 != D.getVisibility())
        {
            D.setVisibility(8);
            D.startAnimation(animation);
            return;
        }
    }

    static void r(WordLensActivity wordlensactivity)
    {
        wordlensactivity.P();
    }

    static Boolean s(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.aA;
    }

    private void s()
    {
        if (ai)
        {
            t();
            return;
        } else
        {
            u();
            return;
        }
    }

    static ImageView t(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.I;
    }

    private void t()
    {
        if (E == null)
        {
            E = (TextView)t.inflate(aq.hint_text_layout, null);
            E.setBackgroundResource(an.grey_background);
            E.setText(getString(at.text_too_small));
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams.setMargins(B, 0, B, B);
            layoutparams.addRule(12);
            layoutparams.addRule(1, ao.camera_panel);
            layoutparams.addRule(0, ao.floating_play_pause_icon);
            ae.addView(E, layoutparams);
        }
        boolean flag;
        if (E.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        E.setVisibility(0);
        if (!flag)
        {
            android.view.animation.Animation animation = AnimationUtils.loadAnimation(this, aj.fade_in);
            E.startAnimation(animation);
        }
    }

    private void u()
    {
        if (!ai) goto _L2; else goto _L1
_L1:
        Log.e("QV", "Error! showTooSmallTextHintOldWay called from autorotate mode");
_L7:
        return;
_L2:
        com.questvisual.wordlens.cf.a(u);
        JVM INSTR lookupswitch 3: default 60
    //                   90: 315
    //                   180: 351
    //                   270: 387;
           goto _L3 _L4 _L5 _L6
_L3:
        int k1;
        int l1;
        int i2;
        int k3 = r.g - A.getMeasuredWidth();
        int l3 = aj.grow_from_bottomright_to_topleft;
        k1 = 85;
        l1 = k3;
        i2 = l3;
_L8:
        if (G == null)
        {
            View view = t.inflate(aq.hint_text_layout, null);
            view.setBackgroundResource(an.grey_background);
            G = new f(view, ao.hint_text);
            G.a(getString(at.text_too_small));
        }
        int i1;
        int j1;
        f f1;
        int j2;
        boolean flag;
        int k2;
        int l2;
        int i3;
        int j3;
        if (D == null)
        {
            D = new ImageView(this);
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, k1);
            layoutparams.setMargins(B, B, B, B);
            ad.addView(D, layoutparams);
        } else
        {
            ((android.widget.FrameLayout.LayoutParams)D.getLayoutParams()).gravity = k1;
            D.requestLayout();
        }
        G.a(l1 - 2 * B);
        f1 = G;
        if (ai)
        {
            j2 = 0;
        } else
        {
            j2 = com.questvisual.wordlens.cf.a(u);
        }
        f1.d(j2);
        D.setImageBitmap(G.b());
        if (D.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        D.setVisibility(0);
        if (!flag)
        {
            android.view.animation.Animation animation = AnimationUtils.loadAnimation(this, i2);
            D.startAnimation(animation);
            return;
        }
        if (true) goto _L7; else goto _L4
_L4:
        i3 = r.h - A.getMeasuredHeight();
        j3 = aj.grow_from_bottomleft_to_topright;
        k1 = 83;
        l1 = i3;
        i2 = j3;
          goto _L8
_L5:
        k2 = r.g - A.getMeasuredWidth();
        l2 = aj.grow_from_topleft_to_bottomright;
        k1 = 51;
        l1 = k2;
        i2 = l2;
          goto _L8
_L6:
        i1 = r.h - A.getMeasuredHeight();
        j1 = aj.grow_from_topright_to_bottomleft;
        k1 = 53;
        l1 = i1;
        i2 = j1;
          goto _L8
    }

    static boolean u(WordLensActivity wordlensactivity)
    {
        return wordlensactivity.aB;
    }

    private void v()
    {
        boolean flag = true;
        double d1 = 0.14999999999999999D;
        if (F == null)
        {
            F = new f(LayoutInflater.from(this).inflate(aq.hint_text_layout, null), ao.hint_text);
            F.c().setBackgroundResource(an.hint_brackets_grey_bg);
            F.a(getString(at.align_text_instructions));
        }
        if (C == null)
        {
            C = new ImageView(this);
            C.setVisibility(8);
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, 17);
            ad.addView(C, layoutparams);
        }
        boolean flag1;
        int i1;
        int j1;
        ImageView imageview;
        if (getResources().getConfiguration().orientation == 2)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (ai)
        {
            int l1 = (int)(0.69999999999999996D * (double)(float)r.g);
            double d2 = (float)r.h;
            if (flag1)
            {
                d1 = 0.25D;
            }
            i1 = (int)(d1 * d2);
            j1 = l1;
        } else
        if (90 == com.questvisual.wordlens.cf.a(u) || 270 == com.questvisual.wordlens.cf.a(u))
        {
            i1 = (int)(0.20000000000000001D * (double)(float)r.g);
            j1 = (int)(0.59999999999999998D * (double)(float)r.h);
        } else
        {
            int k1 = (int)(0.69999999999999996D * (double)(float)r.g);
            i1 = (int)(d1 * (double)(float)r.h);
            j1 = k1;
        }
        F.a(j1, i1);
        imageview = (ImageView)C;
        if (ai)
        {
            imageview.setImageBitmap(F.a());
        } else
        {
            F.d(com.questvisual.wordlens.cf.a(u));
            imageview.setImageBitmap(F.b());
        }
        if (C.getVisibility() != 0)
        {
            flag = false;
        }
        C.setVisibility(0);
        if (!flag)
        {
            android.view.animation.Animation animation = AnimationUtils.loadAnimation(this, aj.grow_from_center);
            C.startAnimation(animation);
        }
    }

    static void v(WordLensActivity wordlensactivity)
    {
        wordlensactivity.W();
    }

    private void w()
    {
        z = new ch(this, null);
        cc cc1 = new cc(this, this);
        com.questvisual.wordlens.d.d d1 = new com.questvisual.wordlens.d.d();
        d1.a = z;
        d1.b = aI;
        d1.c = aJ;
        d1.d = cc1;
        h h1 = new h(this, aj, this);
        A = new a(this, d1, B, h1);
        A.setAutoRotateMode(ai);
        A.setId(ao.camera_panel);
        if (ai)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams.setMargins(B, 0, 0, B);
            layoutparams.addRule(12);
            layoutparams.addRule(9);
            ae.addView(A, layoutparams);
            return;
        } else
        {
            android.widget.FrameLayout.LayoutParams layoutparams1 = new android.widget.FrameLayout.LayoutParams(-2, -2, 83);
            layoutparams1.setMargins(B, 0, 0, B);
            ad.addView(A, layoutparams1);
            return;
        }
    }

    static void w(WordLensActivity wordlensactivity)
    {
        wordlensactivity.S();
    }

    static void x(WordLensActivity wordlensactivity)
    {
        wordlensactivity.p();
    }

    private boolean x()
    {
        return getResources().getBoolean(al.split_action_bar_is_narrow);
    }

    static void y(WordLensActivity wordlensactivity)
    {
        wordlensactivity.T();
    }

    private boolean y()
    {
        int i1 = 0xf & getResources().getConfiguration().screenLayout;
        return i1 == 3 || i1 == 4;
    }

    private void z()
    {
        int i1 = getWindowManager().getDefaultDisplay().getRotation();
        if (ak != i1)
        {
            Log.d("QV", (new StringBuilder("Current display rotation is: ")).append(com.questvisual.wordlens.q.a(i1)).toString());
            if (q != null)
            {
                int j1 = com.questvisual.wordlens.q.b(i1);
                q.b.a(j1);
            }
            s.postDelayed(new bf(this), 100L);
            ak = i1;
        }
    }

    static void z(WordLensActivity wordlensactivity)
    {
        wordlensactivity.n();
    }

    public void a()
    {
label0:
        {
            android.support.v4.app.Fragment fragment = e().a("dict_dialog");
            if (fragment != null)
            {
                if (!com/questvisual/wordlens/d.isAssignableFrom(fragment.getClass()))
                {
                    break label0;
                }
                ((com.questvisual.wordlens.d)fragment).(true);
            }
            return;
        }
        Log.w("QV", "Why was a fragment not a DictFrag using the tag: dict_dialog");
    }

    public void a(Intent intent)
    {
        startActivityForResult(intent, 1593);
    }

    public void a(com.questvisual.wordlens.messaging.a a1)
    {
        runOnUiThread(new bo(this, a1));
    }

    public void f()
    {
        getWindow().setFlags(128, 128);
    }

    public void g()
    {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (1593 == i1)
        {
            aj.set(false);
            return;
        } else
        {
            super.onActivityResult(i1, j1, intent);
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (ah)
        {
            ImageView imageview = I;
            int i1;
            if (!x())
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            imageview.setVisibility(i1);
            invalidateOptionsMenu();
        }
        if (ai)
        {
            z();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (!com.questvisual.wordlens.WordLensSystem.b())
        {
            k();
            return;
        }
        boolean flag = com.questvisual.wordlens.WordLensSystem.a(getApplicationContext()) | getIntent().getBooleanExtra("key.splash.was.first.init", false);
        if (bundle != null)
        {
            bundle.putBoolean("key.first.native.code.init", flag);
        }
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        SharedPreferences sharedpreferences;
        int i1;
        Rect rect;
        int j1;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ah = flag1;
        if (getRequestedOrientation() == 10)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        ai = flag2;
        flag3 = ai;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        ai = flag4 & flag3;
        if (!ai)
        {
            setRequestedOrientation(1);
        }
        NativeGLRenderer.setIsAppWindowAutoRotate(ai);
        t = LayoutInflater.from(this);
        if (!ah)
        {
            g();
        }
        f();
        setContentView(aq.main);
        ac = (RelativeLayout)findViewById(ao.wl_main_layout);
        ad = (FrameLayout)findViewById(ao.mainFrame);
        B = getResources().getDimensionPixelSize(am.camera_panel_margin);
        sharedpreferences = getSharedPreferences("word.lens", 0);
        s = new SurfaceView(this);
        s.setZOrderMediaOverlay(false);
        i1 = sharedpreferences.getInt("key.camera.orientation.compensation.v2", 0);
        r = new com.questvisual.wordlens.a.b(this, s, i1);
        if (!sharedpreferences.getBoolean("key.device.is.high.res.capable", false))
        {
            r r1 = new r(this);
            r.d.a(r1);
        }
        ad.addView(s);
        p = new n(this);
        p.setZOrderMediaOverlay(true);
        q = new cb(this, p);
        if (ai)
        {
            int i2 = getWindowManager().getDefaultDisplay().getRotation();
            Log.d("QV", (new StringBuilder("On Startup, display rotation is: ")).append(com.questvisual.wordlens.q.a(i2)).toString());
            int j2 = com.questvisual.wordlens.q.b(i2);
            q.b.a(j2);
        }
        ad.addView(p);
        com.questvisual.wordlens.WordLensSystem.f().a(p);
        rect = new Rect();
        p.getDrawingRect(rect);
        ab = new ce(this, this, p, rect);
        p.setTouchDelegate(ab);
        ae = new RelativeLayout(this);
        ad.addView(ae);
        w();
        if (ah)
        {
            findViewById(ao.toolbar).setVisibility(8);
            I = new ImageView(this);
            I.setImageResource(an.vid_pause_selector);
            I.setContentDescription(getString(at.desc_pause_play));
            ImageView imageview = I;
            com.questvisual.wordlens.c.b b1;
            com.questvisual.wordlens.c.c ac1[];
            com.questvisual.wordlens.c.b b2;
            com.questvisual.wordlens.c.c ac2[];
            int k1;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            int l1;
            if (!x())
            {
                k1 = 0;
            } else
            {
                k1 = 8;
            }
            imageview.setVisibility(k1);
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            l1 = 2 * B;
            layoutparams.setMargins(0, 0, l1, l1);
            layoutparams.addRule(12);
            layoutparams.addRule(11);
            I.setId(ao.floating_play_pause_icon);
            ae.addView(I, layoutparams);
        } else
        {
            H = (ImageView)findViewById(ao.toolbar_worldIcon);
            I = (ImageView)findViewById(ao.toolbar_playPauseIcon);
            J = (ImageView)findViewById(ao.toolbar_infoIcon);
            K = (ImageView)findViewById(ao.toolbar_dictIcon);
            H.setOnClickListener(aM);
            J.setOnClickListener(new bz(this));
            K.setOnClickListener(aN);
        }
        I.setOnClickListener(aO);
        A();
        if (q == null)
        {
            j1 = 0;
        } else
        {
            j1 = q.b.b();
        }
        if (j1 != 0 && !ai)
        {
            A.a(j1);
            c(j1);
        }
        u = new cf(this, this, j1);
        u.enable();
        aa = findViewById(ao.focus_reticle);
        aa.setVisibility(4);
        ((TextView)findViewById(ao.demoText)).setVisibility(8);
        b1 = new com.questvisual.wordlens.c.b(this);
        ac1 = new com.questvisual.wordlens.c.c[1];
        ac1[0] = com.questvisual.wordlens.c.c.a;
        b1.execute(ac1);
        if (flag)
        {
            b2 = new com.questvisual.wordlens.c.b(this);
            ac2 = new com.questvisual.wordlens.c.c[1];
            ac2[0] = com.questvisual.wordlens.c.c.b;
            b2.execute(ac2);
        }
        l();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(ar.wl_actions, menu);
        MenuItem menuitem = menu.findItem(ao.menu_world);
        if (menuitem != null)
        {
            L = (ImageView)menuitem.getActionView();
            L.setOnClickListener(aM);
        }
        MenuItem menuitem1 = menu.findItem(ao.menu_playpause);
        if (menuitem1 != null)
        {
            M = (ImageView)menuitem1.getActionView();
            M.setOnClickListener(aO);
        }
        MenuItem menuitem2 = menu.findItem(ao.menu_dict);
        if (menuitem2 != null)
        {
            N = (ImageView)menuitem2.getActionView();
            N.setOnClickListener(aN);
        }
        return true;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        A.a();
        if (aL != null)
        {
            synchronized (aL)
            {
                aL.a();
                aL.cancel(true);
            }
            aL = null;
        }
        if (z != null)
        {
            z.a();
        }
        System.runFinalization();
        return;
        exception;
        cg1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        int i1 = menuitem.getItemId();
        if (ao.menu_info == i1)
        {
            n();
            return true;
        }
        if (ao.menu_dict == i1)
        {
            c(false);
            return true;
        }
        if (ao.menu_feedback == i1)
        {
            o();
            return true;
        }
        if (ao.menu_love == i1)
        {
            m();
            return true;
        }
        if (ao.menu_world == i1)
        {
            b(true);
            return true;
        }
        if (ao.menu_playpause == i1)
        {
            aO.onClick(null);
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onPause()
    {
        if (!com.questvisual.wordlens.WordLensSystem.b())
        {
            Log.d("QV", "Skipping onPause, CPU was not supported.");
        } else
        {
            com.questvisual.wordlens.e.a.b("wl_screen");
            O();
            com.questvisual.wordlens.WordLensSystem.f().a(null);
            if (q != null)
            {
                q.a();
            }
            if (r != null)
            {
                r.g();
            }
            if (u != null)
            {
                u.disable();
            }
            com.questvisual.wordlens.WordLensSystem.f().j();
            a(com.questvisual.wordlens.ag.a, false);
        }
        J();
        super.onPause();
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        if (ah && ag == com.questvisual.wordlens.ci.a)
        {
            a(menu);
        }
        int i1 = 0;
        do
        {
            if (i1 >= menu.size())
            {
                if (L != null)
                {
                    L.setEnabled(al);
                }
                if (M != null)
                {
                    M.setEnabled(al);
                }
                if (N != null)
                {
                    N.setEnabled(al);
                }
                MenuItem menuitem = menu.findItem(ao.menu_playpause);
                if (menuitem != null)
                {
                    a(menuitem);
                }
                return super.onPrepareOptionsMenu(menu);
            }
            menu.getItem(i1).setEnabled(al);
            i1++;
        } while (true);
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        int i1 = bundle.getInt("key.wordlensactivity.saved.ui.mode", com.questvisual.wordlens.ag.a.d);
        if (bundle.getBoolean("key.first.native.code.init", true))
        {
            aw = com.questvisual.wordlens.ag.b;
        } else
        {
            aw = com.questvisual.wordlens.ag.a(i1);
        }
        az = Boolean.valueOf(bundle.getBoolean("key.wordlensactivity.saved.torch.on"));
        aA = Boolean.valueOf(bundle.getBoolean("key.wordlensactivity.saved.zoom.enabled"));
        aB = bundle.getBoolean("key.wordlensactivity.saved.rotation.lock.video");
        aC = bundle.getBoolean("key.wordlensactivity.saved.rotation.lock.snapshot");
    }

    protected void onResume()
    {
        boolean flag = true;
        super.onResume();
        if (com.questvisual.wordlens.WordLensSystem.b())
        {
            com.questvisual.wordlens.e.a.a("wl_screen", flag);
            if (az != null)
            {
                r.a(az.booleanValue());
            }
            if (aA != null)
            {
                r.b(aA.booleanValue());
            }
            SharedPreferences sharedpreferences;
            boolean flag1;
            boolean flag2;
            ci ci1;
            if (aw != null && aw != com.questvisual.wordlens.ag.a)
            {
                ay = aw;
                aw = null;
            } else
            {
                ay = com.questvisual.wordlens.ag.b;
            }
            if (p != null)
            {
                com.questvisual.wordlens.WordLensSystem.f().a(p);
            }
            if (q != null)
            {
                q.b();
            }
            N();
            M();
            L();
            if (hasWindowFocus() && ay != null)
            {
                a(ay, flag);
                ay = null;
            }
            sharedpreferences = PreferenceManager.getDefaultSharedPreferences(this);
            flag1 = sharedpreferences.getBoolean(getString(at.KEY_DEV_DEBUG_DRAW), false);
            flag2 = sharedpreferences.getBoolean(getString(at.KEY_DEV_DISABLE_HINTS), false);
            if (flag1 || flag2)
            {
                flag = false;
            }
            af = flag;
            p();
            if (getSharedPreferences("word.lens", 0).getBoolean("key.tutorial.shown", false))
            {
                ci1 = com.questvisual.wordlens.ci.d;
            } else
            {
                ci1 = com.questvisual.wordlens.ci.a;
            }
            a(ci1);
            if (u != null)
            {
                u.a();
                return;
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (!com.questvisual.wordlens.WordLensSystem.b())
        {
            Log.d("QV", "Skipping onSaveInstanceState. CPU not supported.");
            return;
        }
        bundle.putInt("key.wordlensactivity.saved.ui.mode", com.questvisual.wordlens.NativeWordLensUI.a().b().d);
        if (r != null)
        {
            bundle.putBoolean("key.wordlensactivity.saved.torch.on", r.i());
            bundle.putBoolean("key.wordlensactivity.saved.zoom.enabled", r.l());
        }
        bundle.putBoolean("key.wordlensactivity.saved.rotation.lock.video", aB);
        bundle.putBoolean("key.wordlensactivity.saved.rotation.lock.snapshot", aC);
    }

    protected void onStart()
    {
        super.onStart();
        com.questvisual.wordlens.e.a.a(this);
    }

    protected void onStop()
    {
        com.questvisual.wordlens.e.a.b(this);
        super.onStop();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        if (flag)
        {
            boolean flag1;
            SharedPreferences sharedpreferences;
            boolean flag2;
            if (flag && ay != null)
            {
                a(ay, true);
                ay = null;
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            sharedpreferences = getSharedPreferences("word.lens", 0);
            flag2 = sharedpreferences.getBoolean("key.tutorial.shown", false);
            if (at == null && av == null && flag2)
            {
                a(com.questvisual.wordlens.ci.d);
            }
            if (u != null)
            {
                u.a();
            }
            if (!com.questvisual.wordlens.WordLensSystem.d() && !flag1 && sharedpreferences.getBoolean("key.user.should.prompt.flurry", false))
            {
                AlertDialog alertdialog = (new android.app.AlertDialog.Builder(this)).setMessage(at.flurry_opt_in).setPositiveButton(at.allow, new bn(this, sharedpreferences)).setNegativeButton(at.deny, null).create();
                alertdialog.setCanceledOnTouchOutside(true);
                alertdialog.show();
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putBoolean("key.user.prompted.flurry", true);
                editor.putBoolean("key.user.should.prompt.flurry", false);
                editor.commit();
                return;
            }
        }
    }

}
