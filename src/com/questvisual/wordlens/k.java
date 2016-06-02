// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.questvisual.wordlens:
//            d

class k
    implements TextWatcher
{

    final d a;
    private boolean b;

    private k(d d1)
    {
        a = d1;
        super();
        b = true;
    }

    k(d d1, k k1)
    {
        this(d1);
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int l)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int l)
    {
        if (b)
        {
            d.a(a, charsequence);
        }
    }
}
