// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import android.widget.Toast;
import com.questvisual.wordlens.d.g;
import com.questvisual.wordlens.e.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.questvisual.wordlens:
//            NativeLangMan, WLSplashActivity, LangPackInfo, ax

class aw extends g
    implements android.content.DialogInterface.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    final WLSplashActivity a;
    private List b;
    private List c;
    private LangPackInfo d;

    public aw(WLSplashActivity wlsplashactivity, Context context)
    {
        a = wlsplashactivity;
        super(context, true);
        c = new ArrayList();
        b = new ArrayList();
        com.questvisual.wordlens.NativeLangMan.a(b(), c, b, false);
        a("", b);
        HashSet hashset = new HashSet();
        HashSet hashset1 = new HashSet();
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                c.removeAll(hashset1);
                if (c.size() > 0)
                {
                    a(wlsplashactivity.getString(0x7f080057), c);
                }
                return;
            }
            LangPackInfo langpackinfo = (LangPackInfo)iterator.next();
            if (hashset.contains(langpackinfo.getAbbreviation()))
            {
                hashset1.add(langpackinfo);
            } else
            {
                hashset.add(langpackinfo.getAbbreviation());
                hashset.add(langpackinfo.getReverseAbbreviation());
            }
        } while (true);
    }

    protected View a(View view, LangPackInfo langpackinfo, int i, int j)
    {
        ax ax1;
        if (view == null)
        {
            view = a().inflate(0x1090004, null);
            ax ax2 = new ax(this, null);
            ax2.a = (TextView)view.findViewById(0x1020014);
            ax2.b = (TextView)view.findViewById(0x1020015);
            view.setTag(ax2);
            ax1 = ax2;
        } else
        {
            ax1 = (ax)view.getTag();
        }
        ax1.a.setText(LangPackInfo.generateBidirectionalDescription(b(), langpackinfo));
        if (i > b.size())
        {
            ax1.b.setText(a.getString(0x7f080060));
            return view;
        } else
        {
            ax1.b.setText("");
            return view;
        }
    }

    protected volatile View a(View view, Object obj, int i, int j)
    {
        return a(view, (String)obj, i, j);
    }

    protected View a(View view, String s, int i, int j)
    {
        ax ax2;
        if (view == null)
        {
            ax ax1 = new ax(this, null);
            view = a().inflate(0x1090002, null);
            ax1.a = (TextView)view.findViewById(0x1020016);
            view.setTag(ax1);
            ax2 = ax1;
        } else
        {
            ax2 = (ax)view.getTag();
        }
        if (s == null || s.length() == 0)
        {
            view.setVisibility(8);
            return view;
        } else
        {
            ax2.a.setText(s);
            view.setVisibility(0);
            return view;
        }
    }

    protected View b(View view, Object obj, int i, int j)
    {
        return a(view, (LangPackInfo)obj, i, j);
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Log.i("QV", (new StringBuilder("Recording initial Language Pack selection of: ")).append(LangPackInfo.generateBidirectionalDescription(b(), d)).toString());
        HashMap hashmap = new HashMap();
        hashmap.put("lang_pack_abbreviation", d.getAbbreviation());
        com.questvisual.wordlens.e.a.a("wl_splash_init_lang_pick", hashmap);
        SharedPreferences sharedpreferences = a.getSharedPreferences("word.lens", 0);
        String s = (new StringBuilder("LPS.")).append(d.getAbbreviation()).toString();
        String s1 = (new StringBuilder("LPS.")).append(d.getReverseAbbreviation()).toString();
        String s2 = LangPackInfo.normalizeAbbrev(d.getAbbreviation());
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putBoolean("key.wl.first.start", false);
        editor.putBoolean(s, true);
        editor.putBoolean(s1, true);
        editor.putString("key.first.start.of.wordlens.plus", s2);
        editor.commit();
        Locale locale = Locale.getDefault();
        if (d.destLang.equals(locale.getLanguage()))
        {
            com.questvisual.wordlens.NativeLangMan.a(d);
        } else
        {
            com.questvisual.wordlens.NativeLangMan.a(LangPackInfo.parseLangPair(d.getReverseAbbreviation()));
        }
        Log.i("QV", "Recorded.");
        com.questvisual.wordlens.WLSplashActivity.a(a);
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (i > b.size())
        {
            Toast.makeText(b(), 0x7f080060, 0).show();
            return;
        } else
        {
            d = (LangPackInfo)getItem(i);
            String s = (new StringBuilder(String.valueOf(a.getString(0x7f08007f)))).append(LangPackInfo.generateBidirectionalDescription(b(), d)).toString();
            (new android.app.AlertDialog.Builder(b())).setTitle(0x7f080080).setMessage(s).setPositiveButton(0x7f080081, this).setCancelable(true).setNegativeButton(0x1040000, null).show();
            return;
        }
    }
}
