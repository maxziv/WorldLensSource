// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.questvisual.wordlens:
//            d, y, LanguagesActivity

class e
    implements android.view.View.OnClickListener
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public void onClick(View view)
    {
        d.a(a, false);
        if (d.d(a))
        {
            (new y()).a(a.l(), "dialog");
            return;
        } else
        {
            Intent intent = new Intent(a.j(), com/questvisual/wordlens/LanguagesActivity);
            a.a(intent, 264);
            return;
        }
    }
}
