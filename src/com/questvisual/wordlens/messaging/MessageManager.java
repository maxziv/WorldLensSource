// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.messaging;

import android.util.Log;
import com.questvisual.wordlens.WordLensSystem;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.questvisual.wordlens.messaging:
//            a, b, c, g, 
//            d, f, e

public class MessageManager
{

    private static Map a;
    private static int b[];

    public MessageManager()
    {
    }

    public static void a()
    {
        if (a == null)
        {
            a = new HashMap();
            synchronized (WordLensSystem.g())
            {
                subscribeAllMessagesNative();
            }
            return;
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(a a1)
    {
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        Set set;
        g g1 = a1.a();
        set = (Set)a.get(g1);
        if (set == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = set.iterator();
_L4:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_52;
        }
_L2:
        map;
        JVM INSTR monitorexit ;
        return;
        ((b)iterator.next()).a(a1);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(b b1)
    {
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        Iterator iterator = a.values().iterator();
_L2:
        if (!iterator.hasNext())
        {
            return;
        }
        Set set = (Set)iterator.next();
        if (set == null) goto _L2; else goto _L1
_L1:
        set.remove(b1);
          goto _L2
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(b b1, g ag[])
    {
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        int i = ag.length;
        int j = 0;
_L2:
        if (j < i)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        map;
        JVM INSTR monitorexit ;
        return;
        g g1;
        Object obj;
        g1 = ag[j];
        obj = (Set)a.get(g1);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        obj = new HashSet();
        a.put(g1, obj);
        ((Set) (obj)).add(b1);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(c c1, float f1, float f2)
    {
        synchronized (WordLensSystem.g())
        {
            createAndPostGUIInputMessageNative(c1.ordinal(), f1, f2);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(g g1)
    {
        a(new a(g1));
    }

    static int[] b()
    {
        int ai[] = b;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[g.values().length];
        try
        {
            ai1[g.t.ordinal()] = 20;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[g.u.ordinal()] = 21;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[g.v.ordinal()] = 22;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[g.w.ordinal()] = 23;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[g.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[g.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[g.s.ordinal()] = 19;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[g.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai1[g.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai1[g.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            ai1[g.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            ai1[g.n.ordinal()] = 14;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            ai1[g.m.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            ai1[g.l.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            ai1[g.p.ordinal()] = 16;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            ai1[g.j.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            ai1[g.k.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            ai1[g.i.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            ai1[g.o.ordinal()] = 15;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        try
        {
            ai1[g.r.ordinal()] = 18;
        }
        catch (NoSuchFieldError nosuchfielderror19) { }
        try
        {
            ai1[g.q.ordinal()] = 17;
        }
        catch (NoSuchFieldError nosuchfielderror20) { }
        try
        {
            ai1[g.h.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror21) { }
        try
        {
            ai1[g.g.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror22) { }
        b = ai1;
        return ai1;
    }

    private static native void createAndPostGUIInputMessageNative(int i, float f1, float f2);

    private static void postMessageFromNative(int i, byte abyte0[])
    {
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        g g1 = g.a(i);
        if (g1 != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        Log.e("QV", (new StringBuilder("MessageManager dropping message for unknown native enum value: ")).append(i).toString());
        map;
        JVM INSTR monitorexit ;
        return;
        Set set = (Set)a.get(g1);
        if (set == null) goto _L2; else goto _L1
_L1:
        if (set.size() <= 0) goto _L2; else goto _L3
_L3:
        int j = b()[g1.ordinal()];
        Object obj = null;
        j;
        JVM INSTR tableswitch 5 18: default 160
    //                   5 179
    //                   6 179
    //                   7 179
    //                   8 168
    //                   9 160
    //                   10 168
    //                   11 160
    //                   12 160
    //                   13 168
    //                   14 168
    //                   15 179
    //                   16 192
    //                   17 207
    //                   18 222;
           goto _L4 _L5 _L5 _L5 _L6 _L4 _L6 _L4 _L4 _L6 _L6 _L5 _L7 _L8 _L9
_L5:
        break MISSING_BLOCK_LABEL_179;
_L4:
        map;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
_L6:
        obj = new a(g1);
_L11:
        if (obj == null) goto _L2; else goto _L10
_L10:
        a(((a) (obj)));
_L2:
        map;
        JVM INSTR monitorexit ;
        return;
_L7:
        obj = new d(g1, abyte0);
          goto _L11
_L8:
        obj = new f(g1, abyte0);
          goto _L11
_L9:
        obj = new e(g1, abyte0);
          goto _L11
    }

    private static native void subscribeAllMessagesNative();
}
