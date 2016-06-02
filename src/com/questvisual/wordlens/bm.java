// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity, ao, ci

class bm
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bm(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        if (WordLensActivity.n(a))
        {
            WordLensActivity.E(a);
        }
        WordLensActivity.B(a);
        a.getSharedPreferences("word.lens", 0).edit().putBoolean("key.tutorial.shown", true).commit();
        View view1 = a.findViewById(ao.welcome_overlay);
        if (view1 != null)
        {
            view1.setVisibility(8);
            WordLensActivity.F(a).removeView(view1);
        }
        View view2 = a.findViewById(ao.tutorial_overlay_gray);
        if (view2 != null)
        {
            view2.setVisibility(8);
            WordLensActivity.D(a).removeView(view2);
        }
        if (WordLensActivity.j(a))
        {
            a.setRequestedOrientation(10);
        }
        WordLensActivity.a(a, ci.d);
    }
}
