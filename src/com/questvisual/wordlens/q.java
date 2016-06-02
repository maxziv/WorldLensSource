// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import java.io.PrintStream;
import java.util.Iterator;
import java.util.List;

public class q
{

    public static android.hardware.Camera.Size a(List list)
    {
        Iterator iterator = list.iterator();
        android.hardware.Camera.Size size = null;
        do
        {
            android.hardware.Camera.Size size1;
            do
            {
                if (!iterator.hasNext())
                {
                    return size;
                }
                size1 = (android.hardware.Camera.Size)iterator.next();
            } while (size != null && (size.width >= size1.width || size.width >= size1.width));
            size = size1;
        } while (true);
    }

    public static android.hardware.Camera.Size a(List list, float f, int i)
    {
        int j;
        int k;
        android.hardware.Camera.Size size;
        if (f > 1.0F)
        {
            j = i;
        } else
        {
            j = (int)(f * (float)i);
        }
        if (f > 1.0F)
        {
            k = (int)((float)i / f);
        } else
        {
            k = i;
        }
        size = b(list, j, k);
        if (size == null)
        {
            size = a(list, j, k);
        }
        if (size == null)
        {
            System.out.println((new StringBuilder("Unable to find closest preview size for ar=")).append(f).append(", maxDim=").append(i).append(", width=").append(j).append(", height=").append(k).toString());
        }
        return size;
    }

    public static android.hardware.Camera.Size a(List list, int i, int j)
    {
        Iterator iterator = list.iterator();
        android.hardware.Camera.Size size = null;
        do
        {
            android.hardware.Camera.Size size1;
            do
            {
                if (!iterator.hasNext())
                {
                    return size;
                }
                size1 = (android.hardware.Camera.Size)iterator.next();
            } while (i > 0 && j > 0 && (size1.width > i || size1.height > j) || size != null && (size.width > size1.width || size.width > size1.width));
            size = size1;
        } while (true);
    }

    public static String a(int i)
    {
        switch (i)
        {
        default:
            return (new StringBuilder("UNKNOWN: ")).append(i).toString();

        case 0: // '\0'
            return "ROTATION_0";

        case 1: // '\001'
            return "ROTATION_90";

        case 2: // '\002'
            return "ROTATION_180";

        case 3: // '\003'
            return "ROTATION_270";
        }
    }

    public static String a(android.hardware.Camera.Size size)
    {
        StringBuilder stringbuilder = new StringBuilder("Size: ");
        String s;
        if (size == null)
        {
            s = null;
        } else
        {
            s = (new StringBuilder(String.valueOf(size.width))).append(" x ").append(size.height).toString();
        }
        return stringbuilder.append(s).toString();
    }

    public static int[] a(float f, int i, int j, int k)
    {
        int l = Math.min(i, k);
        int i1 = Math.min(j, k);
        int j1;
        int k1;
        if ((float)l / (float)i1 > f)
        {
            k1 = 32 * (i1 / 32);
            j1 = 32 * ((int)(f * (float)k1) / 32);
        } else
        {
            j1 = 32 * (l / 32);
            k1 = 32 * Math.round((float)j1 / f / 32F);
        }
        if (k1 > j)
        {
            k1 -= 32;
        }
        if (j1 > i)
        {
            j1 -= 32;
        }
        return (new int[] {
            j1, k1
        });
    }

    public static int b(int i)
    {
        switch (i)
        {
        default:
            return 0;

        case 1: // '\001'
            return 90;

        case 2: // '\002'
            return 180;

        case 3: // '\003'
            return 270;
        }
    }

    public static android.hardware.Camera.Size b(List list, int i, int j)
    {
        Iterator iterator = list.iterator();
        android.hardware.Camera.Size size = null;
        do
        {
            android.hardware.Camera.Size size1;
            do
            {
                if (!iterator.hasNext())
                {
                    return size;
                }
                size1 = (android.hardware.Camera.Size)iterator.next();
            } while (i > 0 && j > 0 && (size1.width < i || size1.height < j) || size != null && (size.width < size1.width || size.width < size1.width));
            size = size1;
        } while (true);
    }
}
