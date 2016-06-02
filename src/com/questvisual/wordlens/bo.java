// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import com.questvisual.wordlens.messaging.a;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class bo
    implements Runnable
{

    final WordLensActivity a;
    private final a b;

    bo(WordLensActivity wordlensactivity, a a1)
    {
        a = wordlensactivity;
        b = a1;
        super();
    }

    public void run()
    {
        com.questvisual.wordlens.WordLensActivity.a(a, b);
    }
}
