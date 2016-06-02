// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.b.a:
//            ag

final class ab
    implements Runnable
{

    private List a;

    ab(List list)
    {
        a = list;
        super();
    }

    public final void run()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((ag)iterator.next()).a()) { }
    }
}
