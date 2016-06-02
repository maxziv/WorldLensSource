// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.questvisual.util.a;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity, cb, NativeGLRenderer

class cf extends OrientationEventListener
{

    final WordLensActivity a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    public cf(WordLensActivity wordlensactivity, Context context, int i)
    {
        a = wordlensactivity;
        super(context);
        b = 0;
        c = 0;
        d = -1;
        e = true;
        c = i;
    }

    static int a(cf cf1)
    {
        return cf1.c;
    }

    private void a(int i)
    {
        int j = com.questvisual.util.a.a(i, 360);
        int k;
        int l;
        int i1;
        boolean flag;
        if (j >= 0)
        {
            k = com.questvisual.util.a.b(b, j);
        } else
        {
            k = 0;
        }
        if (WordLensActivity.d(a) != null)
        {
            l = a.getWindowManager().getDefaultDisplay().getRotation();
        } else
        {
            l = d;
        }
        if (l != d);
        i1 = Math.abs(k);
        flag = false;
        if (i1 > 65)
        {
            flag = true;
        }
        if (flag)
        {
            if (-1 != i)
            {
                b = com.questvisual.util.a.a(j);
            }
            d = l;
            b(com.questvisual.util.a.a(-b, 360));
        }
    }

    private void b(int i)
    {
        Log.d("QV", (new StringBuilder("interfaceOrientationChanged: prevDegCW: ")).append(c).append(", newDegCW: ").append(i).toString());
        if (!WordLensActivity.j(a))
        {
            if (!WordLensActivity.n(a))
            {
                com.questvisual.wordlens.WordLensActivity.a(a, i);
            }
            if (WordLensActivity.o(a) != null)
            {
                WordLensActivity wordlensactivity1 = a;
                WordLensActivity wordlensactivity;
                boolean flag;
                int k;
                if (WordLensActivity.j(a))
                {
                    k = 0;
                } else
                {
                    k = i;
                }
                WordLensActivity.b(wordlensactivity1, k);
            }
            if (WordLensActivity.p(a) != null)
            {
                wordlensactivity = a;
                flag = WordLensActivity.j(a);
                int j = 0;
                if (!flag)
                {
                    j = i;
                }
                WordLensActivity.c(wordlensactivity, j);
            }
            if (WordLensActivity.q(a).getVisibility() == 0)
            {
                WordLensActivity.q(a).a(i);
            }
            WordLensActivity.q(a).setCameraPanelIconRotation(i);
            WordLensActivity.g(a).b.a(i);
            WordLensActivity.r(a);
        }
        c = i;
    }

    public void a()
    {
        d = -1;
    }

    public boolean b()
    {
        return e;
    }

    public void disable()
    {
        e = false;
        super.disable();
    }

    public void enable()
    {
        e = true;
        super.enable();
    }

    public void onOrientationChanged(int i)
    {
        if (WordLensActivity.j(a))
        {
            WordLensActivity.m(a);
            return;
        } else
        {
            a(i);
            return;
        }
    }
}
