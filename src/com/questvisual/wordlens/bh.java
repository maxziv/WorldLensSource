// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;
import android.view.View;
import com.questvisual.wordlens.a.b;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class bh
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bh(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        if (WordLensActivity.d(a) == null)
        {
            Log.e("QV", "How did camera controller stop!? Can't decrement compensation value!");
            return;
        } else
        {
            int i = WordLensActivity.d(a).a();
            int j = i - 90;
            Log.d("QV", (new StringBuilder("compensation: compValue=")).append(i).append(", newValue=").append(j).toString());
            WordLensActivity.d(a).a(j);
            return;
        }
    }
}
