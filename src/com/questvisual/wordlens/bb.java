// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.DialogInterface;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class bb
    implements android.content.DialogInterface.OnClickListener
{

    final WordLensActivity a;

    bb(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        a.finish();
    }
}