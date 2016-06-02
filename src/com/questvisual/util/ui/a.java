// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util.ui;

import android.app.Activity;
import android.support.v4.app.e;
import android.support.v4.app.i;

// Referenced classes of package com.questvisual.util.ui:
//            b

public abstract class a extends e
{

    private boolean Y;

    public a()
    {
        Y = false;
    }

    protected boolean D()
    {
        return Y;
    }

    public void a()
    {
        if (Y)
        {
            j().finish();
        }
        super.a();
    }

    public void a(Activity activity)
    {
        if (com/questvisual/util/ui/b.isAssignableFrom(activity.getClass()))
        {
            Y = true;
        }
        super.a(activity);
    }
}
