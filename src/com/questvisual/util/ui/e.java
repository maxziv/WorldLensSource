// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util.ui;

import android.view.View;

// Referenced classes of package com.questvisual.util.ui:
//            d

class e
    implements Runnable
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public void run()
    {
        d.a(a).setPressed(false);
    }
}
