// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.DialogInterface;
import android.util.Log;

// Referenced classes of package com.questvisual.wordlens:
//            a, LangPackInfo, NativeLangMan, c

class b
    implements android.content.DialogInterface.OnClickListener
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i < com.questvisual.wordlens.a.a(a).length)
        {
            String s = com.questvisual.wordlens.a.a(a)[i];
            NativeLangMan.a(new LangPackInfo(com.questvisual.wordlens.a.b(a), s));
        } else
        {
            Log.w("QV", "Clicked on language past end of known source languages. BUG!!");
        }
        if (com.questvisual.wordlens.a.c(a) != null)
        {
            com.questvisual.wordlens.a.c(a).a_();
        }
    }
}
