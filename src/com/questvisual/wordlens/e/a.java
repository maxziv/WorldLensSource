// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import com.b.a.f;
import com.questvisual.wordlens.WordLensSystem;
import com.questvisual.wordlens.at;
import java.util.HashMap;
import java.util.Map;

public class a
{

    public static void a()
    {
        if (WordLensSystem.d())
        {
            a("DEVICE_HIGH_RES_CANDIDATE", b());
        }
    }

    public static void a(int i)
    {
        if (WordLensSystem.d())
        {
            HashMap hashmap = new HashMap();
            hashmap.put("rotation_compensation_mapping", (new StringBuilder(String.valueOf(Build.DEVICE))).append("___").append(Integer.toString(i)).toString());
            a("CAMERA_ROTATION_COMPENSATION_NEEDED", ((Map) (hashmap)));
        }
    }

    public static void a(Context context)
    {
        if (context == null)
        {
            Log.d("QV", "FlurryHelper.onEndSession called with null context?", new Throwable());
        }
        if (WordLensSystem.d())
        {
            f.b(true);
            f.c(false);
            f.a(context, context.getString(at.flurry_key));
        }
    }

    public static void a(SharedPreferences sharedpreferences)
    {
        if (sharedpreferences != null)
        {
            int i = sharedpreferences.getInt("key.camera.orientation.compensation.v2", 0);
            if (i != 0)
            {
                a(i);
            }
            if (sharedpreferences.getBoolean("key.device.is.high.res.capable", false))
            {
                a();
            }
        }
    }

    public static void a(String s)
    {
        if (WordLensSystem.d())
        {
            f.a(s);
        }
    }

    public static void a(String s, String s1, String s2)
    {
        Log.e("QV", (new StringBuilder(String.valueOf(s))).append(": ").append(s1).toString());
        if (WordLensSystem.d())
        {
            f.a(s, s1, s2);
        }
    }

    public static void a(String s, Map map)
    {
        if (WordLensSystem.d())
        {
            f.a(s, map);
        }
    }

    public static void a(String s, boolean flag)
    {
        if (WordLensSystem.d())
        {
            f.a(s, flag);
        }
    }

    private static Map b()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("build.product", Build.PRODUCT);
        hashmap.put("build.device", Build.DEVICE);
        hashmap.put("build.board", Build.BOARD);
        hashmap.put("build.model", Build.MODEL);
        hashmap.put("build.manufacturer", Build.MANUFACTURER);
        hashmap.put("build.id", Build.ID);
        return hashmap;
    }

    public static void b(Context context)
    {
        if (context == null)
        {
            Log.d("QV", "FlurryHelper.onEndSession called with null context?", new Throwable());
        }
        f.a(context);
    }

    public static void b(String s)
    {
        if (WordLensSystem.d())
        {
            f.b(s);
        }
    }

    public static void c(Context context)
    {
        int i = context.getSharedPreferences("word.lens", 0).getInt("key.camera.orientation.compensation.v2", 0);
        if (i != 0)
        {
            a(i);
        }
    }
}
