// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.questvisual.wordlens.au;

// Referenced classes of package com.questvisual.wordlens.e.a:
//            f, e, b, d, 
//            c

public class a extends f
{

    private static int m[];
    private static int n[];
    private static int o[];
    private b g;
    private d h;
    private e i;
    private int j;
    private int k;
    private c l;

    public a(Context context, b b1, d d1, e e1)
    {
        this(context, b1, d1, e1, 0);
    }

    public a(Context context, b b1, d d1, e e1, int i1)
    {
        super(context, i1);
        j = 0;
        k = 0;
        l = null;
        g = b1;
        h = d1;
        i = e1;
    }

    private int a(Rect rect, int i1, int j1, int k1)
    {
        c()[i.ordinal()];
        JVM INSTR tableswitch 2 7: default 48
    //                   2 125
    //                   3 197
    //                   4 134
    //                   5 188
    //                   6 149
    //                   7 162;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        int l1;
        int j2;
        int i2 = rect.top;
        j2 = j1 - rect.bottom;
        boolean flag;
        if (i2 > j2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag) goto _L9; else goto _L8
_L8:
        if (i1 > i2)
        {
            l1 = 15;
            c.getLayoutParams().height = i2 - k1;
        } else
        {
            l1 = rect.top - i1;
        }
_L12:
        a(j1, rect.centerX(), flag);
_L10:
        return Math.max(0, l1 + k);
_L2:
        l1 = rect.top;
        continue; /* Loop/switch isn't completed */
_L4:
        l1 = Math.max(0, rect.top - i1);
        continue; /* Loop/switch isn't completed */
_L6:
        l1 = rect.centerY() - i1 / 2;
        continue; /* Loop/switch isn't completed */
_L7:
        l1 = Math.max(0, j1 / 2 - i1 / 2);
        b.setAnimationStyle(au.Animations_PopIntoCenter);
        continue; /* Loop/switch isn't completed */
_L5:
        l1 = rect.bottom;
        continue; /* Loop/switch isn't completed */
_L3:
        l1 = Math.max(0, rect.bottom - i1);
        if (true) goto _L10; else goto _L9
_L9:
        l1 = rect.bottom;
        if (i1 > j2)
        {
            c.getLayoutParams().height = j2;
        }
        if (true) goto _L12; else goto _L11
_L11:
    }

    private void a(int i1, int j1, boolean flag)
    {
        switch (e()[g.ordinal()])
        {
        case 6: // '\006'
        default:
            return;

        case 1: // '\001'
            PopupWindow popupwindow6 = b;
            int i3;
            if (flag)
            {
                i3 = au.Animations_PopUpMenu_Left;
            } else
            {
                i3 = au.Animations_PopDownMenu_Left;
            }
            popupwindow6.setAnimationStyle(i3);
            return;

        case 2: // '\002'
            PopupWindow popupwindow5 = b;
            int l2;
            if (flag)
            {
                l2 = au.Animations_PopUpMenu_Right;
            } else
            {
                l2 = au.Animations_PopDownMenu_Right;
            }
            popupwindow5.setAnimationStyle(l2);
            return;

        case 3: // '\003'
            PopupWindow popupwindow4 = b;
            int k2;
            if (flag)
            {
                k2 = au.Animations_PopUpMenu_Center;
            } else
            {
                k2 = au.Animations_PopDownMenu_Center;
            }
            popupwindow4.setAnimationStyle(k2);
            return;

        case 4: // '\004'
            PopupWindow popupwindow3 = b;
            int j2;
            if (flag)
            {
                j2 = au.Animations_PopUpMenu_Reflect;
            } else
            {
                j2 = au.Animations_PopDownMenu_Reflect;
            }
            popupwindow3.setAnimationStyle(j2);
            return;

        case 5: // '\005'
            break;
        }
        if (j1 <= i1 / 4)
        {
            PopupWindow popupwindow2 = b;
            int i2;
            if (flag)
            {
                i2 = au.Animations_PopUpMenu_Left;
            } else
            {
                i2 = au.Animations_PopDownMenu_Left;
            }
            popupwindow2.setAnimationStyle(i2);
            return;
        }
        if (j1 > i1 / 4 && j1 < 3 * (i1 / 4))
        {
            PopupWindow popupwindow1 = b;
            int l1;
            if (flag)
            {
                l1 = au.Animations_PopUpMenu_Center;
            } else
            {
                l1 = au.Animations_PopDownMenu_Center;
            }
            popupwindow1.setAnimationStyle(l1);
            return;
        }
        PopupWindow popupwindow = b;
        int k1;
        if (flag)
        {
            k1 = au.Animations_PopUpMenu_Right;
        } else
        {
            k1 = au.Animations_PopDownMenu_Right;
        }
        popupwindow.setAnimationStyle(k1);
    }

    private int b(Rect rect, int i1, int j1, int k1)
    {
        d()[h.ordinal()];
        JVM INSTR tableswitch 2 8: default 52
    //                   2 104
    //                   3 122
    //                   4 89
    //                   5 113
    //                   6 137
    //                   7 150
    //                   8 166;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        int l1;
        if (i1 + rect.left > j1)
        {
            l1 = Math.max(0, rect.left - (i1 - k1));
        } else
        if (k1 > i1)
        {
            l1 = rect.centerX() - i1 / 2;
        } else
        {
            l1 = rect.left;
        }
_L10:
        return Math.max(0, l1 + j);
_L4:
        l1 = Math.max(0, rect.left - i1);
        continue; /* Loop/switch isn't completed */
_L2:
        l1 = rect.left;
        continue; /* Loop/switch isn't completed */
_L5:
        l1 = rect.right;
        continue; /* Loop/switch isn't completed */
_L3:
        l1 = Math.max(0, rect.right - i1);
        continue; /* Loop/switch isn't completed */
_L6:
        l1 = rect.centerX() - i1 / 2;
        continue; /* Loop/switch isn't completed */
_L7:
        l1 = Math.max(0, j1 / 2 - i1 / 2);
        continue; /* Loop/switch isn't completed */
_L8:
        l1 = Math.max(0, rect.centerX() - i1);
        if (true) goto _L10; else goto _L9
_L9:
    }

    static int[] c()
    {
        int ai[] = m;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[com.questvisual.wordlens.e.a.e.values().length];
        try
        {
            ai1[e.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[e.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[e.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[e.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[e.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[e.g.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[e.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        m = ai1;
        return ai1;
    }

    static int[] d()
    {
        int ai[] = n;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[com.questvisual.wordlens.e.a.d.values().length];
        try
        {
            ai1[d.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[d.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[d.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[d.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[d.h.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[d.g.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[d.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[d.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        n = ai1;
        return ai1;
    }

    static int[] e()
    {
        int ai[] = o;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[com.questvisual.wordlens.e.a.b.values().length];
        try
        {
            ai1[b.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[b.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[b.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[b.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[b.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[b.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        o = ai1;
        return ai1;
    }

    public void a()
    {
        if (l != null)
        {
            l.a();
            l = null;
        }
        super.a();
    }

    public void a(int i1, int j1)
    {
        j = a.getResources().getDimensionPixelOffset(i1);
        k = a.getResources().getDimensionPixelOffset(j1);
    }

    public void a(View view)
    {
        view.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
        super.a(view);
    }

    public void a(View view, long l1)
    {
        g();
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        Rect rect = new Rect(ai[0], ai[1], ai[0] + view.getWidth(), ai[1] + view.getHeight());
        c.measure(-2, -2);
        int i1 = c.getMeasuredHeight();
        int j1 = c.getMeasuredWidth();
        int k1 = e.getDefaultDisplay().getWidth();
        int i2 = e.getDefaultDisplay().getHeight();
        int j2 = b(rect, j1, k1, view.getWidth());
        int k2 = a(rect, i1, i2, view.getHeight());
        b.showAtLocation(view, 0, j2, k2);
        if (l1 > 0L)
        {
            l = new c(this, null);
            c.postDelayed(l, l1);
        }
    }

    public void b(View view)
    {
        a(view, -1L);
    }

    public boolean b()
    {
        return b.isShowing();
    }
}
