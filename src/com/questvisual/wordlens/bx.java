// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.view.View;
import com.questvisual.wordlens.a.b;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            NativeWordLensUI, ag, WordLensActivity

class bx
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bx(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        if (com.questvisual.wordlens.NativeWordLensUI.a().b() == com.questvisual.wordlens.ag.b)
        {
            com.questvisual.wordlens.WordLensActivity.a(a, Boolean.valueOf(WordLensActivity.d(a).i()));
            com.questvisual.wordlens.WordLensActivity.a(a, ag.c, true);
            com.questvisual.wordlens.e.a.a("wl_lang_pause");
            return;
        } else
        {
            com.questvisual.wordlens.WordLensActivity.a(a, com.questvisual.wordlens.ag.b, true);
            com.questvisual.wordlens.e.a.a("wl_lang_play");
            return;
        }
    }
}
