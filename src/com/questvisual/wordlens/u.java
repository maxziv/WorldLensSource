// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;

// Referenced classes of package com.questvisual.wordlens:
//            s

class u
    implements android.view.View.OnClickListener
{

    final s a;

    private u(s s1)
    {
        a = s1;
        super();
    }

    u(s s1, u u1)
    {
        this(s1);
    }

    public void onClick(View view)
    {
        android.content.SharedPreferences.Editor editor = a.j().getSharedPreferences("word.lens", 0).edit();
        editor.remove("key.camera.orientation.compensation.v2");
        editor.commit();
        a.a();
    }
}
