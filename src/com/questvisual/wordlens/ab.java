// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.i;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.questvisual.wordlens.billing.IAPService;
import com.questvisual.wordlens.e.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.questvisual.wordlens:
//            y, NativeLangMan, at, LangPackInfo, 
//            ac, a

class ab extends BaseAdapter
    implements android.widget.AdapterView.OnItemClickListener
{

    final y a;
    private LayoutInflater b;
    private List c;
    private List d;

    public ab(y y1)
    {
        a = y1;
        super();
        b = LayoutInflater.from(y1.j());
    }

    public void a(Collection collection)
    {
        c = new ArrayList(collection);
    }

    public void a(List list)
    {
        if (list != null)
        {
            d = new ArrayList(list);
            return;
        } else
        {
            d = null;
            return;
        }
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public int getCount()
    {
        List list = c;
        int j = 0;
        if (list != null)
        {
            j = 1 + (0 + c.size());
        }
        int k;
        if (d != null && d.size() > 0)
        {
            k = j + (2 + d.size());
        } else
        {
            k = j + 2;
        }
        NativeLangMan.c();
        return k;
    }

    public Object getItem(int j)
    {
        if (c != null)
        {
            if (j <= c.size())
            {
                if (j == 0)
                {
                    return a.a(at.store_category_installed);
                } else
                {
                    return c.get(j - 1);
                }
            }
            j -= 1 + c.size();
        }
        if (j == 0)
        {
            return a.a(at.store_category_available);
        }
        if (d != null)
        {
            if (d.size() == 0)
            {
                return LangPackInfo.getAllInstalledLangPack();
            }
            if (j == 1 + d.size())
            {
                return LangPackInfo.getRestorePurchasesLangPack();
            } else
            {
                return d.get(j - 1);
            }
        } else
        {
            return LangPackInfo.getDisabledLangPack();
        }
    }

    public long getItemId(int j)
    {
        return (long)j;
    }

    public int getItemViewType(int j)
    {
        if (c == null) goto _L2; else goto _L1
_L1:
        if (j > c.size()) goto _L4; else goto _L3
_L3:
        if (j != 0) goto _L6; else goto _L5
_L5:
        return 0;
_L6:
        return 1;
_L4:
        j -= 1 + c.size();
_L2:
        if (j != 0)
        {
            return 2;
        }
        if (true) goto _L5; else goto _L7
_L7:
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        int k = getItemViewType(j);
        if (view != null) goto _L2; else goto _L1
_L1:
        ac ac1 = new ac(this);
        k;
        JVM INSTR tableswitch 0 2: default 48
    //                   0 73
    //                   1 169
    //                   2 203;
           goto _L3 _L4 _L5 _L6
_L3:
        Log.e("QV", (new StringBuilder("Unknown viewType: ")).append(k).toString());
        return null;
_L4:
        View view2;
        View view5 = b.inflate(0x1090002, null);
        com.questvisual.wordlens.ac.a(ac1, (TextView)view5.findViewById(0x1020016));
        view2 = view5;
_L9:
        View view3;
        view2.setTag(ac1);
        view3 = view2;
          goto _L7
_L5:
        View view4 = b.inflate(0x109000f, null);
        com.questvisual.wordlens.ac.a(ac1, (TextView)view4.findViewById(0x1020014));
        view2 = view4;
        continue; /* Loop/switch isn't completed */
_L6:
        View view1 = b.inflate(0x1090004, null);
        com.questvisual.wordlens.ac.a(ac1, (TextView)view1.findViewById(0x1020014));
        ac.b(ac1, (TextView)view1.findViewById(0x1020015));
        view2 = view1;
        continue; /* Loop/switch isn't completed */
_L2:
        ac1 = (ac)view.getTag();
        view3 = view;
_L7:
        LangPackInfo langpackinfo;
        switch (k)
        {
        default:
            Log.e("QV", (new StringBuilder("Unknown viewType: ")).append(k).toString());
            return null;

        case 0: // '\0'
            String s = (String)getItem(j);
            com.questvisual.wordlens.ac.a(ac1).setText(s);
            return view3;

        case 1: // '\001'
            LangPackInfo langpackinfo1 = (LangPackInfo)getItem(j);
            com.questvisual.wordlens.ac.a(ac1).setText(langpackinfo1.getDescription(a.j()));
            LangPackInfo langpackinfo2 = NativeLangMan.b();
            boolean flag;
            if (langpackinfo2.isDemo())
            {
                flag = langpackinfo2.equals(langpackinfo1, true);
            } else
            {
                flag = langpackinfo1.equals(langpackinfo2);
            }
            y.c(a).setItemChecked(j, flag);
            return view3;

        case 2: // '\002'
            langpackinfo = (LangPackInfo)getItem(j);
            break;
        }
        if (langpackinfo == null || langpackinfo.isStoreDisabled())
        {
            com.questvisual.wordlens.ac.a(ac1).setText(a.a(at.store_is_disabled));
            ac.b(ac1).setText("");
        } else
        if (langpackinfo.isStoreEmpty())
        {
            com.questvisual.wordlens.ac.a(ac1).setText(a.a(at.store_empty));
            ac.b(ac1).setText(a.a(at.store_empty_detail));
        } else
        if (langpackinfo.isRestorePurchases())
        {
            com.questvisual.wordlens.ac.a(ac1).setText(a.a(at.store_restore_purchases));
            ac.b(ac1).setText("");
        } else
        {
            com.questvisual.wordlens.ac.a(ac1).setText(LangPackInfo.generateBidirectionalDescription(a.j(), langpackinfo));
            if (y.d(a))
            {
                ac.b(ac1).setText(a.a(at.store_purchase_paid_app));
            } else
            {
                ac.b(ac1).setText(a.a(at.store_purchase_note));
            }
        }
        y.c(a).setItemChecked(j, false);
        return view3;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public int getViewTypeCount()
    {
        return 3;
    }

    public boolean isEnabled(int j)
    {
        return getItemViewType(j) != 0;
    }

    public void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        getItemViewType(j);
        JVM INSTR tableswitch 1 2: default 28
    //                   1 29
    //                   2 148;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        LangPackInfo langpackinfo1 = (LangPackInfo)getItem(j);
        HashMap hashmap1 = new HashMap();
        hashmap1.put("lang_pack_abbreviation", langpackinfo1.getAbbreviation());
        com.questvisual.wordlens.e.a.a("lang_pick_lang", hashmap1);
        if (langpackinfo1.isDemo())
        {
            (new com.questvisual.wordlens.a(a.j(), langpackinfo1, a)).a();
            return;
        }
        com.questvisual.wordlens.NativeLangMan.a(langpackinfo1);
        if (y.e(a))
        {
            a.j().setResult(-1);
        } else
        {
            y.b(a, true);
        }
        a.a();
        return;
_L3:
        LangPackInfo langpackinfo = (LangPackInfo)getItem(j);
        if (!langpackinfo.isStoreDisabled() && !langpackinfo.isStoreEmpty())
        {
            if (langpackinfo.isRestorePurchases())
            {
                com.questvisual.wordlens.y.a(a, true);
                return;
            }
            if (y.f(a))
            {
                if (y.d(a))
                {
                    Intent intent1 = new Intent("android.intent.action.VIEW");
                    String s = a.a(at.redirect_iap_paid_app_package_name);
                    intent1.setData(Uri.parse((new StringBuilder("market://details?id=")).append(s).toString()));
                    a.a(intent1);
                    return;
                }
                HashMap hashmap = new HashMap();
                String s1 = langpackinfo.getAbbreviation();
                hashmap.put("lang_pack_abbreviation", s1);
                com.questvisual.wordlens.e.a.a("lang_pick_store", hashmap);
                String s2 = LangPackInfo.normalizeAbbrev(s1);
                IAPService iapservice = y.g(a);
                String s3;
                if (langpackinfo.isDemo())
                {
                    s3 = langpackinfo.packageName;
                } else
                {
                    s3 = s2;
                }
                iapservice.a(null, s3);
                return;
            } else
            {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse((new StringBuilder("market://details?id=")).append(langpackinfo.packageName).toString()));
                a.a(intent);
                return;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
