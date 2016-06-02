// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import com.questvisual.wordlens.messaging.MessageManager;
import com.questvisual.wordlens.messaging.c;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class ce extends TouchDelegate
{

    View a;
    final WordLensActivity b;
    private int c;
    private int d;
    private float e;

    ce(WordLensActivity wordlensactivity, WordLensActivity wordlensactivity1, View view, Rect rect)
    {
        b = wordlensactivity;
        super(rect, view);
        c = -1;
        d = -1;
        e = 1.0F;
        a = view;
        e = wordlensactivity.getResources().getDisplayMetrics().density;
    }

    static int a(ce ce1)
    {
        return ce1.c;
    }

    static int b(ce ce1)
    {
        return ce1.d;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i;
        float f;
        float f1;
        Rect rect = new Rect();
        a.getDrawingRect(rect);
        i = motionevent.getAction();
        f = motionevent.getX();
        f1 = motionevent.getY();
        i;
        JVM INSTR tableswitch 0 2: default 60
    //                   0 89
    //                   1 97
    //                   2 119;
           goto _L1 _L2 _L3 _L4
_L1:
        c c1 = null;
_L6:
        if (c1 != null)
        {
            MessageManager.a(c1, f / e, f1 / e);
        }
        return true;
_L2:
        c1 = c.b;
        continue; /* Loop/switch isn't completed */
_L3:
        c1 = c.d;
        c = (int)f;
        d = (int)f1;
        continue; /* Loop/switch isn't completed */
_L4:
        c1 = c.c;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
