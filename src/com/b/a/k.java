// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;


// Referenced classes of package com.b.a:
//            d, aj, c

final class k
    implements Runnable
{

    private int a;
    private aj b;

    k(aj aj1, int i)
    {
        b = aj1;
        a = i;
        super();
    }

    public final void run()
    {
        d d1 = new d(a);
        aj.a(b).b(d1);
    }
}
