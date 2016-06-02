// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.RotateDrawable;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.CycleInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.questvisual.wordlens.a.b;
import com.questvisual.wordlens.ag;
import com.questvisual.wordlens.aj;
import com.questvisual.wordlens.an;

// Referenced classes of package com.questvisual.wordlens.d:
//            d, h, c, b

public class a extends LinearLayout
{

    private static int o[];
    private ImageView a;
    private ImageView b;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private RotateDrawable f;
    private RotateDrawable g;
    private RotateDrawable h;
    private RotateDrawable i;
    private RotateDrawable j;
    private int k;
    private boolean l;
    private SharedPreferences m;
    private h n;

    public a(Context context, d d1, int i1, h h1)
    {
        super(context);
        n = null;
        k = i1;
        setBackgroundResource(an.float_bg);
        setGravity(17);
        m = PreferenceManager.getDefaultSharedPreferences(context);
        a = new ImageView(getContext());
        b = new ImageView(getContext());
        c = new ImageView(getContext());
        d = new ImageView(getContext());
        e = new ImageView(getContext());
        a.setImageResource(an.tool_rot_lock_rotatable);
        b.setImageResource(an.tool_zoom_rotatable);
        c.setImageResource(an.tool_torch_rotatable);
        d.setImageResource(an.tool_hide_trans_rotatable);
        e.setImageResource(an.tool_share_snapshot_rotatable);
        b.setVisibility(8);
        c.setVisibility(8);
        d.setVisibility(8);
        e.setVisibility(8);
        try
        {
            f = (RotateDrawable)a.getDrawable();
            g = (RotateDrawable)b.getDrawable();
            h = (RotateDrawable)c.getDrawable();
            i = (RotateDrawable)d.getDrawable();
            j = (RotateDrawable)e.getDrawable();
        }
        catch (ClassCastException classcastexception)
        {
            Log.e("QV", "Mistake. Camera Panel icons have been edited incorrectly. Must assign a <rotate> RotateDrawable to these icons.", classcastexception);
        }
        setCameraPanelIconRotation(0);
        addView(a, -2, -2);
        addView(b, -2, -2);
        addView(c, -2, -2);
        addView(d, -2, -2);
        addView(e, -2, -2);
        a.setOnClickListener(d1.a);
        b.setOnClickListener(d1.b);
        c.setOnClickListener(d1.c);
        d.setOnTouchListener(d1.d);
        n = h1;
        e.setOnClickListener(n);
    }

    static ImageView a(a a1)
    {
        return a1.e;
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            addView(a, -2, -2);
            addView(b, -2, -2);
            addView(c, -2, -2);
            addView(d, -2, -2);
            addView(e, -2, -2);
            return;
        } else
        {
            addView(e, -2, -2);
            addView(d, -2, -2);
            addView(c, -2, -2);
            addView(b, -2, -2);
            addView(a, -2, -2);
            return;
        }
    }

    static ImageView b(a a1)
    {
        return a1.b;
    }

    static int[] b()
    {
        int ai[] = o;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[ag.values().length];
        try
        {
            ai1[ag.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ag.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[ag.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        o = ai1;
        return ai1;
    }

    static ImageView c(a a1)
    {
        return a1.c;
    }

    public void a()
    {
        if (n != null)
        {
            n.b();
        }
    }

    public void a(int i1)
    {
        removeAllViews();
        i1;
        JVM INSTR lookupswitch 3: default 40
    //                   90: 96
    //                   180: 112
    //                   270: 128;
           goto _L1 _L2 _L3 _L4
_L1:
        byte byte0;
        byte0 = 83;
        setOrientation(0);
        a(true);
_L6:
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, byte0);
        layoutparams.setMargins(k, k, k, k);
        setLayoutParams(layoutparams);
        requestLayout();
        return;
_L2:
        byte0 = 51;
        setOrientation(1);
        a(true);
        continue; /* Loop/switch isn't completed */
_L3:
        byte0 = 53;
        setOrientation(0);
        a(false);
        continue; /* Loop/switch isn't completed */
_L4:
        byte0 = 85;
        setOrientation(1);
        a(false);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(b b1)
    {
        if (b1 != null)
        {
            b.post(new c(this, b1));
        }
    }

    public void a(ag ag1, b b1)
    {
        b()[ag1.ordinal()];
        JVM INSTR tableswitch 2 3: default 32
    //                   2 156
    //                   3 33;
           goto _L1 _L2 _L3
_L1:
        return;
_L3:
        if (l)
        {
            a.setVisibility(8);
        }
        b.setVisibility(8);
        c.setVisibility(8);
        d.setVisibility(0);
        if (n.a())
        {
            e.setVisibility(0);
            if (!m.getBoolean("key.has.used.share.feature", false))
            {
                Animation animation = AnimationUtils.loadAnimation(getContext(), aj.wobble);
                animation.setInterpolator(new CycleInterpolator(2.0F));
                animation.setAnimationListener(new com.questvisual.wordlens.d.b(this));
                e.startAnimation(animation);
                return;
            }
        }
          goto _L1
_L2:
        a.setVisibility(0);
        if (b1 != null)
        {
            ImageView imageview = b;
            int i1;
            ImageView imageview1;
            boolean flag;
            int j1;
            if (b1.k())
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            imageview.setVisibility(i1);
            imageview1 = c;
            flag = b1.j();
            j1 = 0;
            if (!flag)
            {
                j1 = 8;
            }
            imageview1.setVisibility(j1);
        }
        d.setVisibility(8);
        e.setVisibility(8);
        n.a(true);
        return;
    }

    public void setAutoRotateMode(boolean flag)
    {
        l = flag;
    }

    public void setCameraPanelIconRotation(int i1)
    {
        int j1 = (i1 * 10000) / 360;
        f.setLevel(j1);
        g.setLevel(j1);
        h.setLevel(j1);
        i.setLevel(j1);
        j.setLevel(j1);
    }

    public void setOrientationLocked(boolean flag)
    {
        a.setSelected(flag);
    }
}
