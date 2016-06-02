// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem

class ck
    implements Runnable
{

    final WordLensSystem a;

    ck(WordLensSystem wordlenssystem)
    {
        a = wordlenssystem;
        super();
    }

    public void run()
    {
        synchronized (WordLensSystem.c(a))
        {
            WordLensSystem.a(a, WordLensSystem.d(a));
            WordLensSystem.c(a).notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
