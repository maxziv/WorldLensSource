// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import com.b.a.f;
import com.questvisual.wordlens.as;
import com.questvisual.wordlens.e.a;
import com.questvisual.wordlens.messaging.MessageManager;
import com.questvisual.wordlens.messaging.g;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.questvisual.wordlens.c:
//            c

public class b extends AsyncTask
{

    private static int b[];
    private Context a;

    public b(Context context)
    {
        a = context;
    }

    static int[] a()
    {
        int ai[] = b;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[c.values().length];
        try
        {
            ai1[com.questvisual.wordlens.c.c.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[c.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        b = ai1;
        return ai1;
    }

    protected transient Boolean a(c ac[])
    {
        boolean flag;
        String s;
        SharedPreferences sharedpreferences;
        int i;
        flag = true;
        s = Thread.currentThread().getName();
        Thread.currentThread().setName(getClass().getSimpleName());
        if (flag != ac.length)
        {
            com.questvisual.wordlens.e.a.a("QV", "Illegal use of StatusCheckerTask!", "");
            Thread.currentThread().setName(s);
            return Boolean.valueOf(false);
        }
        sharedpreferences = a.getSharedPreferences("word.lens", 0);
        i = 0x80000000;
        a()[ac[0].ordinal()];
        JVM INSTR tableswitch 1 2: default 1322
    //                   1 125
    //                   2 336;
           goto _L1 _L2 _L3
_L10:
        String s7;
        if (s7 != null) goto _L5; else goto _L4
_L4:
        Boolean boolean1;
        Log.w("QV", "Empty response or no status check needed.");
        boolean1 = Boolean.valueOf(false);
        Thread.currentThread().setName(s);
        return boolean1;
_L2:
        String s13;
        int j3;
        s13 = sharedpreferences.getString("key.wordlens.last.retrieved.status", null);
        j3 = sharedpreferences.getInt("key.wordlens.last.loaded.info.version", -1);
        i = a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionCode;
_L9:
        if (s13 != null && i == j3) goto _L1; else goto _L6
_L6:
        Scanner scanner2 = (new Scanner(new BufferedInputStream(a.getResources().openRawResource(as.android)), "UTF-8")).useDelimiter("\\A");
        if (scanner2.hasNext()) goto _L8; else goto _L7
_L7:
        Boolean boolean6;
        Log.w("QV", "Unable to read status file from assets!");
        boolean6 = Boolean.valueOf(false);
        Thread.currentThread().setName(s);
        return boolean6;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
          goto _L9
        IOException ioexception;
        ioexception;
        Log.i("QV", (new StringBuilder("IO Error trying to submit status check request: ")).append(ioexception.getClass().getSimpleName()).append(": ").append(ioexception.getLocalizedMessage()).toString());
        Thread.currentThread().setName(s);
_L38:
        return Boolean.valueOf(false);
_L8:
        String s14 = scanner2.next();
        int k1;
        k1 = i;
        s7 = s14;
          goto _L10
_L3:
        long l;
        ConnectivityManager connectivitymanager;
        l = sharedpreferences.getLong("key.wordlens.last.server.check.millis", 0L);
        connectivitymanager = (ConnectivityManager)a.getSystemService("connectivity");
        if (connectivitymanager == null) goto _L12; else goto _L11
_L11:
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        if (networkinfo == null) goto _L12; else goto _L13
_L39:
        if (l + 0x240c8400L < System.currentTimeMillis())
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        if ((i1 & k) == 0) goto _L1; else goto _L14
_L14:
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL("http://www.questvisual.com/android/android.info")).openConnection();
        bufferedinputstream = new BufferedInputStream(httpurlconnection.getInputStream());
        s1 = httpurlconnection.getContentType();
        s2 = null;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_494;
        }
        j1 = s1.indexOf("charset=");
        s2 = null;
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_494;
        }
        s3 = s1.substring(j1);
        s2 = s3;
        if (s2 != null)
        {
            s4 = s2;
        } else
        {
            s4 = "UTF-8";
        }
        scanner1 = (new Scanner(bufferedinputstream, s4)).useDelimiter("\\A");
        scanner = scanner1;
_L17:
        if (scanner != null) goto _L16; else goto _L15
_L15:
        boolean5 = Boolean.valueOf(false);
        Thread.currentThread().setName(s);
        return boolean5;
        illegalargumentexception;
        String s5 = (new StringBuilder("Weird! Unsupported charset: ")).append(s2).append(" charsetToUse: ").append(s4).toString();
        Log.e("QV", s5);
        f.a("ERROR_WL_BUG", (new StringBuilder(String.valueOf(s5))).append(" - ").append(Build.FINGERPRINT).toString(), "");
        scanner = (new Scanner(bufferedinputstream)).useDelimiter("\\A");
          goto _L17
_L16:
        if (scanner.hasNext()) goto _L19; else goto _L18
_L18:
        Log.w("QV", "No HTTP entity returned submitting status check request.");
        boolean4 = Boolean.valueOf(false);
        Thread.currentThread().setName(s);
        return boolean4;
_L19:
        s6 = scanner.next();
        k1 = i;
        s7 = s6;
          goto _L10
_L5:
        s8 = sharedpreferences.getString("key.wordlens.last.retrieved.status", null);
        if (s8 == null)
        {
            break MISSING_BLOCK_LABEL_754;
        }
        if (!s8.equals(s7))
        {
            break MISSING_BLOCK_LABEL_754;
        }
        boolean3 = Boolean.valueOf(false);
        Thread.currentThread().setName(s);
        return boolean3;
        jsonobject = new JSONObject(s7);
        jsonarray = jsonobject.getJSONArray("high_res_devices");
        if (jsonarray == null) goto _L21; else goto _L20
_L20:
        int l1;
        String s9 = jsonarray.toString();
        sharedpreferences.edit().putString("key.wordlens.high.res.devices", s9).commit();
        l1 = jsonarray.length();
        boolean flag1;
        int i2;
        flag1 = false;
        i2 = 0;
          goto _L22
_L40:
        sharedpreferences.edit().putBoolean("key.device.is.high.res.approved", flag1).commit();
        Log.i("QV", (new StringBuilder("Device (")).append(Build.DEVICE).append(") high res approved? ").append(flag1).toString());
_L21:
        jsonarray1 = jsonobject.getJSONArray("samsung_cam_mode_one_hack");
        if (jsonarray1 == null) goto _L24; else goto _L23
_L23:
        int j2 = jsonarray1.length();
        int k2 = 0;
          goto _L25
_L34:
        boolean flag2;
        sharedpreferences.edit().putBoolean("key.device.needs.samsungs.hd.cam.mode.one.hack", flag2).commit();
        Log.i("QV", (new StringBuilder("Device (")).append(Build.DEVICE).append(") needs Samsung cam_mode hack? ").append(flag2).toString());
_L24:
        jsonarray2 = jsonobject.getJSONArray("htc_cam_mode_hack");
        if (jsonarray2 == null) goto _L27; else goto _L26
_L26:
        int l2 = jsonarray2.length();
        int i3 = 0;
          goto _L28
_L37:
        sharedpreferences.edit().putBoolean("key.device.needs.htc.cam.mode.hack", flag).commit();
        Log.i("QV", (new StringBuilder("Device (")).append(Build.DEVICE).append(") needs HTC cam-mode hack? ").append(flag).toString());
_L27:
        sharedpreferences.edit().putString("key.wordlens.last.retrieved.status", s7).putInt("key.wordlens.last.loaded.info.version", k1).commit();
        boolean2 = Boolean.valueOf(true);
        Thread.currentThread().setName(s);
        return boolean2;
_L41:
        s12 = jsonarray.getString(i2);
        if (s12 == null) goto _L30; else goto _L29
_L29:
        if (s12.equalsIgnoreCase(Build.DEVICE))
        {
            flag1 = flag;
        }
          goto _L30
_L43:
        s11 = jsonarray1.getString(k2);
        if (s11 == null) goto _L32; else goto _L31
_L31:
        if (!s11.equalsIgnoreCase(Build.DEVICE)) goto _L32; else goto _L33
_L33:
        flag2 = flag;
          goto _L34
_L45:
        s10 = jsonarray2.getString(i3);
        if (s10 == null) goto _L36; else goto _L35
_L35:
        flag3 = s10.equalsIgnoreCase(Build.DEVICE);
        if (flag3) goto _L37; else goto _L36
_L36:
        i3++;
        continue; /* Loop/switch isn't completed */
        jsonexception;
        Log.e("QV", (new StringBuilder("Unable to parse status check: ")).append(jsonexception.getLocalizedMessage()).toString());
        Thread.currentThread().setName(s);
          goto _L38
        exception1;
        Log.e("QV", "Unhandled error trying to do status check. Too bad!", exception1);
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", (new StringBuilder("Unhandled exception trying to do status check: ")).append(exception1.getLocalizedMessage()).append("__").append(Build.FINGERPRINT).toString(), "");
        Thread.currentThread().setName(s);
          goto _L38
        exception;
        Thread.currentThread().setName(s);
        throw exception;
_L12:
        k = 0;
          goto _L39
_L1:
        k1 = i;
        s7 = null;
          goto _L10
_L13:
        Exception exception;
        Exception exception1;
        JSONException jsonexception;
        int j;
        int k;
        int i1;
        BufferedInputStream bufferedinputstream;
        String s1;
        String s2;
        int j1;
        String s3;
        String s4;
        IllegalArgumentException illegalargumentexception;
        Scanner scanner;
        String s6;
        String s8;
        JSONObject jsonobject;
        JSONArray jsonarray;
        JSONArray jsonarray1;
        JSONArray jsonarray2;
        Boolean boolean2;
        String s10;
        boolean flag3;
        String s11;
        String s12;
        Boolean boolean3;
        Boolean boolean4;
        Boolean boolean5;
        Scanner scanner1;
        if (networkinfo.isRoaming())
        {
            j = 0;
        } else
        {
            j = ((flag) ? 1 : 0);
        }
        k = j;
          goto _L39
_L22:
        if (i2 < l1 && !flag1) goto _L41; else goto _L40
_L25:
        if (k2 < j2) goto _L43; else goto _L42
_L42:
        flag2 = false;
          goto _L34
_L28:
        if (i3 < l2) goto _L45; else goto _L44
_L44:
        flag = false;
          goto _L37
_L30:
        i2++;
          goto _L22
_L32:
        k2++;
          goto _L25
    }

    protected void a(Boolean boolean1)
    {
        Log.i("QV", (new StringBuilder("Status Check complete! success=")).append(boolean1).toString());
        if (boolean1 != null && boolean1.booleanValue())
        {
            MessageManager.a(g.v);
        }
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((c[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }
}
