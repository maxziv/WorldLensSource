// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.e;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.questvisual.util.ui.c;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class b
{

    private static int a = 0x80000000;
    private static int b = 0x80000000;
    private static int c = 0x80000000;

    public static String a()
    {
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -t 10000 -v threadtime").getInputStream()));
        stringbuilder = new StringBuilder("\nWord Lens Logcat Dump:\n\n");
_L1:
        String s = bufferedreader.readLine();
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        return stringbuilder.toString();
        stringbuilder.append(s);
        stringbuilder.append("\n");
          goto _L1
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return null;
    }

    public static String a(Activity activity)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("\n\n\nTroubleshooting Information:\nThe information below will help us solve problems with Word Lens: \n");
        stringbuilder.append((new StringBuilder(String.valueOf(b()))).append("\n").toString());
        stringbuilder.append((new StringBuilder("Locale: ")).append(Locale.getDefault().toString()).append("\n").toString());
        stringbuilder.append((new StringBuilder("CameraInfo.Orientation: ")).append(a).append("\n").toString());
        stringbuilder.append((new StringBuilder("UserCameraCompensation: ")).append(b).append("\n").toString());
        stringbuilder.append((new StringBuilder("InterfaceOrientation: ")).append(c).append("\n").toString());
        stringbuilder.append((new StringBuilder(String.valueOf(b(activity)))).append("\n").toString());
        android.content.res.Configuration configuration = activity.getResources().getConfiguration();
        stringbuilder.append((new StringBuilder("Config: ")).append(configuration).append("\n").toString());
        Display display = activity.getWindowManager().getDefaultDisplay();
        stringbuilder.append((new StringBuilder("DisplayRotation: ")).append(display.getRotation()).append("\n").toString());
        stringbuilder.append((new StringBuilder("Current Locale: ")).append(Locale.getDefault()).append("\n").toString());
        String s = "UNAVAILABLE";
        try
        {
            s = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionName;
        }
        catch (Exception exception) { }
        stringbuilder.append((new StringBuilder("WordLens Version: ")).append(s).toString());
        return stringbuilder.toString();
    }

    public static void a(int i)
    {
        c = i;
    }

    public static void a(int i, int j)
    {
        a = i;
        b = j;
    }

    public static String b()
    {
        return (new StringBuilder("build.product = ")).append(Build.PRODUCT).append("\n").append("build.device").append(" = ").append(Build.DEVICE).append("\n").append("build.board").append(" = ").append(Build.BOARD).append("\n").append("build.model").append(" = ").append(Build.MODEL).append("\n").append("build.manufacturer").append(" = ").append(Build.MANUFACTURER).append("\n").append("build.id").append(" = ").append(Build.ID).append("\n").append("build.sdk.version").append(" = (").append(android.os.Build.VERSION.CODENAME).append(",").append(android.os.Build.VERSION.INCREMENTAL).append(",").append(android.os.Build.VERSION.RELEASE).append(",").append(android.os.Build.VERSION.SDK_INT).append(")").toString();
    }

    private static String b(Activity activity)
    {
        StringBuilder stringbuilder;
        int i;
        stringbuilder = new StringBuilder("NaturalOrientation: ");
        i = com.questvisual.util.ui.c.a(activity);
        i;
        JVM INSTR tableswitch 0 3: default 48
    //                   0 79
    //                   1 89
    //                   2 99
    //                   3 109;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        stringbuilder.append("ORIENTATION_UNKNOWN: ");
        stringbuilder.append((new StringBuilder(String.valueOf(i))).toString());
_L7:
        return stringbuilder.toString();
_L2:
        stringbuilder.append("ORIENTATION_UNDEFINED");
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuilder.append("ORIENTATION_PORTRAIT");
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.append("ORIENTATION_LANDSCAPE");
        continue; /* Loop/switch isn't completed */
_L5:
        stringbuilder.append("ORIENTATION_SQUARE");
        if (true) goto _L7; else goto _L6
_L6:
    }

}
