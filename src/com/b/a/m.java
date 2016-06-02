// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.b.a:
//            z

final class m
{

    private LinkedHashMap a;
    private int b;

    m(int i)
    {
        b = 100;
        a = new z(this, 1 + (int)Math.ceil((float)100 / 0.75F), 0.75F);
    }

    static int a(m m1)
    {
        return m1.b;
    }

    final int a()
    {
        this;
        JVM INSTR monitorenter ;
        int i = a.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    final Object a(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1 = a.get(obj);
        this;
        JVM INSTR monitorexit ;
        return obj1;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(Object obj, Object obj1)
    {
        this;
        JVM INSTR monitorenter ;
        a.put(obj, obj1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final List b()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = new ArrayList(a.entrySet());
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    final Set c()
    {
        this;
        JVM INSTR monitorenter ;
        Set set = a.keySet();
        this;
        JVM INSTR monitorexit ;
        return set;
        Exception exception;
        exception;
        throw exception;
    }
}
