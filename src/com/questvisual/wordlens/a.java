// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.AlertDialog;
import android.content.Context;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

// Referenced classes of package com.questvisual.wordlens:
//            b, LangPackInfo, NativeLangMan, c

public class a
{

    private String a[];
    private String b[];
    private int c;
    private android.app.AlertDialog.Builder d;
    private c e;
    private android.content.DialogInterface.OnClickListener f;

    public a(Context context, LangPackInfo langpackinfo, c c1)
    {
        TreeMap treemap;
        Iterator iterator;
        e = null;
        f = new b(this);
        c = langpackinfo.demoMode;
        e = c1;
        List list = NativeLangMan.d();
        treemap = new TreeMap();
        iterator = list.iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1;
        int i;
        a = new String[treemap.size()];
        b = new String[treemap.size()];
        iterator1 = treemap.values().iterator();
        i = 0;
_L4:
        if (!iterator1.hasNext())
        {
            d = (new android.app.AlertDialog.Builder(context)).setTitle(langpackinfo.getDescription(context, false)).setItems(a, f).setCancelable(false);
            return;
        }
        break MISSING_BLOCK_LABEL_189;
_L2:
        LangPackInfo langpackinfo1 = (LangPackInfo)iterator.next();
        treemap.put(langpackinfo1.getSourceLangName(), langpackinfo1);
          goto _L3
        LangPackInfo langpackinfo2 = (LangPackInfo)iterator1.next();
        a[i] = langpackinfo2.getSourceLangName();
        b[i] = langpackinfo2.srcLang;
        i++;
          goto _L4
    }

    static String[] a(a a1)
    {
        return a1.b;
    }

    static int b(a a1)
    {
        return a1.c;
    }

    static c c(a a1)
    {
        return a1.e;
    }

    public void a()
    {
        AlertDialog alertdialog = d.create();
        alertdialog.setCanceledOnTouchOutside(true);
        alertdialog.show();
    }
}
