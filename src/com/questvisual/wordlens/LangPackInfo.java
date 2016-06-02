// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.questvisual.wordlens:
//            at

public class LangPackInfo
{

    private static final String CHAR_UNDERSCORE = "_";
    public static final int DEMO_ALL_INSTALLED = 4;
    public static final int DEMO_DISABLED = 3;
    public static final int DEMO_ERASE = 2;
    public static final int DEMO_IAP_TEST = 5;
    public static final int DEMO_OFF = 0;
    public static final int DEMO_RESTORE_PURCHASES = 6;
    public static final int DEMO_REVERSE = 1;
    private static final String LANG_CODE_DEMO = "--";
    private static final String TEST_PRODUCT_IDS[] = {
        "android.test.purchase", "android.test.canceled", "android.test.refunded", "android.test.item_unavailable"
    };
    private static Map languageNameMap = null;
    private static Map sAbbrevToAbbrev = null;
    private static Map sAbbrevToProductIds = null;
    public int demoMode;
    public String destLang;
    public String packageName;
    public String srcLang;

    public LangPackInfo()
    {
        initProductIds();
        initProductAbbrevs();
    }

    public LangPackInfo(int i, String s)
    {
        initProductIds();
        initProductAbbrevs();
        demoMode = i;
        srcLang = s;
        destLang = "";
    }

    public LangPackInfo(String s, String s1)
    {
        initProductIds();
        initProductAbbrevs();
        demoMode = 0;
        srcLang = s;
        destLang = s1;
    }

    private static boolean LangIsInvalid(String s)
    {
        return s == null || s.length() == 0 || "??".equalsIgnoreCase(s) || "--".equalsIgnoreCase(s);
    }

    private static String descriptionFormat(String s, String s1, boolean flag)
    {
        StringBuilder stringbuilder = (new StringBuilder(String.valueOf(s))).append(" ");
        String s2;
        if (flag)
        {
            s2 = "\u21C4";
        } else
        {
            s2 = "\u2192";
        }
        return stringbuilder.append(s2).append(" ").append(s1).toString();
    }

    public static String generateBidirectionalDescription(Context context, LangPackInfo langpackinfo)
    {
        return generateDescription(context, langpackinfo, true, true);
    }

    private static String generateDescription(Context context, LangPackInfo langpackinfo, boolean flag, boolean flag1)
    {
        String s2;
        String s3;
        switch (langpackinfo.demoMode)
        {
        case 5: // '\005'
        default:
            s2 = langpackinfo.srcLang;
            s3 = langpackinfo.destLang;
            if (s2 == null || s3 == null)
            {
                Log.e("QV", "Invalid use of generate description. src and dest lang codes cannot be null");
                return descriptionFormat(s2, s3, flag);
            }
            break;

        case 6: // '\006'
            if (context != null)
            {
                return context.getString(at.store_restore_purchases);
            } else
            {
                return "Restore Purchases";
            }

        case 4: // '\004'
            if (context != null)
            {
                return context.getString(at.store_empty);
            } else
            {
                return "Store Empty";
            }

        case 3: // '\003'
            if (context != null)
            {
                return context.getString(at.store_is_disabled);
            } else
            {
                return "Store Disabled";
            }

        case 1: // '\001'
        case 2: // '\002'
            StringBuilder stringbuilder = new StringBuilder();
            if (langpackinfo.demoMode == 2)
            {
                String s1;
                if (context != null)
                {
                    s1 = context.getString(at.lang_demo_erasewords);
                } else
                {
                    s1 = "Demo: Erase Words";
                }
                stringbuilder.append(s1);
            } else
            {
                String s;
                if (context != null)
                {
                    s = context.getString(at.lang_demo_reversewords);
                } else
                {
                    s = "Demo: Reverse Words";
                }
                stringbuilder.append(s);
            }
            if (!LangIsInvalid(langpackinfo.srcLang) && flag1)
            {
                stringbuilder.append(" (");
                stringbuilder.append(langpackinfo.srcLang);
                stringbuilder.append(")");
            }
            return stringbuilder.toString();
        }
        Locale locale = new Locale(s2);
        Locale locale1 = new Locale(s3);
        String s4 = locale.getDisplayLanguage();
        String s5 = locale1.getDisplayLanguage();
        if (s2.equals(s4) || s3.equals(s5))
        {
            Log.e("QV", (new StringBuilder("Unknown locale on device: src=")).append(s2).append(", dest=").append(s3).toString());
            return descriptionFormat(lookupLanguageName(s2), lookupLanguageName(s3), flag);
        } else
        {
            return descriptionFormat(s4, s5, flag);
        }
    }

    public static LangPackInfo getAllInstalledLangPack()
    {
        LangPackInfo langpackinfo = new LangPackInfo("", "");
        langpackinfo.demoMode = 4;
        return langpackinfo;
    }

    public static LangPackInfo getDisabledLangPack()
    {
        LangPackInfo langpackinfo = new LangPackInfo("", "");
        langpackinfo.demoMode = 3;
        return langpackinfo;
    }

    public static LangPackInfo getIAPDebugLangPack(int i)
    {
        i;
        JVM INSTR tableswitch 0 3: default 32
    //                   0 42
    //                   1 70
    //                   2 85
    //                   3 100;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        Log.e("QV", "Improper use of IAPDebugLanguagePack");
        return null;
_L2:
        LangPackInfo langpackinfo = new LangPackInfo("Test", "Purchase");
_L7:
        langpackinfo.demoMode = 5;
        langpackinfo.packageName = TEST_PRODUCT_IDS[i];
        return langpackinfo;
_L3:
        langpackinfo = new LangPackInfo("Test", "Canceled");
        continue; /* Loop/switch isn't completed */
_L4:
        langpackinfo = new LangPackInfo("Test", "Refunded");
        continue; /* Loop/switch isn't completed */
_L5:
        langpackinfo = new LangPackInfo("Test", "Unavailable");
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static LangPackInfo getRestorePurchasesLangPack()
    {
        LangPackInfo langpackinfo = new LangPackInfo("", "");
        langpackinfo.demoMode = 6;
        return langpackinfo;
    }

    private static void initProductAbbrevs()
    {
        sAbbrevToAbbrev = new HashMap();
        sAbbrevToAbbrev.put("en_es", "en_es");
        sAbbrevToAbbrev.put("es_en", "en_es");
        sAbbrevToAbbrev.put("en_fr", "en_fr");
        sAbbrevToAbbrev.put("fr_en", "en_fr");
        sAbbrevToAbbrev.put("en_it", "en_it");
        sAbbrevToAbbrev.put("it_en", "en_it");
        sAbbrevToAbbrev.put("en_de", "en_de");
        sAbbrevToAbbrev.put("de_en", "en_de");
        sAbbrevToAbbrev.put("en_pt", "en_pt");
        sAbbrevToAbbrev.put("pt_en", "en_pt");
        sAbbrevToAbbrev.put("en_ru", "en_ru");
        sAbbrevToAbbrev.put("ru_en", "en_ru");
    }

    private static void initProductIds()
    {
        sAbbrevToProductIds = new HashMap();
        sAbbrevToProductIds.put("en_es", Integer.valueOf(1));
        sAbbrevToProductIds.put("es_en", Integer.valueOf(1));
        sAbbrevToProductIds.put("en_fr", Integer.valueOf(2));
        sAbbrevToProductIds.put("fr_en", Integer.valueOf(2));
        sAbbrevToProductIds.put("en_it", Integer.valueOf(3));
        sAbbrevToProductIds.put("it_en", Integer.valueOf(3));
        sAbbrevToProductIds.put("en_de", Integer.valueOf(4));
        sAbbrevToProductIds.put("de_en", Integer.valueOf(4));
        sAbbrevToProductIds.put("en_pt", Integer.valueOf(5));
        sAbbrevToProductIds.put("pt_en", Integer.valueOf(5));
        sAbbrevToProductIds.put("en_ru", Integer.valueOf(6));
        sAbbrevToProductIds.put("ru_en", Integer.valueOf(6));
    }

    public static boolean isEraseWords(LangPackInfo langpackinfo)
    {
        return langpackinfo.demoMode == 2;
    }

    private static String lookupLanguageName(String s)
    {
        if (languageNameMap == null)
        {
            languageNameMap = new HashMap();
            languageNameMap.put("??", "(Unknown)");
            languageNameMap.put("en", "English");
            languageNameMap.put("es", "Spanish");
            languageNameMap.put("ru", "Russian");
            languageNameMap.put("fr", "French");
            languageNameMap.put("pt", "Portuguese");
            languageNameMap.put("ko", "Korean");
            languageNameMap.put("it", "Italian");
            languageNameMap.put("de", "German");
        }
        String s1 = (String)languageNameMap.get(s);
        if (s1 == null)
        {
            s1 = "(NULL)";
        }
        return s1;
    }

    public static String normalizeAbbrev(String s)
    {
        if (sAbbrevToAbbrev == null)
        {
            initProductAbbrevs();
        }
        String s1 = (String)sAbbrevToAbbrev.get(s);
        if (s1 == null)
        {
            Log.e("QV", (new StringBuilder("Unable to normalize abbreviation: ")).append(s).toString());
            return s;
        } else
        {
            return s1;
        }
    }

    public static int normalizeAbbrevToProductId(String s)
    {
        if (sAbbrevToProductIds == null)
        {
            initProductIds();
        }
        Integer integer = (Integer)sAbbrevToProductIds.get(s);
        if (integer == null)
        {
            Log.e("QV", (new StringBuilder("Unable to get product ID for abbreviation: ")).append(s).toString());
            return -1;
        } else
        {
            return integer.intValue();
        }
    }

    public static LangPackInfo parseLangPair(String s)
    {
        String s1;
        String s2;
        s1 = s.substring(0, s.indexOf("_"));
        s2 = s.substring(1 + s.indexOf("_"));
        if (s1.equals("--") || s2.equals("--"))
        {
            break MISSING_BLOCK_LABEL_70;
        }
        LangPackInfo langpackinfo = new LangPackInfo(s1, s2);
        return langpackinfo;
        NullPointerException nullpointerexception;
        nullpointerexception;
_L2:
        return null;
        IndexOutOfBoundsException indexoutofboundsexception;
        indexoutofboundsexception;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
    }

    public boolean equals(LangPackInfo langpackinfo, boolean flag)
    {
        if (demoMode != langpackinfo.demoMode)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        if (demoMode == 0 || !flag) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (srcLang == null && langpackinfo.srcLang != null)
        {
            return false;
        }
        if (destLang == null && langpackinfo.destLang != null)
        {
            return false;
        }
        if (srcLang.equalsIgnoreCase(langpackinfo.srcLang) && destLang.equalsIgnoreCase(langpackinfo.destLang)) goto _L1; else goto _L3
_L3:
        return false;
        return false;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        LangPackInfo langpackinfo;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        langpackinfo = (LangPackInfo)obj;
        if (demoMode != langpackinfo.demoMode)
        {
            return false;
        }
        if (destLang == null)
        {
            if (langpackinfo.destLang != null)
            {
                return false;
            }
        } else
        if (!destLang.equals(langpackinfo.destLang))
        {
            return false;
        }
        if (srcLang != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (langpackinfo.srcLang == null) goto _L1; else goto _L3
_L3:
        return false;
        if (srcLang.equals(langpackinfo.srcLang)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public String getAbbreviation()
    {
        return (new StringBuilder(String.valueOf(srcLang))).append("_").append(destLang).toString();
    }

    public String getDescription(Context context)
    {
        return generateDescription(context, this, false, true);
    }

    public String getDescription(Context context, boolean flag)
    {
        return generateDescription(context, this, false, flag);
    }

    public String getReverseAbbreviation()
    {
        return (new StringBuilder(String.valueOf(destLang))).append("_").append(srcLang).toString();
    }

    public String getSourceLangName()
    {
        return (new Locale(srcLang)).getDisplayLanguage();
    }

    public int hashCode()
    {
        int i = 31 * (31 + demoMode);
        int j;
        int k;
        String s;
        int l;
        if (destLang == null)
        {
            j = 0;
        } else
        {
            j = destLang.hashCode();
        }
        k = 31 * (j + i);
        s = srcLang;
        l = 0;
        if (s != null)
        {
            l = srcLang.hashCode();
        }
        return k + l;
    }

    public boolean isDemo()
    {
        boolean flag = true;
        if (flag != demoMode && 2 != demoMode && 5 != demoMode)
        {
            flag = false;
        }
        return flag;
    }

    public boolean isRestorePurchases()
    {
        return 6 == demoMode;
    }

    public boolean isStoreDisabled()
    {
        return 3 == demoMode;
    }

    public boolean isStoreEmpty()
    {
        return 4 == demoMode;
    }

    public String toString()
    {
        return (new StringBuilder("LangPackInfo: [")).append(srcLang).append(",").append(destLang).append("] ").append(getDescription(null)).toString();
    }

}
