// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class RotateLayout extends ViewGroup
{

    protected View a;
    private int b;

    public RotateLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setBackgroundResource(0x106000d);
    }

    protected void onFinishInflate()
    {
        a = getChildAt(0);
        a.setPivotX(0.0F);
        a.setPivotY(0.0F);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = k - i;
        int j1 = l - j;
        switch (b)
        {
        default:
            return;

        case 0: // '\0'
        case 180: 
            a.layout(0, 0, i1, j1);
            return;

        case 90: // 'Z'
        case 270: 
            a.layout(0, 0, j1, i1);
            break;
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k = 0;
        b;
        JVM INSTR lookupswitch 4: default 48
    //                   0: 117
    //                   90: 147
    //                   180: 117
    //                   270: 147;
           goto _L1 _L2 _L3 _L2 _L3
_L1:
        int l = 0;
_L9:
        setMeasuredDimension(l, k);
        b;
        JVM INSTR lookupswitch 4: default 104
    //                   0: 177
    //                   90: 196
    //                   180: 217
    //                   270: 239;
           goto _L4 _L5 _L6 _L7 _L8
_L4:
        break; /* Loop/switch isn't completed */
_L8:
        break MISSING_BLOCK_LABEL_239;
_L10:
        a.setRotation(b);
        return;
_L2:
        measureChild(a, i, j);
        l = a.getMeasuredWidth();
        k = a.getMeasuredHeight();
          goto _L9
_L3:
        measureChild(a, j, i);
        l = a.getMeasuredHeight();
        k = a.getMeasuredWidth();
          goto _L9
_L5:
        a.setTranslationX(0.0F);
        a.setTranslationY(0.0F);
          goto _L10
_L6:
        a.setTranslationX(l);
        a.setTranslationY(0.0F);
          goto _L10
_L7:
        a.setTranslationX(l);
        a.setTranslationY(k);
          goto _L10
        a.setTranslationX(0.0F);
        a.setTranslationY(k);
          goto _L10
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
    }
}
