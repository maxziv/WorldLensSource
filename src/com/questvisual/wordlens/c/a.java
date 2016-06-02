// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.c;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.util.Log;
import com.b.a.f;
import com.questvisual.wordlens.ap;
import com.questvisual.wordlens.at;
import com.questvisual.wordlens.e.b;
import com.questvisual.wordlens.l;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class a extends AsyncTask
{

    private String a;
    private float b;
    private String c;
    private String d;
    private boolean e;
    private boolean f;
    private ProgressDialog g;
    private l h;
    private String i;
    private String j;
    private int k;

    public a(l l1, String s, String s1, float f1, String s2)
    {
        h = l1;
        a = s1;
        b = f1;
        c = s2;
        d = s;
        j = l1.a(at.send_feedback_url);
        i = l1.a(at.send_feedback);
        k = l1.k().getInteger(ap.send_feedback_product_id);
    }

    protected transient Boolean a(String as[])
    {
        HttpURLConnection httpurlconnection;
        httpurlconnection = null;
        e = false;
        f = false;
        ArrayList arraylist;
        String s2;
        arraylist = new ArrayList();
        s2 = a;
        httpurlconnection = null;
        if (s2 == null) goto _L2; else goto _L1
_L1:
        int i1 = a.length();
        httpurlconnection = null;
        if (i1 <= 0) goto _L2; else goto _L3
_L3:
        arraylist.add(new BasicNameValuePair("email", a));
_L13:
        StringBuilder stringbuilder;
        String s3;
        arraylist.add(new BasicNameValuePair("product", Integer.toString(k)));
        arraylist.add(new BasicNameValuePair("rating", Float.toString(b)));
        stringbuilder = new StringBuilder();
        s3 = c;
        httpurlconnection = null;
        if (s3 == null) goto _L5; else goto _L4
_L4:
        int j1 = c.length();
        httpurlconnection = null;
        if (j1 <= 0) goto _L5; else goto _L6
_L6:
        stringbuilder.append(c);
_L15:
        String s4 = d;
        httpurlconnection = null;
        if (s4 == null) goto _L8; else goto _L7
_L7:
        String s5 = (new StringBuilder("\n\n")).append(d).toString();
_L16:
        String s6;
        stringbuilder.append(s5);
        s6 = com.questvisual.wordlens.e.b.a();
        boolean flag;
        UnsupportedEncodingException unsupportedencodingexception;
        UnsupportedEncodingException unsupportedencodingexception1;
        UnsupportedOperationException unsupportedoperationexception;
        HttpURLConnection httpurlconnection1;
        HttpURLConnection httpurlconnection2;
        BufferedReader bufferedreader;
        String s7;
        StringBuilder stringbuilder1;
        boolean flag1;
        l l1;
        if (s6 == null)
        {
            s6 = "";
        }
        stringbuilder.append(s6);
        arraylist.add(new BasicNameValuePair("comment", stringbuilder.toString()));
        httpurlconnection2 = (HttpURLConnection)(new URL(j)).openConnection();
        httpurlconnection2.setDoOutput(true);
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(httpurlconnection2.getOutputStream());
        (new UrlEncodedFormEntity(arraylist, "UTF-8")).writeTo(bufferedoutputstream);
        bufferedoutputstream.close();
        bufferedreader = new BufferedReader(new InputStreamReader(httpurlconnection2.getInputStream()));
        s7 = bufferedreader.readLine();
        stringbuilder1 = new StringBuilder();
_L17:
        if (s7 != null) goto _L10; else goto _L9
_L9:
        flag1 = (new JSONObject(stringbuilder1.toString())).getBoolean("valid");
_L18:
        l1 = h;
        if (l1 == null) goto _L12; else goto _L11
_L11:
        if (httpurlconnection2 != null)
        {
            httpurlconnection2.disconnect();
        }
        flag = flag1;
_L14:
        return Boolean.valueOf(flag);
_L2:
        arraylist.add(new BasicNameValuePair("email", "[empty]"));
          goto _L13
        unsupportedoperationexception;
        flag = false;
        httpurlconnection1 = null;
_L19:
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
          goto _L14
_L5:
        stringbuilder.append("[empty]");
          goto _L15
        unsupportedencodingexception;
        flag = false;
        unsupportedencodingexception1 = unsupportedencodingexception;
_L25:
        String s1 = (new StringBuilder("Unable to encode feedback data: ")).append(unsupportedencodingexception1.getLocalizedMessage()).append(" - weird, we thought UTF8 was standard?").toString();
        Log.e("QV", s1, unsupportedencodingexception1);
        com.b.a.f.a("ERROR_WL_BUG", s1, null);
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
          goto _L14
_L8:
        s5 = "";
          goto _L16
_L10:
        String s8;
        stringbuilder1.append(s7);
        s8 = bufferedreader.readLine();
        s7 = s8;
          goto _L17
_L12:
        Thread.sleep(100L);
          goto _L18
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L18
        UnsupportedOperationException unsupportedoperationexception2;
        unsupportedoperationexception2;
        httpurlconnection1 = httpurlconnection2;
        flag = flag1;
          goto _L19
        MalformedURLException malformedurlexception;
        malformedurlexception;
        MalformedURLException malformedurlexception1;
        flag = false;
        malformedurlexception1 = malformedurlexception;
_L24:
        String s = (new StringBuilder("Unable to send feedback, bad URL: ")).append(j).toString();
        Log.e("QV", s, malformedurlexception1);
        com.b.a.f.a("ERROR_WL_BUG", s, null);
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
          goto _L14
        IOException ioexception;
        ioexception;
        IOException ioexception1;
        flag = false;
        ioexception1 = ioexception;
_L23:
        Log.e("QV", "IO error sending feedback. User is probably offline.", ioexception1);
        e = true;
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
          goto _L14
        JSONException jsonexception;
        jsonexception;
        flag = false;
_L22:
        Log.e("QV", "Unable to parse response from server. Feedback may not have gone through.");
        f = true;
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
          goto _L14
        Exception exception;
        exception;
_L21:
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception;
        Exception exception1;
        exception1;
        httpurlconnection = httpurlconnection2;
        exception = exception1;
        if (true) goto _L21; else goto _L20
_L20:
        JSONException jsonexception1;
        jsonexception1;
        httpurlconnection = httpurlconnection2;
        flag = false;
          goto _L22
        JSONException jsonexception2;
        jsonexception2;
        httpurlconnection = httpurlconnection2;
        flag = flag1;
          goto _L22
        IOException ioexception2;
        ioexception2;
        httpurlconnection = httpurlconnection2;
        ioexception1 = ioexception2;
        flag = false;
          goto _L23
        IOException ioexception3;
        ioexception3;
        httpurlconnection = httpurlconnection2;
        flag = flag1;
        ioexception1 = ioexception3;
          goto _L23
        MalformedURLException malformedurlexception2;
        malformedurlexception2;
        httpurlconnection = httpurlconnection2;
        malformedurlexception1 = malformedurlexception2;
        flag = false;
          goto _L24
        MalformedURLException malformedurlexception3;
        malformedurlexception3;
        httpurlconnection = httpurlconnection2;
        flag = flag1;
        malformedurlexception1 = malformedurlexception3;
          goto _L24
        UnsupportedEncodingException unsupportedencodingexception2;
        unsupportedencodingexception2;
        httpurlconnection = httpurlconnection2;
        unsupportedencodingexception1 = unsupportedencodingexception2;
        flag = false;
          goto _L25
        UnsupportedEncodingException unsupportedencodingexception3;
        unsupportedencodingexception3;
        httpurlconnection = httpurlconnection2;
        flag = flag1;
        unsupportedencodingexception1 = unsupportedencodingexception3;
          goto _L25
        UnsupportedOperationException unsupportedoperationexception1;
        unsupportedoperationexception1;
        httpurlconnection1 = httpurlconnection2;
        flag = false;
          goto _L19
    }

    public void a()
    {
        if (g != null)
        {
            g.dismiss();
            g = null;
        }
        h = null;
    }

    public void a(l l1)
    {
        h = l1;
        if (g == null)
        {
            g = ProgressDialog.show(h.j(), "", i, true, false);
        }
    }

    protected void a(Boolean boolean1)
    {
        super.onPostExecute(boolean1);
        if (g != null)
        {
            g.dismiss();
            g = null;
        }
        if (h != null)
        {
            if (e || f)
            {
                (new android.app.AlertDialog.Builder(h.j())).setMessage(at.feedback_send_failed).setIcon(0x1080027).setTitle(at.send_feedback).setPositiveButton(0x104000a, null).create().show();
            }
            if (boolean1.booleanValue())
            {
                h.E();
            }
            return;
        } else
        {
            Log.e("QV", "BAD, BAD! Submit Feedback Async task finished while activity was not present. Well, is that so bad?");
            com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", "BAD, BAD! Submit Feedback Async task finished while activity was not present. Well, is that so bad?", "");
            return;
        }
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        a(h);
    }
}
