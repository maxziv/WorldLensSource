// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.widget.Toast;

// Referenced classes of package com.questvisual.wordlens:
//            at, WordLensActivity

class bs
    implements Runnable
{

    final WordLensActivity a;

    bs(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void run()
    {
        Toast.makeText(a, at.tap_to_focus, 0).show();
    }
}
