// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Intent;
import android.support.v4.app.e;
import com.questvisual.util.ui.b;

// Referenced classes of package com.questvisual.wordlens:
//            d

public class DictActivity extends b
{

    public DictActivity()
    {
    }

    protected e f()
    {
        Intent intent = getIntent();
        boolean flag = false;
        if (intent != null)
        {
            flag = getIntent().getBooleanExtra("key.do.init.lookup", false);
        }
        return d.d(flag);
    }
}
