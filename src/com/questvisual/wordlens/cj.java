// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.os.Message;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem

class cj
    implements android.os.Handler.Callback
{

    final WordLensSystem a;

    cj(WordLensSystem wordlenssystem)
    {
        a = wordlenssystem;
        super();
    }

    public boolean handleMessage(Message message)
    {
        Object obj = WordLensSystem.g();
        obj;
        JVM INSTR monitorenter ;
        message.what;
        JVM INSTR tableswitch 0 0: default 28
    //                   0 32;
           goto _L1 _L2
_L1:
        return false;
_L2:
        WordLensSystem.a(a);
        obj;
        JVM INSTR monitorexit ;
        return true;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
