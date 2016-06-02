// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


// Referenced classes of package com.questvisual.wordlens:
//            bc, WordLensActivity

class bd
    implements Runnable
{

    final bc a;

    bd(bc bc1)
    {
        a = bc1;
        super();
    }

    public void run()
    {
        if (WordLensActivity.A(bc.a(a)))
        {
            WordLensActivity.B(bc.a(a));
            WordLensActivity.C(bc.a(a));
        }
    }
}
