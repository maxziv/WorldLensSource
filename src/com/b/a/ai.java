// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import java.io.Closeable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

// Referenced classes of package com.b.a:
//            o

final class ai
{

    static int a(Context context, int i)
    {
        return (int)(0.5F + context.getResources().getDisplayMetrics().density * (float)i);
    }

    static String a(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            o.d("FlurryAgent", (new StringBuilder()).append("Cannot encode '").append(s).append("'").toString());
            return "";
        }
        return s1;
    }

    static String a(String s, int i)
    {
        if (s == null)
        {
            s = "";
        } else
        if (s.length() > i)
        {
            return s.substring(0, i);
        }
        return s;
    }

    static void a(Context context, ImageView imageview, int i, int j)
    {
        imageview.setAdjustViewBounds(true);
        imageview.setMinimumWidth(a(context, i));
        imageview.setMinimumHeight(a(context, j));
        imageview.setMaxWidth(a(context, i));
        imageview.setMaxHeight(a(context, j));
    }

    static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        Throwable throwable;
        throwable;
    }

    static byte[] b(String s)
    {
        byte abyte0[];
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
            messagedigest.update(s.getBytes(), 0, s.length());
            abyte0 = messagedigest.digest();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            o.b("FlurryAgent", (new StringBuilder()).append("Unsupported SHA1: ").append(nosuchalgorithmexception.getMessage()).toString());
            return null;
        }
        return abyte0;
    }
}
