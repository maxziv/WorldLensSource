// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.widget.ImageView;
import com.questvisual.wordlens.a.b;

// Referenced classes of package com.questvisual.wordlens.d:
//            a

class c
    implements Runnable
{

    final a a;
    private final b b;

    c(a a1, b b1)
    {
        a = a1;
        b = b1;
        super();
    }

    public void run()
    {
        ImageView imageview = com.questvisual.wordlens.d.a.b(a);
        int i;
        if (b.k())
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
        if (b.j())
        {
            com.questvisual.wordlens.d.a.c(a).setVisibility(0);
            boolean flag = b.i();
            com.questvisual.wordlens.d.a.c(a).setSelected(flag);
            return;
        } else
        {
            com.questvisual.wordlens.d.a.c(a).setVisibility(8);
            return;
        }
    }
}
