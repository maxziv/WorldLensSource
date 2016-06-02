// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem

class cm extends Thread
{

    final WordLensSystem a;
    private Handler b;

    public cm(WordLensSystem wordlenssystem)
    {
        a = wordlenssystem;
        super(com/questvisual/wordlens/cm.getSimpleName());
    }

    static Handler a(cm cm1)
    {
        return cm1.b;
    }

    public void run()
    {
        Looper.prepare();
        b = new Handler(WordLensSystem.b(a));
        Looper.loop();
    }
}
