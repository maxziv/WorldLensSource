// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.b.a:
//            aj, al, x, ah

final class ag extends RelativeLayout
{

    private aj a;
    private Context b;
    private String c;
    private int d;
    private boolean e;
    private boolean f;

    private static android.widget.RelativeLayout.LayoutParams b()
    {
        return new android.widget.RelativeLayout.LayoutParams(-1, -1);
    }

    private al c()
    {
        this;
        JVM INSTR monitorenter ;
        List list;
        aj aj1 = a;
        Context context = b;
        String as[] = new String[1];
        as[0] = c;
        list = aj1.a(context, Arrays.asList(as), null, d, false);
        if (list.isEmpty()) goto _L2; else goto _L1
_L1:
        al al1;
        al1 = (al)list.get(0);
        al1.setOnClickListener(a);
_L4:
        this;
        JVM INSTR monitorexit ;
        return al1;
        Exception exception;
        exception;
        throw exception;
_L2:
        al1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    final void a()
    {
        if (e) goto _L2; else goto _L1
_L1:
        al al1 = c();
        if (al1 == null) goto _L4; else goto _L3
_L3:
        removeAllViews();
        addView(al1, b());
        al1.a().a(new x((byte)3, a.g()));
        e = true;
_L6:
        f = true;
_L2:
        return;
_L4:
        if (!f)
        {
            TextView textview = new TextView(b);
            textview.setText(aj.b);
            textview.setTextSize(1, 20F);
            addView(textview, b());
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
