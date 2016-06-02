// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class bq
    implements Runnable
{

    final WordLensActivity a;

    bq(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void run()
    {
        WordLensActivity.x(a);
    }
}
