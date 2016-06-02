// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.widget.EditText;

// Referenced classes of package com.questvisual.wordlens:
//            d

class f
    implements Runnable
{

    final d a;

    f(d d1)
    {
        a = d1;
        super();
    }

    public void run()
    {
        d.e(a);
        d.a(a, d.f(a).getText());
    }
}
