// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.widget.TextView;

// Referenced classes of package com.questvisual.wordlens:
//            ab

class ac
{

    final ab a;
    private TextView b;
    private TextView c;

    ac(ab ab)
    {
        a = ab;
        super();
    }

    static TextView a(ac ac1)
    {
        return ac1.b;
    }

    static void a(ac ac1, TextView textview)
    {
        ac1.b = textview;
    }

    static TextView b(ac ac1)
    {
        return ac1.c;
    }

    static void b(ac ac1, TextView textview)
    {
        ac1.c = textview;
    }
}
