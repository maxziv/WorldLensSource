// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.b.a:
//            ah, w, ak, a, 
//            o, ai, u, aj

final class al extends RelativeLayout
{

    private aj a;
    private ah b;
    private int c;

    public al(Context context, aj aj1, ah ah1, w w1, int i, boolean flag)
    {
        ak ak1;
        super(context);
        a = aj1;
        b = ah1;
        ak1 = ah1.c;
        c = i;
        c;
        JVM INSTR tableswitch 1 2: default 52
    //                   1 73
    //                   2 58;
           goto _L1 _L2 _L3
_L1:
        setFocusable(true);
        return;
_L3:
        if (flag)
        {
            a(context, w1, ak1, false);
        } else
        {
            a(context, w1, ak1, true);
        }
_L2:
        if (flag)
        {
            a(context, w1, ak1, false);
        } else
        {
            a(context, w1, ak1, true);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void a(Context context, w w1, ak ak1, boolean flag)
    {
        setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        u u1 = w1.d;
        ImageView imageview = new ImageView(context);
        imageview.setId(1);
        a a1 = ak1.h;
        if (a1 != null)
        {
            byte abyte1[] = a1.e;
            Bitmap bitmap1 = BitmapFactory.decodeByteArray(abyte1, 0, abyte1.length);
            if (bitmap1 == null)
            {
                o.a("FlurryAgent", (new StringBuilder()).append("Ad with bad image: ").append(ak1.d).append(", data: ").append(abyte1).toString());
            }
            if (bitmap1 != null)
            {
                Bitmap bitmap2 = Bitmap.createBitmap(bitmap1.getWidth(), bitmap1.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap2);
                Paint paint = new Paint();
                Rect rect = new Rect(0, 0, bitmap1.getWidth(), bitmap1.getHeight());
                RectF rectf = new RectF(rect);
                float f = ai.a(context, 8);
                paint.setAntiAlias(true);
                canvas.drawARGB(0, 0, 0, 0);
                paint.setColor(0xff000000);
                canvas.drawRoundRect(rectf, f, f, paint);
                paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
                canvas.drawBitmap(bitmap1, rect, rect, paint);
                a a2;
                TextView textview;
                TextView textview1;
                android.widget.RelativeLayout.LayoutParams layoutparams;
                int i;
                android.widget.RelativeLayout.LayoutParams layoutparams1;
                android.widget.RelativeLayout.LayoutParams layoutparams2;
                android.widget.RelativeLayout.LayoutParams layoutparams3;
                byte abyte0[];
                Bitmap bitmap;
                Object obj;
                Bitmap bitmap3;
                if (Integer.parseInt(android.os.Build.VERSION.SDK) > 4)
                {
                    BlurMaskFilter blurmaskfilter = new BlurMaskFilter(3F, android.graphics.BlurMaskFilter.Blur.OUTER);
                    Paint paint1 = new Paint();
                    paint1.setMaskFilter(blurmaskfilter);
                    int ai1[] = new int[2];
                    bitmap3 = bitmap2.extractAlpha(paint1, ai1).copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                    (new Canvas(bitmap3)).drawBitmap(bitmap2, -ai1[0], -ai1[1], null);
                } else
                {
                    bitmap3 = bitmap2;
                }
                imageview.setImageBitmap(bitmap3);
                ai.a(context, imageview, ai.a(context, u1.m), ai.a(context, u1.n));
                imageview.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            }
        }
        a2 = a.a(u1.c);
        if (a2 != null)
        {
            abyte0 = a2.e;
            bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
            if (NinePatch.isNinePatchChunk(bitmap.getNinePatchChunk()))
            {
                obj = new NinePatchDrawable(bitmap, bitmap.getNinePatchChunk(), new Rect(0, 0, 0, 0), null);
            } else
            {
                obj = new BitmapDrawable(bitmap);
            }
            setBackgroundDrawable(((android.graphics.drawable.Drawable) (obj)));
        }
        textview = new TextView(context);
        textview.setId(5);
        textview.setPadding(0, 0, 0, 0);
        textview1 = new TextView(context);
        textview1.setId(3);
        textview1.setPadding(0, 0, 0, 0);
        if (flag)
        {
            textview.setTextColor(u1.f);
            textview.setTextSize(u1.e);
            textview.setText(new String((new StringBuilder()).append("\u2022 ").append(u1.b).toString()));
            textview.setTypeface(Typeface.create(u1.d, 0));
            textview1.setTextColor(u1.i);
            textview1.setTextSize(u1.h);
            textview1.setTypeface(Typeface.create(u1.g, 0));
            textview1.setText(ak1.d);
        } else
        {
            textview.setId(3);
            textview.setText(ak1.d);
            textview.setTextColor(u1.i);
            textview.setTextSize(u1.h);
            textview.setTypeface(Typeface.create(u1.g, 0));
            textview1.setId(4);
            textview1.setText(ak1.c);
            textview1.setTextColor(u1.l);
            textview1.setTextSize(u1.k);
            textview1.setTypeface(Typeface.create(u1.j, 0));
        }
        setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        addView(new ImageView(context), layoutparams);
        i = u1.q - (u1.o << 1) - u1.m;
        layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(9);
        layoutparams1.setMargins(u1.o, u1.p, i, 0);
        addView(imageview, layoutparams1);
        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams2.addRule(6, imageview.getId());
        layoutparams2.addRule(1, imageview.getId());
        layoutparams2.setMargins(0, 0, 0, 0);
        addView(textview, layoutparams2);
        layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams3.addRule(1, imageview.getId());
        layoutparams3.addRule(3, textview.getId());
        layoutparams3.setMargins(0, -2, 0, 0);
        addView(textview1, layoutparams3);
    }

    final ah a()
    {
        return b;
    }

    final void a(ah ah1)
    {
        b = ah1;
    }
}
