// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.util.LinkedHashMap;

// Referenced classes of package com.b.a:
//            m

final class z extends LinkedHashMap
{

    private m a;

    z(m m1, int i, float f)
    {
        a = m1;
        super(i, f, true);
    }

    protected final boolean removeEldestEntry(java.util.Map.Entry entry)
    {
        return size() > m.a(a);
    }
}
