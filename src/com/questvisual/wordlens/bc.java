// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;
import android.view.View;

// Referenced classes of package com.questvisual.wordlens:
//            bd, WordLensActivity

class bc
    implements android.view.View.OnLayoutChangeListener
{

    final WordLensActivity a;

    bc(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    static WordLensActivity a(bc bc1)
    {
        return bc1.a;
    }

    public void onLayoutChange(View view, int i, int j, int k, int l, int i1, int j1, 
            int k1, int l1)
    {
        Log.i("QV", (new StringBuilder("onLayoutChange: ")).append(view).append(",").append(i).append(",").append(j).append(",").append(k).append(",").append(l).append(",").append(i1).append(",").append(j1).append(",").append(k1).append(",").append(l1).toString());
        view.postDelayed(new bd(this), 150L);
        view.removeOnLayoutChangeListener(this);
    }
}
