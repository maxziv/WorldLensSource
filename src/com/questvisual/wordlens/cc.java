// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity, cb, NativeGLRenderer

class cc
    implements android.view.View.OnTouchListener
{

    final WordLensActivity a;
    private long b;
    private Context c;

    public cc(WordLensActivity wordlensactivity, Context context)
    {
        a = wordlensactivity;
        super();
        b = 0x7fffffffffffffffL;
        c = context;
    }

    private void a(boolean flag)
    {
        WordLensActivity.c(a, flag);
        NativeGLRenderer nativeglrenderer = WordLensActivity.g(a).b;
        boolean flag1;
        if (WordLensActivity.h(a))
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        nativeglrenderer.a(flag1);
        WordLensActivity.i(a);
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        switch (motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
            a(true);
            com.questvisual.wordlens.e.a.a("wl_hide_trans", true);
            view.setSelected(true);
            return true;

        case 1: // '\001'
            a(false);
            break;
        }
        com.questvisual.wordlens.e.a.b("wl_hide_trans");
        view.setSelected(false);
        return true;
    }
}
