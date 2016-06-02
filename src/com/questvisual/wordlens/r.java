// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.util.Log;
import com.questvisual.wordlens.a.h;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            ap

public class r
    implements h
{

    private Context a;
    private SharedPreferences b;
    private int c;
    private int d;

    public r(Context context)
    {
        a = null;
        b = null;
        c = 3;
        d = 0;
        a = context;
        b = a.getSharedPreferences("word.lens", 0);
        c = a.getResources().getInteger(ap.high_res_interval_count_threshold);
        d = 0;
    }

    public void a(float f, float f1)
    {
        if (f > 2.0F * f1)
        {
            d = 1 + d;
        } else
        {
            d = 0;
        }
        if (!b.getBoolean("key.device.is.high.res.capable", false) && d > c)
        {
            Log.i("QV", "FPS limiter has consistently dropped frames. Device is likely high-res capable.");
            b.edit().putBoolean("key.device.is.high.res.capable", true).commit();
            com.questvisual.wordlens.e.a.a();
        }
    }
}
