// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.view.View;
import com.questvisual.wordlens.a.b;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class bu
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bu(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        if (WordLensActivity.d(a) != null)
        {
            boolean flag;
            if (WordLensActivity.d(a).i())
            {
                flag = false;
            } else
            {
                flag = true;
            }
            WordLensActivity.d(a).a(flag);
            com.questvisual.wordlens.WordLensActivity.a(a, Boolean.valueOf(WordLensActivity.d(a).i()));
            view.setSelected(WordLensActivity.f(a).booleanValue());
            com.questvisual.wordlens.e.a.a("wl_torch");
        }
    }
}
