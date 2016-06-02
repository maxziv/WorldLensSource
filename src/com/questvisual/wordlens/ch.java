// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.questvisual.wordlens.e.a.a;
import com.questvisual.wordlens.e.a.b;
import com.questvisual.wordlens.e.a.d;
import com.questvisual.wordlens.e.a.e;

// Referenced classes of package com.questvisual.wordlens:
//            ag, WordLensActivity, an, am, 
//            NativeWordLensUI, at, ap, cf

class ch
    implements android.view.View.OnClickListener
{

    private static int d[];
    final WordLensActivity a;
    private a b;
    private long c;

    private ch(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
        b = null;
        c = 0L;
    }

    ch(WordLensActivity wordlensactivity, ch ch1)
    {
        this(wordlensactivity);
    }

    static int[] b()
    {
        int ai[] = d;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[ag.values().length];
        try
        {
            ai1[com.questvisual.wordlens.ag.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ag.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[com.questvisual.wordlens.ag.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        d = ai1;
        return ai1;
    }

    public void a()
    {
        if (b != null && b.b())
        {
            b.a();
        }
    }

    public void onClick(View view)
    {
        boolean flag;
        TextView textview;
        int i;
        if (WordLensActivity.j(a))
        {
            if (a.getRequestedOrientation() == 10)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = WordLensActivity.k(a).b();
        }
        textview = new TextView(a);
        textview.setBackgroundResource(an.info_popup);
        textview.setGravity(17);
        i = a.getResources().getDimensionPixelSize(am.custom_toast_padding);
        textview.setPadding(i, i, i, i);
        b()[com.questvisual.wordlens.NativeWordLensUI.a().b().ordinal()];
        JVM INSTR tableswitch 2 3: default 112
    //                   2 244
    //                   3 255;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_255;
_L4:
        WordLensActivity.f(a, flag);
        if (flag)
        {
            textview.setCompoundDrawablesWithIntrinsicBounds(0, an.info_rot_locked, 0, 0);
            textview.setText(at.orientation_locked);
            a("wl_rotate_lock");
        } else
        {
            textview.setCompoundDrawablesWithIntrinsicBounds(0, an.info_rot_unlocked, 0, 0);
            textview.setText(at.orientation_unlocked);
            a("wl_rotate_unlock");
        }
        if (b == null)
        {
            b = new a(a, b.c, d.g, e.g);
        } else
        if (b.b())
        {
            b.a();
        }
        if (0L == c)
        {
            c = a.getResources().getInteger(ap.rotation_lock_popup_millis);
        }
        b.a(textview);
        b.a(view, c);
        return;
_L2:
        com.questvisual.wordlens.WordLensActivity.d(a, flag);
          goto _L4
        com.questvisual.wordlens.WordLensActivity.e(a, flag);
          goto _L4
    }
}
