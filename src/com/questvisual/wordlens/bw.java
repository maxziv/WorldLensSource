// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.view.View;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class bw
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bw(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        WordLensActivity.b(a, false);
    }
}
