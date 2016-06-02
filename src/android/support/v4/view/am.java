// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import java.util.Comparator;

// Referenced classes of package android.support.v4.view:
//            ap

final class am
    implements Comparator
{

    am()
    {
    }

    public int a(ap ap1, ap ap2)
    {
        return ap1.b - ap2.b;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((ap)obj, (ap)obj1);
    }
}
