// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e.a;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

// Referenced classes of package com.questvisual.wordlens.e.a:
//            g

public class f
{

    protected Context a;
    protected PopupWindow b;
    protected View c;
    protected Drawable d;
    protected WindowManager e;
    protected int f;

    public f(Context context, int i)
    {
        boolean flag = true;
        super();
        d = null;
        f = 0;
        a = context;
        b = new PopupWindow(context);
        f = i;
        PopupWindow popupwindow = b;
        boolean flag1;
        PopupWindow popupwindow1;
        if ((2 & f) != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        popupwindow.setOutsideTouchable(flag1);
        if ((2 & f) != 0)
        {
            b.setTouchInterceptor(new g(this));
        }
        popupwindow1 = b;
        if ((1 & f) == 0)
        {
            flag = false;
        }
        popupwindow1.setTouchable(flag);
        e = (WindowManager)context.getSystemService("window");
    }

    public void a()
    {
        b.dismiss();
    }

    public void a(View view)
    {
        c = view;
        b.setContentView(view);
    }

    protected void f()
    {
    }

    protected void g()
    {
        if (c == null)
        {
            throw new IllegalStateException("setContentView was not called with a view to display.");
        }
        f();
        if (d == null)
        {
            b.setBackgroundDrawable(new BitmapDrawable());
        } else
        {
            b.setBackgroundDrawable(d);
        }
        b.setWidth(-2);
        b.setHeight(-2);
        b.setContentView(c);
    }
}
