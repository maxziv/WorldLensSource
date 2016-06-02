// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class f
{

    private TextView a;
    private View b;
    private Bitmap c;
    private Bitmap d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;

    public f(View view, int l)
    {
        f = -2;
        g = -2;
        h = 0;
        i = 0;
        j = true;
        k = true;
        b = view;
        View view1 = b.findViewById(l);
        if (view1 != null && android/widget/TextView.isAssignableFrom(view1.getClass()))
        {
            a = (TextView)view1;
            return;
        } else
        {
            Log.e("QV", (new StringBuilder("Unable to find a textView for the resource ID: ")).append(l).append(", check your usage of RotatedLayoutFactory.").toString());
            a = null;
            return;
        }
    }

    private void d()
    {
        if (c != null)
        {
            c.recycle();
            c = null;
            System.gc();
        }
        b.setDrawingCacheEnabled(true);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(f, g);
        b.setLayoutParams(layoutparams);
        int l;
        int i1;
        int j1;
        int k1;
        if (h != 0)
        {
            l = android.view.View.MeasureSpec.makeMeasureSpec(h, 0x80000000);
        } else
        if (-2 != f)
        {
            l = android.view.View.MeasureSpec.makeMeasureSpec(f, 0x40000000);
        } else
        {
            l = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        if (i != 0)
        {
            i1 = android.view.View.MeasureSpec.makeMeasureSpec(i, 0x80000000);
        } else
        if (-2 != g)
        {
            i1 = android.view.View.MeasureSpec.makeMeasureSpec(g, 0x40000000);
        } else
        {
            i1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        b.measure(l, i1);
        j1 = b.getMeasuredWidth();
        k1 = b.getMeasuredHeight();
        b.layout(0, 0, j1, k1);
        b.setDrawingCacheQuality(0x100000);
        c = Bitmap.createBitmap(b.getDrawingCache(true));
        b.setDrawingCacheEnabled(false);
        k = false;
        j = true;
    }

    public Bitmap a()
    {
        if (k)
        {
            d();
        }
        return c;
    }

    public void a(int l)
    {
        if (l != h)
        {
            h = l;
            f = -2;
            g = -2;
            k = true;
        }
    }

    public void a(int l, int i1)
    {
        if (l != f || i1 != g)
        {
            f = l;
            g = i1;
            h = 0;
            i = 0;
            k = true;
        }
    }

    public void a(String s)
    {
        while (a == null || s != null && s.equals(a.getText())) 
        {
            return;
        }
        a.setText(s);
        k = true;
    }

    public Bitmap b()
    {
        if (k || c == null)
        {
            d();
        }
        if (j)
        {
            if (d != null)
            {
                d.recycle();
                d = null;
                System.gc();
            }
            int l = c.getWidth();
            int i1 = c.getHeight();
            Matrix matrix = new Matrix();
            matrix.setRotate(e);
            d = Bitmap.createBitmap(c, 0, 0, l, i1, matrix, false);
            j = false;
        }
        return d;
    }

    public void b(int l)
    {
        a.setTextColor(l);
    }

    public View c()
    {
        return b;
    }

    public void c(int l)
    {
        a.setGravity(l);
    }

    public void d(int l)
    {
        if (l != e)
        {
            e = l;
            j = true;
        }
    }
}
