// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util;

import android.util.Log;

public class b
{

    public static int a(int i, int j, int k)
    {
        if (i > k)
        {
            return k;
        }
        if (i < j)
        {
            return j;
        } else
        {
            return i;
        }
    }

    public static int a(byte abyte0[], int i)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Null data to bytesToInt");
        }
        if (i + 4 > abyte0.length)
        {
            throw new IllegalArgumentException((new StringBuilder("Incorrect length! offset=")).append(i).append(" out of bounds bytesToInt").toString());
        } else
        {
            return 0xff000000 & abyte0[i + 3] << 24 | 0xff0000 & abyte0[i + 2] << 16 | 0xff00 & abyte0[i + 1] << 8 | 0xff & abyte0[i];
        }
    }

    public static String a(byte abyte0[])
    {
        return a(abyte0, true);
    }

    public static String a(byte abyte0[], boolean flag)
    {
        if (abyte0 == null)
        {
            return "byte[] null";
        }
        String s;
        StringBuilder stringbuilder;
        int i;
        if (flag)
        {
            s = "Bytes: [";
        } else
        {
            s = "";
        }
        stringbuilder = new StringBuilder(s);
        i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                if (flag)
                {
                    stringbuilder.append("]");
                }
                return stringbuilder.toString();
            }
            if (i != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Integer.toHexString(0xff & abyte0[i]));
            i++;
        } while (true);
    }

    public static void a(boolean flag)
    {
        if (!flag)
        {
            throw new AssertionError();
        } else
        {
            return;
        }
    }

    public static float b(byte abyte0[], int i)
    {
        int j = a(abyte0, i);
        float f;
        try
        {
            f = Float.intBitsToFloat(j);
        }
        catch (Exception exception)
        {
            Log.w("QV", (new StringBuilder("Unable to parse float from int: ")).append(j).toString());
            return 0.0F;
        }
        return f;
    }

    public static double c(byte abyte0[], int i)
    {
        long l = d(abyte0, i);
        double d1;
        try
        {
            d1 = Double.longBitsToDouble(l);
        }
        catch (Exception exception)
        {
            Log.w("QV", (new StringBuilder("Unable to parse double from long: ")).append(l).toString());
            return 0.0D;
        }
        return d1;
    }

    public static long d(byte abyte0[], int i)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Null data to bytesToLong");
        }
        if (i + 8 > abyte0.length)
        {
            throw new IllegalArgumentException((new StringBuilder("Incorrect length! offset=")).append(i).append(" out of bounds bytesToLong").toString());
        } else
        {
            return 0xff00000000000000L & (long)abyte0[i + 7] << 56 | 0xff000000000000L & (long)abyte0[i + 6] << 48 | 0xff0000000000L & (long)abyte0[i + 5] << 40 | 0xff00000000L & (long)abyte0[i + 4] << 32 | 0xff000000L & (long)abyte0[i + 3] << 24 | 0xff0000L & (long)abyte0[i + 2] << 16 | 65280L & (long)abyte0[i + 1] << 8 | 255L & (long)abyte0[i + 0];
        }
    }
}
