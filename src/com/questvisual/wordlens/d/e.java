// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.DisplayMetrics;
import android.view.View;

public class e
{

    private View a;
    private int b;

    public e(View view)
    {
        a(view);
    }

    public Bitmap a(int i)
    {
        View view = a.findViewById(i);
        if (view == null)
        {
            return null;
        }
        a.setDrawingCacheEnabled(true);
        view.setDrawingCacheEnabled(true);
        if (view.willNotCacheDrawing())
        {
            view.setWillNotCacheDrawing(false);
        }
        view.setEnabled(true);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        a.setLayoutParams(layoutparams);
        int j = a.getResources().getDisplayMetrics().widthPixels;
        a.measure(android.view.View.MeasureSpec.makeMeasureSpec(j, 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        int k = a.getMeasuredWidth();
        int l = a.getMeasuredHeight();
        a.layout(0, 0, k, l);
        a.setDrawingCacheQuality(0x100000);
        Bitmap bitmap = view.getDrawingCache(true);
        if (bitmap == null)
        {
            view.getMeasuredWidth();
            view.getMeasuredHeight();
            return null;
        } else
        {
            Bitmap bitmap1 = Bitmap.createBitmap(bitmap);
            int i1 = bitmap1.getWidth();
            int j1 = bitmap1.getHeight();
            Matrix matrix = new Matrix();
            matrix.setRotate(b);
            Bitmap bitmap2 = Bitmap.createBitmap(bitmap1, 0, 0, i1, j1, matrix, false);
            a.setDrawingCacheEnabled(false);
            view.setDrawingCacheEnabled(false);
            return bitmap2;
        }
    }

    public void a(View view)
    {
        a = view;
    }

    public void b(int i)
    {
        b = i;
    }
}
