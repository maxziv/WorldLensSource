// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ViewFlipper;

public class QVViewFlipper extends ViewFlipper
{

    public QVViewFlipper(Context context)
    {
        super(context);
    }

    public QVViewFlipper(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        super.stopFlipping();
        return;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Log.w("QV", "Android project issue 6191 workaround.");
        super.stopFlipping();
        return;
        Exception exception;
        exception;
        super.stopFlipping();
        throw exception;
    }
}
