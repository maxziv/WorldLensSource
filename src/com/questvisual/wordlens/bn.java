// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem, WordLensActivity

class bn
    implements android.content.DialogInterface.OnClickListener
{

    final WordLensActivity a;
    private final SharedPreferences b;

    bn(WordLensActivity wordlensactivity, SharedPreferences sharedpreferences)
    {
        a = wordlensactivity;
        b = sharedpreferences;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        b.edit().putBoolean("key.user.approve.flurry", true).commit();
        com.questvisual.wordlens.WordLensSystem.a(a, true);
        com.questvisual.wordlens.e.a.a(b);
    }
}
