// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util.ui;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;

public class c
{

    public static int a(Activity activity)
    {
        Configuration configuration = activity.getResources().getConfiguration();
        int i = activity.getWindowManager().getDefaultDisplay().getRotation();
        return (i != 0 && i != 2 || configuration.orientation != 2) && (i != 1 && i != 3 || configuration.orientation != 1) ? 1 : 2;
    }

    public static int b(Activity activity)
    {
        int i;
        int j;
        i = a(activity);
        j = activity.getWindowManager().getDefaultDisplay().getRotation();
        i;
        JVM INSTR tableswitch 0 3: default 48
    //                   0 166
    //                   1 202
    //                   2 88
    //                   3 202;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        byte byte0;
        Log.w("QV", (new StringBuilder("Cannot determine orientationToRequest, [deviceNatural,displayRotation]=[")).append(i).append(",").append(j).append("]").toString());
        byte0 = -1;
_L5:
        return byte0;
_L4:
        byte0 = 0;
        switch (j)
        {
        default:
            Log.w("QV", (new StringBuilder("Cannot determine orientationToRequest, [deviceNatural,displayRotation]=[")).append(i).append(",").append(j).append("]").toString());
            return -1;

        case 1: // '\001'
            return 9;

        case 2: // '\002'
            return 8;

        case 3: // '\003'
            return 1;

        case 0: // '\0'
            break;
        }
        if (true) goto _L5; else goto _L2
_L2:
        Log.w("QV", (new StringBuilder("Orientation undefined. Defaulting to portrait [deviceNatural,displayRotation]=[")).append(i).append(",").append(j).append("]").toString());
_L3:
        byte0 = 0;
        switch (j)
        {
        default:
            Log.w("QV", (new StringBuilder("Cannot determine orientationToRequest, [deviceNatural,displayRotation]=[")).append(i).append(",").append(j).append("]").toString());
            return -1;

        case 0: // '\0'
            return 1;

        case 2: // '\002'
            return 9;

        case 3: // '\003'
            return 8;

        case 1: // '\001'
            break;
        }
        if (true) goto _L5; else goto _L6
_L6:
    }
}
