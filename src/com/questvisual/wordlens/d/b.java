// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.view.animation.Animation;
import android.widget.ImageView;

// Referenced classes of package com.questvisual.wordlens.d:
//            a

class b
    implements android.view.animation.Animation.AnimationListener
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        com.questvisual.wordlens.d.a.a(a).clearAnimation();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
