// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.a;

import android.os.Build;
import android.util.Log;
import com.questvisual.wordlens.e.a;
import com.questvisual.wordlens.q;

// Referenced classes of package com.questvisual.wordlens.a:
//            g

public class f
{

    public static void a(android.hardware.Camera.Parameters parameters)
    {
        java.util.List list = parameters.getSupportedPreviewFormats();
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        int i = com.questvisual.wordlens.a.g.a(list);
        if (i != -1)
        {
            try
            {
                Log.d("WordLens", (new StringBuilder("'getBestSupportedFormat' available, setting format to: ")).append(i).toString());
                parameters.setPreviewFormat(i);
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_62;
        }
        throw new Exception("Unkown pixel format");
    }

    public static void a(android.hardware.Camera.Parameters parameters, int i, int j)
    {
        if (parameters == null)
        {
            com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Illegal argument passed to pickOptimalPreviewSize, params=null. ")).append(Build.FINGERPRINT).toString(), "");
        } else
        {
            java.util.List list = parameters.getSupportedPreviewSizes();
            if (list == null)
            {
                com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Device not following API!!  getSupportedPreviewSizes returned null! ")).append(Build.FINGERPRINT).toString(), "");
                return;
            }
            android.hardware.Camera.Size size = q.a(list, i, j);
            if (size == null)
            {
                com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Unable to get largest size up to width=")).append(i).append(", height=").append(j).append(", build: ").append(Build.FINGERPRINT).toString(), "");
                return;
            }
            android.hardware.Camera.Size size1 = parameters.getPreviewSize();
            if (size1 == null)
            {
                com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("getPreviewSize() returned null? Illegal device API implementation!!! ")).append(Build.FINGERPRINT).toString(), "");
                return;
            }
            if (size.height != size1.height || size.width != size1.width)
            {
                Log.d("WordLens", (new StringBuilder("getOptimalPreviewSize available, setting size to: ")).append(size.width).append(" x ").append(size.height).toString());
                parameters.setPreviewSize(size.width, size.height);
                return;
            }
        }
    }
}
