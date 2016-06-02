// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;


public class c
{

    private static final Object a = new Object();
    private boolean b;
    private int c[];
    private Object d[];
    private int e;

    public c()
    {
        this(10);
    }

    public c(int i)
    {
        b = false;
        int j = d(i);
        c = new int[j];
        d = new Object[j];
        e = 0;
    }

    static int c(int i)
    {
        int j = 4;
        do
        {
label0:
            {
                if (j < 32)
                {
                    if (i > -12 + (1 << j))
                    {
                        break label0;
                    }
                    i = -12 + (1 << j);
                }
                return i;
            }
            j++;
        } while (true);
    }

    private void c()
    {
        int i = e;
        int ai[] = c;
        Object aobj[] = d;
        int j = 0;
        int k = 0;
        for (; j < i; j++)
        {
            Object obj = aobj[j];
            if (obj == a)
            {
                continue;
            }
            if (j != k)
            {
                ai[k] = ai[j];
                aobj[k] = obj;
            }
            k++;
        }

        b = false;
        e = k;
    }

    static int d(int i)
    {
        return c(i * 4) / 4;
    }

    public int a()
    {
        if (b)
        {
            c();
        }
        return e;
    }

    public int a(int i)
    {
        if (b)
        {
            c();
        }
        return c[i];
    }

    public Object b(int i)
    {
        if (b)
        {
            c();
        }
        return d[i];
    }

    public void b()
    {
        int i = e;
        Object aobj[] = d;
        for (int j = 0; j < i; j++)
        {
            aobj[j] = null;
        }

        e = 0;
        b = false;
    }

}
