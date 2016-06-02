// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ViewFlipper;

// Referenced classes of package com.questvisual.wordlens:
//            ay, WordLensActivity, WordLensSystem, av, 
//            aw

public class WLSplashActivity extends Activity
{

    private static int h[];
    private ListView a;
    private aw b;
    private boolean c;
    private ay d;
    private ViewFlipper e;
    private Button f;
    private boolean g;

    public WLSplashActivity()
    {
        c = true;
        d = null;
        g = false;
    }

    static void a(WLSplashActivity wlsplashactivity)
    {
        wlsplashactivity.b();
    }

    static void a(WLSplashActivity wlsplashactivity, ay ay1)
    {
        wlsplashactivity.d = ay1;
    }

    static int[] a()
    {
        int ai[] = h;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[ay.values().length];
        try
        {
            ai1[ay.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ay.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[ay.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        h = ai1;
        return ai1;
    }

    static ay b(WLSplashActivity wlsplashactivity)
    {
        return wlsplashactivity.d;
    }

    private void b()
    {
        Intent intent = new Intent(this, com/questvisual/wordlens/WordLensActivity);
        intent.putExtra("key.splash.was.first.init", c);
        startActivity(intent);
        finish();
    }

    static ViewFlipper c(WLSplashActivity wlsplashactivity)
    {
        return wlsplashactivity.e;
    }

    static boolean d(WLSplashActivity wlsplashactivity)
    {
        return wlsplashactivity.g;
    }

    static Button e(WLSplashActivity wlsplashactivity)
    {
        return wlsplashactivity.f;
    }

    public void onBackPressed()
    {
        switch (a()[d.ordinal()])
        {
        default:
            return;

        case 3: // '\003'
            e.showPrevious();
            d = ay.b;
            f.setVisibility(0);
            return;

        case 2: // '\002'
            e.showPrevious();
            d = ay.a;
            f.setVisibility(0);
            return;

        case 1: // '\001'
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        boolean flag;
        super.onCreate(bundle);
        c = WordLensSystem.a(getApplicationContext());
        SharedPreferences sharedpreferences = getSharedPreferences("word.lens", 0);
        String s = sharedpreferences.getString("key.first.start.of.wordlens.plus", null);
        flag = sharedpreferences.getBoolean("key.tutorial.shown", false);
        boolean flag1 = getResources().getBoolean(0x7f090003);
        boolean flag2 = false;
        if (s == null)
        {
            flag2 = false;
            if (flag1)
            {
                flag2 = true;
            }
        }
        g = flag2;
        if (flag && !g) goto _L2; else goto _L1
_L1:
        TextView textview;
        setContentView(0x7f030014);
        textview = (TextView)findViewById(0x7f0c003e);
        Typeface typeface = Typeface.createFromAsset(getAssets(), "fonts/angelina.ttf");
        String s1;
        if (typeface != null && textview != null)
        {
            try
            {
                textview.setTypeface(typeface);
            }
            catch (Exception exception)
            {
                Log.w("QV", "Unable to load desired font for stylized text.");
            }
        }
        e = (ViewFlipper)findViewById(0x7f0c002f);
        f = (Button)findViewById(0x1020019);
        if (bundle == null) goto _L4; else goto _L3
_L3:
        s1 = bundle.getString("key.splash.state");
        if (s1 == null) goto _L4; else goto _L5
_L5:
        d = ay.valueOf(s1);
        a()[d.ordinal()];
        JVM INSTR tableswitch 1 3: default 228
    //                   1 228
    //                   2 319
    //                   3 329;
           goto _L4 _L4 _L6 _L7
_L4:
        if (d == null)
        {
            d = ay.a;
        }
        f.setOnClickListener(new av(this));
        a = (ListView)findViewById(0x102000a);
        b = new aw(this, this);
        a.setAdapter(b);
        a.setOnItemClickListener(b);
        return;
_L6:
        e.showNext();
        continue; /* Loop/switch isn't completed */
_L7:
        if (g)
        {
            e.showNext();
            e.showNext();
            d = ay.c;
            f.setVisibility(8);
        } else
        {
            b();
        }
        if (true) goto _L4; else goto _L2
_L2:
        b();
        return;
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (d != null)
        {
            bundle.putString("key.splash.state", d.toString());
        }
    }
}
