// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.widget.EditText;

// Referenced classes of package com.questvisual.wordlens:
//            d, k

class g
    implements Runnable
{

    final d a;
    private final CharSequence b;

    g(d d1, CharSequence charsequence)
    {
        a = d1;
        b = charsequence;
        super();
    }

    public void run()
    {
        d.g(a).a(false);
        d.f(a).setText(b);
        d.g(a).a(true);
    }
}
