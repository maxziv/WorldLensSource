// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e.a;


// Referenced classes of package com.questvisual.wordlens.e.a:
//            a

class c
    implements Runnable
{

    final a a;
    private boolean b;

    private c(a a1)
    {
        a = a1;
        super();
        b = true;
    }

    c(a a1, c c1)
    {
        this(a1);
    }

    public void a()
    {
        b = false;
    }

    public void run()
    {
        if (b && a.b())
        {
            a.a();
        }
    }
}
