// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.View;
import java.util.Comparator;

// Referenced classes of package android.support.v4.view:
//            aq

class aw
    implements Comparator
{

    aw()
    {
    }

    public int a(View view, View view1)
    {
        aq aq1 = (aq)view.getLayoutParams();
        aq aq2 = (aq)view1.getLayoutParams();
        if (aq1.a != aq2.a)
        {
            return !aq1.a ? -1 : 1;
        } else
        {
            return aq1.e - aq2.e;
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((View)obj, (View)obj1);
    }
}
