// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.questvisual.wordlens.d.k;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.questvisual.wordlens:
//            NativeLangMan, aq, i, ao, 
//            DictResultEntry, LangPackInfo, d, au, 
//            NativeDictionary

class h extends BaseAdapter
    implements android.widget.AdapterView.OnItemClickListener
{

    final d a;
    private LayoutInflater b;
    private List c;

    public h(d d1, Context context)
    {
        a = d1;
        super();
        c = null;
        b = LayoutInflater.from(context);
        c = new ArrayList();
    }

    public int getCount()
    {
        NativeLangMan.c();
        return c.size();
    }

    public Object getItem(int j)
    {
        return c.get(j);
    }

    public long getItemId(int j)
    {
        return (long)j;
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        i l;
        DictResultEntry dictresultentry;
        LangPackInfo langpackinfo;
        String s;
        if (view == null)
        {
            view = b.inflate(aq.dict_table_cell, null);
            l = new i(this, null);
            l.a = (TextView)view.findViewById(ao.source_word_label);
            l.b = (TextView)view.findViewById(ao.translated_word_label);
            view.setTag(l);
        } else
        {
            l = (i)view.getTag();
        }
        dictresultentry = (DictResultEntry)getItem(j);
        if (dictresultentry == null)
        {
            Log.w("QV", (new StringBuilder("Null results from NativeDictionary for position=")).append(j).append(". Displaying blank cell.").toString());
            l.a.setText(null);
            l.b.setText(null);
            return view;
        }
        langpackinfo = NativeLangMan.b();
        s = k.a(langpackinfo.srcLang);
        if (!Charset.isSupported(s)) goto _L2; else goto _L1
_L1:
        String s1 = new String(dictresultentry.sourcePhraseStr, s);
_L3:
        String s2;
        String s3 = k.a(langpackinfo.destLang);
        if (!Charset.isSupported(s3))
        {
            break MISSING_BLOCK_LABEL_342;
        }
        s2 = new String(dictresultentry.transPhraseStr, s3);
_L4:
        l.a.setText(s1);
        TextView textview = l.b;
        if (LangPackInfo.isEraseWords(langpackinfo))
        {
            s2 = "";
        }
        textview.setText(s2);
        TextView textview1 = l.a;
        android.support.v4.app.i i1 = a.j();
        UnsupportedEncodingException unsupportedencodingexception;
        int j1;
        if (dictresultentry.isBest)
        {
            j1 = au.Dictionary_Source;
        } else
        {
            j1 = au.Dictionary_Source_NotBest;
        }
        textview1.setTextAppearance(i1, j1);
        return view;
_L2:
        s1 = new String(dictresultentry.sourcePhraseStr);
          goto _L3
        try
        {
            s2 = new String(dictresultentry.transPhraseStr);
        }
        // Misplaced declaration of an exception variable
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("QV", (new StringBuilder("Unsupported Encoding: ")).append(unsupportedencodingexception.getMessage()).toString());
            s1 = "[Error]";
            s2 = "[Error]";
        }
          goto _L4
    }

    public void notifyDataSetChanged()
    {
        c.clear();
        if (!d.a(a)) goto _L2; else goto _L1
_L1:
        int j;
        int l;
        j = d.b(a).e();
        l = 0;
_L5:
        if (l < j) goto _L3; else goto _L2
_L2:
        super.notifyDataSetChanged();
        return;
_L3:
        DictResultEntry dictresultentry = d.b(a).a(l);
        c.add(dictresultentry);
        l++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        try
        {
            i i1 = (i)view.getTag();
            if (!i1.c)
            {
                CharSequence charsequence = i1.a.getText();
                d.b(a, charsequence);
                d.a(a, charsequence);
            }
            return;
        }
        catch (ClassCastException classcastexception)
        {
            Log.w("QV", (new StringBuilder("Why did DictionaryListAdapter.onItemClick get a view of type: ")).append(view.getClass().getSimpleName()).toString(), classcastexception);
        }
    }
}
