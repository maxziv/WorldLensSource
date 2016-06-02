// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;


// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem

class cl
    implements Runnable
{

    final WordLensSystem a;

    cl(WordLensSystem wordlenssystem)
    {
        a = wordlenssystem;
        super();
    }

    public void run()
    {
        synchronized (WordLensSystem.g())
        {
            WordLensSystem.a(a);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
