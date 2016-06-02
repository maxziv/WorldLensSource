// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e.a;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

// Referenced classes of package com.questvisual.wordlens.e.a:
//            f

class g
    implements android.view.View.OnTouchListener
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 4)
        {
            a.b.dismiss();
            return true;
        } else
        {
            return false;
        }
    }
}
