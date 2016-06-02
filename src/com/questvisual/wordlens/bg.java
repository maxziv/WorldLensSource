// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import com.questvisual.wordlens.a.b;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity, ci

class bg
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bg(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        if (WordLensActivity.d(a) == null)
        {
            Log.e("QV", "How did camera controller stop!? Can't save compensation value!");
        } else
        {
            SharedPreferences sharedpreferences = a.getSharedPreferences("word.lens", 0);
            sharedpreferences.edit().putInt("key.camera.orientation.compensation.v2", WordLensActivity.d(a).a()).commit();
            com.questvisual.wordlens.WordLensActivity.a(a, ci.d);
            int i = sharedpreferences.getInt("key.camera.orientation.compensation.v2", 0);
            if (i != 0)
            {
                com.questvisual.wordlens.e.a.a(i);
                return;
            }
        }
    }
}
