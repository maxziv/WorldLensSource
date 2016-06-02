// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.view.View;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class ca
    implements Runnable
{

    final WordLensActivity a;

    private ca(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    ca(WordLensActivity wordlensactivity, ca ca1)
    {
        this(wordlensactivity);
    }

    public void run()
    {
        WordLensActivity.l(a).setVisibility(4);
    }
}
