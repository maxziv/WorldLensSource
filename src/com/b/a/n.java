// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.os.Handler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.b.a:
//            ac, ag, ab

final class n
{

    private List a;
    private Handler b;
    private Handler c;
    private int d;
    private Runnable e;

    n(Handler handler, int i)
    {
        a = new ArrayList();
        b = handler;
        c = new Handler();
        d = i;
        e = new ac(this);
        b();
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = a.iterator();
_L2:
        ag ag1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_68;
            }
            ag1 = (ag)((WeakReference)iterator.next()).get();
        } while (ag1 == null);
        arraylist.add(ag1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
        c.post(new ab(arraylist));
        b();
        this;
        JVM INSTR monitorexit ;
    }

    static void a(n n1)
    {
        n1.a();
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((WeakReference)iterator.next()).get() == null)
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_50;
        Exception exception;
        exception;
        throw exception;
        b.removeCallbacks(e);
        b.postDelayed(e, d);
        this;
        JVM INSTR monitorexit ;
    }
}
