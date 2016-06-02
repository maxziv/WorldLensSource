// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util.ui;

import android.view.View;

// Referenced classes of package com.questvisual.util.ui:
//            e

public class d
    implements android.view.View.OnClickListener
{

    private View a;

    public d(View view)
    {
        a = null;
        a = view;
    }

    static View a(d d1)
    {
        return d1.a;
    }

    public void a(View view)
    {
        a = view;
    }

    public void onClick(View view)
    {
        if (a != null)
        {
            a.setPressed(true);
            a.postDelayed(new e(this), 400L);
        }
    }
}
