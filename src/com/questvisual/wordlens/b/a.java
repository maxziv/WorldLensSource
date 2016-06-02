// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.b;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Log;
import com.b.a.f;
import com.questvisual.wordlens.LangPackInfo;
import com.questvisual.wordlens.NativeLangMan;
import com.questvisual.wordlens.at;
import com.questvisual.wordlens.messaging.MessageManager;
import com.questvisual.wordlens.messaging.g;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a extends AsyncTask
{

    private String a;
    private SharedPreferences b;
    private Object c;
    private Context d;

    protected transient Void a(Void avoid[])
    {
        boolean flag;
        int i;
        flag = true;
        i = 0;
        StringBuilder stringbuilder = new StringBuilder(a);
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        if (d != null) goto _L2; else goto _L1
_L1:
        if (false)
        {
            null.disconnect();
        }
_L14:
        return null;
_L2:
        Account aaccount[];
        StringBuilder stringbuilder1;
        int j;
        aaccount = AccountManager.get(d).getAccountsByType(d.getString(at.promo_account_type));
        stringbuilder1 = new StringBuilder("[");
        j = aaccount.length;
        int k = 0;
_L15:
        if (k < j) goto _L4; else goto _L3
_L3:
        String s3;
        stringbuilder1.append("]");
        s3 = stringbuilder1.toString();
        obj;
        JVM INSTR monitorexit ;
        HttpURLConnection httpurlconnection1;
        stringbuilder.append("userids=");
        stringbuilder.append(URLEncoder.encode(s3, "UTF-8"));
        httpurlconnection1 = (HttpURLConnection)(new URL(stringbuilder.toString())).openConnection();
        BufferedReader bufferedreader;
        String s4;
        StringBuilder stringbuilder2;
        bufferedreader = new BufferedReader(new InputStreamReader(httpurlconnection1.getInputStream()));
        s4 = bufferedreader.readLine();
        stringbuilder2 = new StringBuilder();
_L18:
        if (s4 != null) goto _L6; else goto _L5
_L5:
        String s5;
        JSONObject jsonobject;
        s5 = stringbuilder2.toString();
        jsonobject = new JSONObject(s5);
        if (!jsonobject.has("products")) goto _L8; else goto _L7
_L7:
        JSONArray jsonarray;
        HashSet hashset;
        jsonarray = jsonobject.getJSONArray("products");
        hashset = new HashSet();
_L19:
        if (i < jsonarray.length()) goto _L10; else goto _L9
_L9:
        android.content.SharedPreferences.Editor editor;
        Iterator iterator;
        editor = b.edit();
        iterator = NativeLangMan.d().iterator();
_L20:
        if (iterator.hasNext()) goto _L12; else goto _L11
_L11:
        editor.apply();
_L21:
        if (httpurlconnection1 == null) goto _L14; else goto _L13
_L13:
        httpurlconnection1.disconnect();
        return null;
_L4:
        Account account = aaccount[k];
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_346;
        }
        flag = false;
_L16:
        stringbuilder1.append("\"");
        stringbuilder1.append(account.name);
        stringbuilder1.append("\"");
        k++;
          goto _L15
        stringbuilder1.append(",");
          goto _L16
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        HttpURLConnection httpurlconnection = null;
_L28:
        String s2 = (new StringBuilder("Unable to encode promo data: ")).append(unsupportedencodingexception.getLocalizedMessage()).append(" - weird, we thought UTF8 was standard?").toString();
        Log.e("QV", s2, unsupportedencodingexception);
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", s2, null);
        if (httpurlconnection == null) goto _L14; else goto _L17
_L17:
        httpurlconnection.disconnect();
        return null;
_L6:
        stringbuilder2.append(s4);
        s4 = bufferedreader.readLine();
          goto _L18
_L10:
        hashset.add(Integer.valueOf(jsonarray.getInt(i)));
        i++;
          goto _L19
_L12:
        String s6 = ((LangPackInfo)iterator.next()).getAbbreviation();
        if (hashset.contains(Integer.valueOf(LangPackInfo.normalizeAbbrevToProductId(s6))))
        {
            editor.putBoolean((new StringBuilder("LPS.")).append(s6).toString(), true);
        }
          goto _L20
_L8:
        Log.e("QV", (new StringBuilder("Unknown error from Word Lens server restoring promo codes: ")).append(s5).toString());
        f.a("ERROR_WL_BUG", (new StringBuilder("Unknown error from Word Lens server restoring promo codes: ")).append(s5).toString(), "");
          goto _L21
        MalformedURLException malformedurlexception1;
        malformedurlexception1;
        MalformedURLException malformedurlexception;
        httpurlconnection = httpurlconnection1;
        malformedurlexception = malformedurlexception1;
_L27:
        String s = (new StringBuilder("Unable to restore promo codes, bad URL: ")).append(a).toString();
        Log.e("QV", s, malformedurlexception);
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", s, null);
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
            return null;
        }
          goto _L14
        IOException ioexception;
        ioexception;
        httpurlconnection = null;
_L26:
        Log.e("QV", "IO error restoring code. User is probably offline.", ioexception);
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
            return null;
        }
          goto _L14
        JSONException jsonexception;
        jsonexception;
        httpurlconnection = null;
_L25:
        String s1 = (new StringBuilder("Unable to parse server JSON: ")).append(jsonexception.getLocalizedMessage()).toString();
        Log.e("QV", s1, jsonexception);
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", s1, null);
        if (httpurlconnection == null) goto _L14; else goto _L22
_L22:
        httpurlconnection.disconnect();
        return null;
        Exception exception;
        exception;
        httpurlconnection = null;
_L24:
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception;
        Exception exception2;
        exception2;
        httpurlconnection = httpurlconnection1;
        exception = exception2;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L24; else goto _L23
_L23:
        JSONException jsonexception1;
        jsonexception1;
        httpurlconnection = httpurlconnection1;
        jsonexception = jsonexception1;
          goto _L25
        IOException ioexception1;
        ioexception1;
        httpurlconnection = httpurlconnection1;
        ioexception = ioexception1;
          goto _L26
        malformedurlexception;
        httpurlconnection = null;
          goto _L27
        UnsupportedEncodingException unsupportedencodingexception1;
        unsupportedencodingexception1;
        httpurlconnection = httpurlconnection1;
        unsupportedencodingexception = unsupportedencodingexception1;
          goto _L28
    }

    public void a()
    {
        synchronized (c)
        {
            d = null;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(Void void1)
    {
        MessageManager.a(g.w);
        super.onPostExecute(void1);
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }
}
