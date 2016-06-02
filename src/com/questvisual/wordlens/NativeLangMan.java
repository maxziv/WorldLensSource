// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.questvisual.wordlens.e.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.questvisual.wordlens:
//            al, LangPackInfo, WordLensSystem, at

public class NativeLangMan
{

    private static Context a = null;
    private static Map b = null;
    private static boolean c = false;
    private static volatile LangPackInfo d = null;
    private static Set e = null;

    public NativeLangMan()
    {
    }

    private static native List GetAllAvailableLanguagesNative();

    private static native LangPackInfo GetCurrentLangInfoNative();

    private static native boolean SetCurrentLangNative(LangPackInfo langpackinfo);

    public static LangPackInfo a()
    {
        return GetCurrentLangInfoNative();
    }

    public static void a(Context context)
    {
        a = context;
        c = context.getResources().getBoolean(al.use_iap_langpacks);
    }

    public static void a(Context context, List list, List list1, boolean flag)
    {
        LinkedHashSet linkedhashset;
        linkedhashset = new LinkedHashSet();
        e();
        linkedhashset.addAll(GetAllAvailableLanguagesNative());
        if (!c) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences;
        HashSet hashset;
        Iterator iterator1;
        sharedpreferences = context.getSharedPreferences("word.lens", 0);
        hashset = new HashSet();
        iterator1 = linkedhashset.iterator();
_L5:
        if (iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        a(list1);
_L6:
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = list.iterator();
_L7:
        if (!iterator.hasNext())
        {
            list.removeAll(arraylist);
            list.addAll(arraylist);
            return;
        }
        break MISSING_BLOCK_LABEL_448;
_L4:
        LangPackInfo langpackinfo1 = (LangPackInfo)iterator1.next();
        if (langpackinfo1.isDemo())
        {
            if (flag)
            {
                list.add(langpackinfo1);
            }
        } else
        {
            boolean flag1 = sharedpreferences.getBoolean((new StringBuilder("LPS.")).append(langpackinfo1.getAbbreviation()).toString(), false) | sharedpreferences.getBoolean((new StringBuilder("LPS.")).append(langpackinfo1.getReverseAbbreviation()).toString(), false);
            if (b != null)
            {
                if (b.containsKey(langpackinfo1.getAbbreviation()))
                {
                    flag1 |= ((Boolean)b.get(langpackinfo1.getAbbreviation())).booleanValue();
                }
                if (b.containsKey(langpackinfo1.getReverseAbbreviation()))
                {
                    flag1 |= ((Boolean)b.get(langpackinfo1.getReverseAbbreviation())).booleanValue();
                }
            }
            if (flag1)
            {
                list.add(langpackinfo1);
                hashset.add(langpackinfo1.getAbbreviation());
            } else
            if (list1 != null)
            {
                boolean flag2;
                String s;
                if (!hashset.contains(langpackinfo1.getAbbreviation()) && !hashset.contains(langpackinfo1.getReverseAbbreviation()))
                {
                    flag2 = false;
                } else
                {
                    flag2 = true;
                }
                s = LangPackInfo.normalizeAbbrev(langpackinfo1.getAbbreviation());
                if (!flag2 && langpackinfo1.getAbbreviation().equals(s))
                {
                    list1.add(langpackinfo1);
                    hashset.add(langpackinfo1.getAbbreviation());
                    hashset.add(langpackinfo1.getReverseAbbreviation());
                }
            }
        }
          goto _L5
_L2:
        list.addAll(linkedhashset);
          goto _L6
        LangPackInfo langpackinfo = (LangPackInfo)iterator.next();
        if (langpackinfo.isDemo())
        {
            arraylist.add(langpackinfo);
        }
          goto _L7
    }

    private static void a(List list)
    {
    }

    public static boolean a(LangPackInfo langpackinfo)
    {
        Object obj = WordLensSystem.g();
        obj;
        JVM INSTR monitorenter ;
        boolean flag = SetCurrentLangNative(langpackinfo);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        Log.d("QV", (new StringBuilder("Language successfully set to: ")).append(langpackinfo.getDescription(a)).toString());
_L1:
        obj;
        JVM INSTR monitorexit ;
        c();
        return flag;
        Log.e("QV", (new StringBuilder("Unable to set language pack?! Desired Language Pack: ")).append(langpackinfo).toString());
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static LangPackInfo b()
    {
        if (d == null)
        {
            d = a();
        }
        return d;
    }

    public static void c()
    {
        d = null;
    }

    public static List d()
    {
        List list = GetAllAvailableLanguagesNative();
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            LangPackInfo langpackinfo;
            do
            {
                if (!iterator.hasNext())
                {
                    return arraylist;
                }
                langpackinfo = (LangPackInfo)iterator.next();
            } while (langpackinfo.isDemo());
            arraylist.add(langpackinfo);
        } while (true);
    }

    private static void e()
    {
        String s = a.getString(at.lang_pack_content_uri);
        Cursor cursor = a.getContentResolver().query(Uri.parse(s), null, null, null, null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        b = new HashMap();
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_152;
        }
_L2:
        if (cursor.isAfterLast())
        {
            return;
        }
        String s2 = cursor.getString(0);
        boolean flag = Boolean.parseBoolean(cursor.getString(1));
        b.put(s2, Boolean.valueOf(flag));
        cursor.moveToNext();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        String s1 = (new StringBuilder("Exception checking for other Word Lens purchases: ")).append(exception.getLocalizedMessage()).toString();
        Log.e("QV", s1);
        com.questvisual.wordlens.e.a.a("QV", s1, "");
    }

}
