// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.AlertDialog;
import android.view.View;
import com.questvisual.wordlens.e.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity, NativeLangMan, at, cd, 
//            LangPackInfo

class bk
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bk(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
        if (com.questvisual.wordlens.WordLensActivity.a(a) != null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        String as[];
        Iterator iterator;
        int i;
        arraylist = new ArrayList();
        com.questvisual.wordlens.NativeLangMan.a(a, arraylist, null, true);
        as = new String[1 + arraylist.size()];
        iterator = arraylist.iterator();
        i = 0;
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        as[i] = a.getString(at.more_languages);
        cd cd1 = new cd(a, arraylist);
        com.questvisual.wordlens.WordLensActivity.a(a, (new android.app.AlertDialog.Builder(a)).setTitle(at.pick_a_language).setItems(as, cd1).create());
        com.questvisual.wordlens.WordLensActivity.a(a).setOnDismissListener(WordLensActivity.b(a));
        com.questvisual.wordlens.WordLensActivity.a(a).setCanceledOnTouchOutside(true);
        com.questvisual.wordlens.WordLensActivity.a(a).show();
        com.questvisual.wordlens.e.a.a("wl_lang_picker_popup");
_L2:
        return;
_L4:
        LangPackInfo langpackinfo = (LangPackInfo)iterator.next();
        int j = i + 1;
        as[i] = langpackinfo.getDescription(a);
        i = j;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
