// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.FrameLayout;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity, ci

class bj
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bj(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        SharedPreferences sharedpreferences = a.getSharedPreferences("word.lens", 0);
        sharedpreferences.edit().putInt("key.camera.orientation.compensation.v2", 0).commit();
        WordLensActivity.D(a).removeView(WordLensActivity.o(a));
        com.questvisual.wordlens.WordLensActivity.a(a, null);
        com.questvisual.wordlens.WordLensActivity.a(a, ci.d);
        int i = sharedpreferences.getInt("key.camera.orientation.compensation.v2", 0);
        if (i != 0)
        {
            com.questvisual.wordlens.e.a.a(i);
        }
    }
}
