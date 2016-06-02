// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ViewFlipper;

// Referenced classes of package com.questvisual.wordlens:
//            ay, WLSplashActivity

class av
    implements android.view.View.OnClickListener
{

    private static int b[];
    final WLSplashActivity a;

    av(WLSplashActivity wlsplashactivity)
    {
        a = wlsplashactivity;
        super();
    }

    static int[] a()
    {
        int ai[] = b;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[ay.values().length];
        try
        {
            ai1[ay.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ay.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[ay.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        b = ai1;
        return ai1;
    }

    public void onClick(View view)
    {
        switch (a()[WLSplashActivity.b(a).ordinal()])
        {
        default:
            Log.w("QV", (new StringBuilder("Error, click should not have been possible for state: ")).append(WLSplashActivity.b(a)).toString());
            return;

        case 1: // '\001'
            WLSplashActivity.c(a).showNext();
            WLSplashActivity.a(a, ay.b);
            return;

        case 2: // '\002'
            break;
        }
        if (WLSplashActivity.d(a))
        {
            WLSplashActivity.c(a).showNext();
            WLSplashActivity.a(a, ay.c);
            WLSplashActivity.e(a).setVisibility(8);
            return;
        } else
        {
            WLSplashActivity.a(a);
            return;
        }
    }
}
