// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package com.questvisual.wordlens:
//            LangPackInfo, WordLensActivity

class cd
    implements android.content.DialogInterface.OnClickListener
{

    final WordLensActivity a;
    private List b;

    public cd(WordLensActivity wordlensactivity, List list)
    {
        a = wordlensactivity;
        super();
        b = null;
        b = list;
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i < b.size())
        {
            LangPackInfo langpackinfo = (LangPackInfo)b.get(i);
            WordLensActivity.a(a, langpackinfo);
            return;
        } else
        {
            WordLensActivity.a(a, false);
            return;
        }
    }
}
