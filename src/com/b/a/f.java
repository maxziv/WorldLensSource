// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.DigestOutputStream;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.b.a:
//            b, aj, p, o, 
//            t, ak, a, w, 
//            u, s, ai, y, 
//            aa, g, h, v, 
//            j, e, ah

public final class f
    implements LocationListener
{

    static String a;
    private static final String b[] = {
        "9774d56d682e549c", "dead00beef"
    };
    private static volatile String c = null;
    private static volatile String d = "http://data.flurry.com/aap.do";
    private static volatile String e = "https://data.flurry.com/aap.do";
    private static volatile String f = null;
    private static volatile String g = "http://ad.flurry.com/getCanvas.do";
    private static volatile String h = null;
    private static volatile String i = "http://ad.flurry.com/getAndroidApp.do";
    private static final f j = new f();
    private static long k = 10000L;
    private static boolean l = true;
    private static boolean m = false;
    private static boolean n = false;
    private static boolean o = true;
    private static Criteria p = null;
    private static boolean q = false;
    private static b r = new b();
    private static AtomicInteger s = new AtomicInteger(0);
    private static AtomicInteger t = new AtomicInteger(0);
    private Map A;
    private String B;
    private String C;
    private String D;
    private boolean E;
    private List F;
    private LocationManager G;
    private String H;
    private boolean I;
    private long J;
    private byte K[];
    private List L;
    private long M;
    private long N;
    private long O;
    private String P;
    private String Q;
    private byte R;
    private String S;
    private byte T;
    private Long U;
    private int V;
    private Location W;
    private Map X;
    private List Y;
    private boolean Z;
    private int aa;
    private List ab;
    private int ac;
    private aj ad;
    private final Handler u;
    private File v;
    private File w;
    private volatile boolean x;
    private volatile boolean y;
    private long z;

    private f()
    {
        w = null;
        x = false;
        y = false;
        A = new WeakHashMap();
        E = true;
        L = new ArrayList();
        P = "";
        Q = "";
        R = -1;
        S = "";
        T = -1;
        X = new HashMap();
        Y = new ArrayList();
        ab = new ArrayList();
        ad = new aj();
        HandlerThread handlerthread = new HandlerThread("FlurryAgent");
        handlerthread.start();
        u = new Handler(handlerthread.getLooper());
    }

    private static double a(double d1)
    {
        return (double)Math.round(d1 * 1000D) / 1000D;
    }

    static String a()
    {
        if (h != null)
        {
            return h;
        } else
        {
            return i;
        }
    }

    private HttpClient a(HttpParams httpparams)
    {
        DefaultHttpClient defaulthttpclient;
        try
        {
            KeyStore keystore = KeyStore.getInstance(KeyStore.getDefaultType());
            keystore.load(null, null);
            p p1 = new p(this, keystore);
            SchemeRegistry schemeregistry = new SchemeRegistry();
            schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeregistry.register(new Scheme("https", p1, 443));
            defaulthttpclient = new DefaultHttpClient(new ThreadSafeClientConnManager(httpparams, schemeregistry), httpparams);
        }
        catch (Exception exception)
        {
            return new DefaultHttpClient(httpparams);
        }
        return defaulthttpclient;
    }

    public static void a(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Null context");
        }
        try
        {
            j.a(context, false);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", "", throwable);
        }
    }

    public static void a(Context context, String s1)
    {
        if (context == null)
        {
            throw new NullPointerException("Null context");
        }
        if (s1 == null || s1.length() == 0)
        {
            throw new IllegalArgumentException("Api key not specified");
        }
        try
        {
            j.b(context, s1);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", "", throwable);
        }
    }

    private void a(Context context, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        if ((Context)A.remove(context) == null)
        {
            com.b.a.o.d("FlurryAgent", "onEndSession called without context from corresponding onStartSession");
        }
        if (!x || !A.isEmpty()) goto _L2; else goto _L1
_L1:
        com.b.a.o.a("FlurryAgent", "Ending session");
        j();
        if (context != null) goto _L4; else goto _L3
_L3:
        Context context2 = null;
_L6:
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        String s1 = context2.getPackageName();
        if (!C.equals(s1))
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("onEndSession called from different application package, expected: ").append(C).append(" actual: ").append(s1).toString());
        }
        long l1 = SystemClock.elapsedRealtime();
        z = l1;
        O = l1 - N;
        if (H == null)
        {
            com.b.a.o.b("FlurryAgent", "Not creating report because of bad Android ID or generated ID is null");
        }
        a(((Runnable) (new t(this, flag, context2))));
        x = false;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        Context context1 = context.getApplicationContext();
        context2 = context1;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    static void a(f f1, Context context)
    {
        f1.b(context);
    }

    static void a(f f1, Context context, boolean flag)
    {
        Location location;
        location = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        location = f1.e(context);
        f1;
        JVM INSTR monitorenter ;
        f1.W = location;
        f1;
        JVM INSTR monitorexit ;
        Exception exception;
        try
        {
            if (q)
            {
                f1.ad.b();
            }
            f1.K = f(context);
            com.b.a.o.c("FlurryAgent", (new StringBuilder()).append("Fetching IMEI: ").append(f1.K).toString());
            f1.e(true);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", "", throwable);
        }
        break MISSING_BLOCK_LABEL_96;
        exception;
        f1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(DataInputStream datainputstream)
    {
        HashMap hashmap;
        HashMap hashmap1;
        HashMap hashmap2;
        HashMap hashmap3;
        HashMap hashmap4;
        HashMap hashmap5;
        hashmap = new HashMap();
        hashmap1 = new HashMap();
        hashmap2 = new HashMap();
        hashmap3 = new HashMap();
        hashmap4 = new HashMap();
        hashmap5 = new HashMap();
_L19:
        int i1;
        int j1;
        i1 = datainputstream.readUnsignedShort();
        j1 = datainputstream.readInt();
        i1;
        JVM INSTR tableswitch 258 273: default 144
    //                   258 228
    //                   259 236
    //                   260 144
    //                   261 144
    //                   262 301
    //                   263 350
    //                   264 178
    //                   265 144
    //                   266 434
    //                   267 144
    //                   268 536
    //                   269 657
    //                   270 424
    //                   271 484
    //                   272 584
    //                   273 667;
           goto _L1 _L2 _L3 _L1 _L1 _L4 _L5 _L6 _L1 _L7 _L1 _L8 _L9 _L10 _L11 _L12 _L13
_L6:
        break; /* Loop/switch isn't completed */
_L1:
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Unknown chunkType: ").append(i1).toString());
        datainputstream.skipBytes(j1);
_L17:
        if (i1 == 264)
        {
            if (q)
            {
                if (hashmap.isEmpty())
                {
                    com.b.a.o.a("FlurryAgent", "No ads from server");
                }
                ad.a(hashmap, hashmap3, hashmap4, hashmap1, hashmap2, hashmap5);
            }
            return;
        }
          goto _L14
_L2:
        datainputstream.readInt();
          goto _L15
_L3:
        byte byte2 = datainputstream.readByte();
        int i4 = datainputstream.readUnsignedShort();
        ak aak[] = new ak[i4];
        for (int j4 = 0; j4 < i4; j4++)
        {
            aak[j4] = new ak(datainputstream);
        }

        hashmap.put(Byte.valueOf(byte2), aak);
          goto _L15
_L4:
        int k3 = datainputstream.readUnsignedShort();
        int l3 = 0;
        while (l3 < k3) 
        {
            a a1 = new a(datainputstream);
            hashmap1.put(Long.valueOf(a1.a), a1);
            l3++;
        }
          goto _L15
_L5:
        int i3 = datainputstream.readInt();
        int j3 = 0;
        while (j3 < i3) 
        {
            w w1 = new w(datainputstream);
            hashmap3.put(w1.a, w1);
            com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Parsed hook: ").append(w1).toString());
            j3++;
        }
          goto _L15
_L10:
        datainputstream.skipBytes(j1);
          goto _L15
_L7:
        byte byte1 = datainputstream.readByte();
        int k2 = 0;
        while (k2 < byte1) 
        {
            u u2 = new u(datainputstream);
            hashmap4.put(Byte.valueOf(u2.a), u2);
            k2++;
        }
          goto _L15
_L11:
        byte byte0 = datainputstream.readByte();
        int j2 = 0;
        while (j2 < byte0) 
        {
            u u1 = (u)hashmap4.get(Byte.valueOf(datainputstream.readByte()));
            if (u1 != null)
            {
                u1.a(datainputstream);
            }
            j2++;
        }
          goto _L15
_L8:
        int k1 = datainputstream.readInt();
        int i2 = 0;
        while (i2 < k1) 
        {
            long l2 = datainputstream.readLong();
            hashmap5.put(Short.valueOf(datainputstream.readShort()), Long.valueOf(l2));
            i2++;
        }
          goto _L15
_L12:
        long l1 = datainputstream.readLong();
        s s1 = (s)hashmap2.get(Long.valueOf(l1));
        if (s1 == null)
        {
            s1 = new s();
        }
        s1.a = datainputstream.readUTF();
        s1.c = datainputstream.readInt();
        hashmap2.put(Long.valueOf(l1), s1);
          goto _L15
_L9:
        datainputstream.skipBytes(j1);
          goto _L15
_L13:
        datainputstream.skipBytes(j1);
_L15:
        if (true) goto _L17; else goto _L16
_L16:
_L14:
        if (true) goto _L19; else goto _L18
_L18:
    }

    private void a(Runnable runnable)
    {
        u.post(runnable);
    }

    public static void a(String s1)
    {
        try
        {
            j.a(s1, ((Map) (null)), false);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("Failed to log event: ").append(s1).toString(), throwable);
        }
    }

    public static void a(String s1, String s2, String s3)
    {
        try
        {
            j.b(s1, s2, s3);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", "", throwable);
        }
    }

    public static void a(String s1, Map map)
    {
        try
        {
            j.a(s1, map, false);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("Failed to log event: ").append(s1).toString(), throwable);
        }
    }

    private void a(String s1, Map map, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (Y != null) goto _L2; else goto _L1
_L1:
        com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("onEvent called before onStartSession.  Event: ").append(s1).toString());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        long l1;
        String s2;
        l1 = SystemClock.elapsedRealtime() - N;
        s2 = ai.a(s1, 255);
        if (s2.length() == 0) goto _L4; else goto _L3
_L3:
        y y1 = (y)X.get(s2);
        if (y1 != null) goto _L6; else goto _L5
_L5:
        if (X.size() >= 100) goto _L8; else goto _L7
_L7:
        y y2 = new y();
        y2.a = 1;
        X.put(s2, y2);
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Event count incremented: ").append(s2).toString());
_L14:
        if (!l || Y.size() >= 200 || aa >= 16000) goto _L10; else goto _L9
_L9:
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_460;
        }
        Map map1 = Collections.emptyMap();
_L15:
        if (map1.size() <= 10) goto _L12; else goto _L11
_L11:
        if (com.b.a.o.a("FlurryAgent"))
        {
            com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("MaxEventParams exceeded: ").append(map1.size()).toString());
        }
          goto _L4
        Exception exception;
        exception;
        throw exception;
_L8:
        if (!com.b.a.o.a("FlurryAgent")) goto _L14; else goto _L13
_L13:
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Too many different events. Event not counted: ").append(s2).toString());
          goto _L14
_L6:
        y1.a = 1 + y1.a;
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Event count incremented: ").append(s2).toString());
          goto _L14
_L12:
label0:
        {
            aa aa1 = new aa(s2, map1, l1, flag);
            if (aa1.a().length + aa > 16000)
            {
                break label0;
            }
            Y.add(aa1);
            aa = aa + aa1.a().length;
            com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Logged event: ").append(s2).toString());
        }
          goto _L4
        aa = 16000;
        Z = false;
        com.b.a.o.a("FlurryAgent", "Event Log size exceeded. No more event details logged.");
          goto _L4
_L10:
        Z = false;
          goto _L4
        map1 = map;
          goto _L15
    }

    public static void a(String s1, boolean flag)
    {
        try
        {
            j.a(s1, ((Map) (null)), flag);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("Failed to log event: ").append(s1).toString(), throwable);
        }
    }

    public static void a(boolean flag)
    {
        f f1 = j;
        f1;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        com.b.a.o.b();
_L2:
        f1;
        JVM INSTR monitorexit ;
        return;
        com.b.a.o.a();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        f1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static boolean a(f f1)
    {
        return f1.y;
    }

    private static boolean a(File file)
    {
        File file1 = file.getParentFile();
        if (!file1.mkdirs() && !file1.exists())
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("Unable to create persistent dir: ").append(file1).toString());
            return false;
        } else
        {
            return true;
        }
    }

    private boolean a(byte abyte0[])
    {
        String s1 = h();
        if (s1 != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L6:
        return flag;
_L2:
        boolean flag2 = a(abyte0, s1);
        flag = flag2;
_L4:
        if (flag || c != null || !m || n)
        {
            break; /* Loop/switch isn't completed */
        }
        f f1 = j;
        f1;
        JVM INSTR monitorenter ;
        String s2;
        n = true;
        s2 = h();
        if (s2 != null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        f1;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Sending report exception: ").append(exception.getMessage()).toString());
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
        f1;
        JVM INSTR monitorexit ;
        Exception exception1;
        boolean flag1;
        try
        {
            flag1 = a(abyte0, s2);
        }
        catch (Exception exception2)
        {
            return flag;
        }
        return flag1;
        exception1;
        f1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    private boolean a(byte abyte0[], String s1)
    {
        boolean flag;
        HttpResponse httpresponse;
        flag = true;
        if ("local".equals(s1))
        {
            return flag;
        }
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Sending report to: ").append(s1).toString());
        ByteArrayEntity bytearrayentity = new ByteArrayEntity(abyte0);
        bytearrayentity.setContentType("application/octet-stream");
        HttpPost httppost = new HttpPost(s1);
        httppost.setEntity(bytearrayentity);
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 15000);
        httppost.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        httpresponse = a(((HttpParams) (basichttpparams))).execute(httppost);
        int i1 = httpresponse.getStatusLine().getStatusCode();
        this;
        JVM INSTR monitorenter ;
        if (i1 != 200) goto _L2; else goto _L1
_L1:
        HttpEntity httpentity;
        com.b.a.o.a("FlurryAgent", "Report successful");
        I = true;
        L.removeAll(F);
        httpentity = httpresponse.getEntity();
        com.b.a.o.a("FlurryAgent", "Processing report response");
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        long l1 = httpentity.getContentLength();
        if (l1 == 0L)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        a(new DataInputStream(httpentity.getContent()));
        httpentity.consumeContent();
_L3:
        F = null;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        httpentity.consumeContent();
        throw exception1;
_L2:
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Report failed. HTTP response: ").append(i1).toString());
        flag = false;
          goto _L3
    }

    static int b()
    {
        return s.incrementAndGet();
    }

    private void b(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        H = c(context);
        if (!w.exists()) goto _L2; else goto _L1
_L1:
        com.b.a.o.c("FlurryAgent", (new StringBuilder()).append("loading persistent data: ").append(w.getAbsolutePath()).toString());
        DataInputStream datainputstream = new DataInputStream(new FileInputStream(w));
        if (datainputstream.readUnsignedShort() != 46586) goto _L4; else goto _L3
_L3:
        b(datainputstream);
_L9:
        ai.a(datainputstream);
_L10:
        if (y) goto _L6; else goto _L5
_L5:
        if (!w.delete()) goto _L8; else goto _L7
_L7:
        com.b.a.o.a("FlurryAgent", "Deleted persistence file");
_L6:
        if (!y)
        {
            I = false;
            J = M;
            y = true;
        }
        if (H == null)
        {
            long l1 = Double.doubleToLongBits(Math.random()) + 37L * (System.nanoTime() + (long)(37 * B.hashCode()));
            H = (new StringBuilder()).append("ID").append(Long.toString(l1, 16)).toString();
            com.b.a.o.c("FlurryAgent", "Generated id");
        }
        ad.a(H);
        if (!H.startsWith("AND") && !v.exists())
        {
            c(context, H);
        }
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        com.b.a.o.a("FlurryAgent", "Unexpected file type");
          goto _L9
        Throwable throwable;
        throwable;
_L12:
        com.b.a.o.b("FlurryAgent", "Error when loading persistent file", throwable);
        ai.a(datainputstream);
          goto _L10
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        datainputstream = null;
_L11:
        ai.a(datainputstream);
        throw exception1;
_L8:
        com.b.a.o.b("FlurryAgent", "Cannot delete persistence file");
          goto _L6
        Throwable throwable1;
        throwable1;
        com.b.a.o.b("FlurryAgent", "", throwable1);
          goto _L6
_L2:
        com.b.a.o.c("FlurryAgent", "Agent cache file doesn't exist.");
          goto _L6
        exception1;
          goto _L11
        throwable;
        datainputstream = null;
          goto _L12
    }

    private void b(Context context, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if (B != null && !B.equals(s1))
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("onStartSession called with different api keys: ").append(B).append(" and ").append(s1).toString());
        }
        if ((Context)A.put(context, context) != null)
        {
            com.b.a.o.d("FlurryAgent", "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context");
        }
        if (x) goto _L2; else goto _L1
_L1:
        Context context1;
        long l1;
        com.b.a.o.a("FlurryAgent", "Initializing Flurry session");
        s.set(0);
        t.set(0);
        B = s1;
        w = context.getFileStreamPath((new StringBuilder()).append(".flurryagent.").append(Integer.toString(B.hashCode(), 16)).toString());
        v = context.getFileStreamPath(".flurryb.");
        if (o)
        {
            Thread.setDefaultUncaughtExceptionHandler(new g());
        }
        context1 = context.getApplicationContext();
        if (D == null)
        {
            D = d(context1);
        }
        String s2 = context1.getPackageName();
        if (C != null && !C.equals(s2))
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("onStartSession called from different application packages: ").append(C).append(" and ").append(s2).toString());
        }
        C = s2;
        l1 = SystemClock.elapsedRealtime();
        if (l1 - z <= k) goto _L4; else goto _L3
_L3:
        com.b.a.o.a("FlurryAgent", "New session");
        M = System.currentTimeMillis();
        N = l1;
        O = -1L;
        S = "";
        V = 0;
        W = null;
        Q = TimeZone.getDefault().getID();
        P = (new StringBuilder()).append(Locale.getDefault().getLanguage()).append("_").append(Locale.getDefault().getCountry()).toString();
        X = new HashMap();
        Y = new ArrayList();
        Z = true;
        ab = new ArrayList();
        aa = 0;
        ac = 0;
        if (!q) goto _L6; else goto _L5
_L5:
        if (ad.a()) goto _L8; else goto _L7
_L7:
        h h1;
        com.b.a.o.a("FlurryAgent", "Initializing AppCircle");
        h1 = new h();
        h1.a = B;
        h1.b = J;
        if (f == null) goto _L10; else goto _L9
_L9:
        String s3 = f;
_L11:
        h1.c = s3;
        h1.d = a();
        h1.e = u;
        ad.a(context, h1);
        com.b.a.o.a("FlurryAgent", "AppCircle initialized");
_L8:
        ad.a(M, N);
_L6:
        a(new v(this, context1, E));
_L12:
        x = true;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L10:
        s3 = g;
          goto _L11
_L4:
        com.b.a.o.a("FlurryAgent", "Continuing previous session");
        if (!L.isEmpty())
        {
            L.remove(-1 + L.size());
        }
          goto _L12
        Exception exception;
        exception;
        throw exception;
          goto _L11
    }

    static void b(f f1)
    {
        f1.g();
    }

    static void b(f f1, Context context)
    {
        f1;
        JVM INSTR monitorenter ;
        long l1;
        boolean flag;
        l1 = SystemClock.elapsedRealtime() - f1.z;
        flag = f1.x;
        boolean flag1;
        flag1 = false;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        int i1 = l1 != k;
        flag1 = false;
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        int j1 = f1.L.size();
        flag1 = false;
        if (j1 > 0)
        {
            flag1 = true;
        }
        f1;
        JVM INSTR monitorexit ;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        f1.e(false);
        return;
        Exception exception;
        exception;
        f1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", "", throwable);
        }
        return;
    }

    private void b(DataInputStream datainputstream)
    {
        int i1 = 0;
        this;
        JVM INSTR monitorenter ;
        int j1 = datainputstream.readUnsignedShort();
        if (j1 <= 2)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("Unknown agent file version: ").append(j1).toString());
        throw new IOException((new StringBuilder()).append("Unknown agent file version: ").append(j1).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (j1 < 2)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        String s1;
        s1 = datainputstream.readUTF();
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Loading API key: ").append(d(B)).toString());
        if (!s1.equals(B)) goto _L2; else goto _L1
_L1:
        String s2 = datainputstream.readUTF();
        if (H == null)
        {
            com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Loading phoneId: ").append(s2).toString());
        }
        H = s2;
        I = datainputstream.readBoolean();
        J = datainputstream.readLong();
        com.b.a.o.a("FlurryAgent", "Loading session reports");
_L3:
        int k1 = datainputstream.readUnsignedShort();
        if (k1 == 0)
        {
            break MISSING_BLOCK_LABEL_275;
        }
        StringBuilder stringbuilder;
        byte abyte0[] = new byte[k1];
        datainputstream.readFully(abyte0);
        L.add(0, abyte0);
        stringbuilder = (new StringBuilder()).append("Session report added: ");
        i1++;
        com.b.a.o.a("FlurryAgent", stringbuilder.append(i1).toString());
          goto _L3
        com.b.a.o.a("FlurryAgent", "Persistent file loaded");
        y = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Api keys do not match, old: ").append(d(s1)).append(", new: ").append(d(B)).toString());
          goto _L4
        com.b.a.o.d("FlurryAgent", (new StringBuilder()).append("Deleting old file version: ").append(j1).toString());
          goto _L4
    }

    public static void b(String s1)
    {
        try
        {
            j.c(s1);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("Failed to signify the end of event: ").append(s1).toString(), throwable);
        }
    }

    private void b(String s1, String s2, String s3)
    {
        this;
        JVM INSTR monitorenter ;
        if (ab != null) goto _L2; else goto _L1
_L1:
        com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("onError called before onStartSession.  Error: ").append(s1).toString());
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        V = 1 + V;
        if (ab.size() >= 10)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        j j1 = new j();
        j1.b = System.currentTimeMillis();
        j1.c = ai.a(s1, 255);
        j1.d = ai.a(s2, 512);
        j1.e = ai.a(s3, 255);
        ab.add(j1);
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("Error logged: ").append(j1.c).toString());
          goto _L3
        Exception exception;
        exception;
        throw exception;
        com.b.a.o.a("FlurryAgent", "Max errors logged. No more errors logged.");
          goto _L3
    }

    public static void b(boolean flag)
    {
        m = flag;
    }

    static int c()
    {
        return t.incrementAndGet();
    }

    private String c(Context context)
    {
        if (H == null) goto _L2; else goto _L1
_L1:
        String s2 = H;
_L9:
        return s2;
_L2:
        String s1;
        boolean flag;
        s1 = android.provider.Settings.System.getString(context.getContentResolver(), "android_id");
        flag = false;
        if (s1 == null) goto _L4; else goto _L3
_L3:
        int i1;
        i1 = s1.length();
        flag = false;
        if (i1 <= 0) goto _L4; else goto _L5
_L5:
        boolean flag2;
        flag2 = s1.equals("null");
        flag = false;
        if (!flag2) goto _L6; else goto _L4
_L4:
        if (flag)
        {
            return (new StringBuilder()).append("AND").append(s1).toString();
        }
        break; /* Loop/switch isn't completed */
_L6:
        String as[] = b;
        int j1 = as.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            boolean flag3 = s1.equals(as[k1]);
            flag = false;
            if (flag3)
            {
                continue; /* Loop/switch isn't completed */
            }
        }

        flag = true;
        if (true) goto _L4; else goto _L7
_L7:
        File file;
        boolean flag1;
        file = context.getFileStreamPath(".flurryb.");
        flag1 = file.exists();
        s2 = null;
        if (!flag1) goto _L9; else goto _L8
_L8:
        DataInputStream datainputstream = new DataInputStream(new FileInputStream(file));
        String s3;
        datainputstream.readInt();
        s3 = datainputstream.readUTF();
        ai.a(datainputstream);
        return s3;
        Throwable throwable;
        throwable;
        datainputstream = null;
_L13:
        com.b.a.o.b("FlurryAgent", "Error when loading b file", throwable);
        ai.a(datainputstream);
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        datainputstream = null;
        exception = exception1;
_L11:
        ai.a(datainputstream);
        throw exception;
        exception;
        if (true) goto _L11; else goto _L10
_L10:
        throwable;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private void c(Context context, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        v = context.getFileStreamPath(".flurryb.");
        flag = a(v);
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(v));
        dataoutputstream.writeInt(1);
        dataoutputstream.writeUTF(s1);
        ai.a(dataoutputstream);
          goto _L1
        Exception exception;
        exception;
        throw exception;
        Throwable throwable;
        throwable;
        dataoutputstream = null;
_L4:
        com.b.a.o.b("FlurryAgent", "Error when saving b file", throwable);
        ai.a(dataoutputstream);
          goto _L1
_L3:
        Exception exception1;
        ai.a(dataoutputstream);
        throw exception1;
        exception1;
          goto _L3
        throwable;
          goto _L4
        exception1;
        dataoutputstream = null;
          goto _L3
    }

    static void c(f f1)
    {
        f1.i();
    }

    private void c(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = Y.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aa aa1 = (aa)iterator.next();
            if (!aa1.a(s1))
            {
                continue;
            }
            aa1.a(SystemClock.elapsedRealtime() - N);
            break;
        } while (true);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void c(boolean flag)
    {
label0:
        {
            synchronized (j)
            {
                if (!j.x)
                {
                    break label0;
                }
                com.b.a.o.b("FlurryAgent", "Cannot setCaptureUncaughtExceptions after onSessionStart");
            }
            return;
        }
        o = flag;
        f1;
        JVM INSTR monitorexit ;
        return;
        exception;
        f1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static Handler d(f f1)
    {
        return f1.u;
    }

    static f d()
    {
        return j;
    }

    private static String d(Context context)
    {
        String s1;
        PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        if (packageinfo.versionName != null)
        {
            return packageinfo.versionName;
        }
        if (packageinfo.versionCode == 0)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        s1 = Integer.toString(packageinfo.versionCode);
        return s1;
        Throwable throwable;
        throwable;
        com.b.a.o.b("FlurryAgent", "", throwable);
        return "Unknown";
    }

    private static String d(String s1)
    {
        if (s1 != null && s1.length() > 4)
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (int i1 = 0; i1 < -4 + s1.length(); i1++)
            {
                stringbuilder.append('*');
            }

            stringbuilder.append(s1.substring(-4 + s1.length()));
            s1 = stringbuilder.toString();
        }
        return s1;
    }

    private byte[] d(boolean flag)
    {
        int i1 = 0;
        this;
        JVM INSTR monitorenter ;
        e e1;
        ByteArrayOutputStream bytearrayoutputstream;
        DigestOutputStream digestoutputstream;
        DataOutputStream dataoutputstream;
        e1 = new e();
        bytearrayoutputstream = new ByteArrayOutputStream();
        digestoutputstream = new DigestOutputStream(bytearrayoutputstream, e1);
        dataoutputstream = new DataOutputStream(digestoutputstream);
        dataoutputstream.writeShort(22);
        if (!q || !flag) goto _L2; else goto _L1
_L1:
        dataoutputstream.writeShort(1);
_L6:
        if (!q) goto _L4; else goto _L3
_L3:
        dataoutputstream.writeLong(ad.d());
        Set set = ad.e();
        dataoutputstream.writeShort(set.size());
        long l1;
        for (Iterator iterator = set.iterator(); iterator.hasNext(); dataoutputstream.writeLong(l1))
        {
            l1 = ((Long)iterator.next()).longValue();
            dataoutputstream.writeByte(1);
        }

          goto _L5
        Throwable throwable;
        throwable;
_L11:
        com.b.a.o.b("FlurryAgent", "Error when generating report", throwable);
        ai.a(dataoutputstream);
        byte abyte0[] = null;
_L9:
        this;
        JVM INSTR monitorexit ;
        return abyte0;
_L2:
        dataoutputstream.writeShort(0);
          goto _L6
        Exception exception;
        exception;
_L10:
        ai.a(dataoutputstream);
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
_L4:
        dataoutputstream.writeLong(0L);
        dataoutputstream.writeShort(0);
_L5:
        dataoutputstream.writeShort(3);
        dataoutputstream.writeShort(122);
        dataoutputstream.writeLong(System.currentTimeMillis());
        dataoutputstream.writeUTF(B);
        dataoutputstream.writeUTF(D);
        int j1;
        int k1;
        byte abyte1[];
        if (K == null)
        {
            j1 = 1;
        } else
        {
            j1 = 2;
        }
        dataoutputstream.writeShort(j1);
        dataoutputstream.writeShort(0);
        dataoutputstream.writeUTF(H);
        if (j1 <= 1)
        {
            break MISSING_BLOCK_LABEL_354;
        }
        dataoutputstream.writeShort(5);
        dataoutputstream.writeShort(K.length);
        dataoutputstream.write(K);
        com.b.a.o.c("FlurryAgent", (new StringBuilder()).append("Sent IMEI: ").append(Arrays.toString(K)).toString());
        dataoutputstream.write(0);
        dataoutputstream.writeLong(J);
        dataoutputstream.writeLong(M);
        dataoutputstream.writeShort(6);
        dataoutputstream.writeUTF("device.model");
        dataoutputstream.writeUTF(Build.MODEL);
        dataoutputstream.writeUTF("build.brand");
        dataoutputstream.writeUTF(Build.BRAND);
        dataoutputstream.writeUTF("build.id");
        dataoutputstream.writeUTF(Build.ID);
        dataoutputstream.writeUTF("version.release");
        dataoutputstream.writeUTF(android.os.Build.VERSION.RELEASE);
        dataoutputstream.writeUTF("build.device");
        dataoutputstream.writeUTF(Build.DEVICE);
        dataoutputstream.writeUTF("build.product");
        dataoutputstream.writeUTF(Build.PRODUCT);
        k1 = L.size();
        dataoutputstream.writeShort(k1);
_L8:
        if (i1 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        dataoutputstream.write((byte[])L.get(i1));
        i1++;
        if (true) goto _L8; else goto _L7
_L7:
        F = new ArrayList(L);
        digestoutputstream.on(false);
        dataoutputstream.write(e1.a());
        dataoutputstream.close();
        abyte1 = bytearrayoutputstream.toByteArray();
        abyte0 = abyte1;
        ai.a(dataoutputstream);
          goto _L9
        exception;
        dataoutputstream = null;
          goto _L10
        throwable;
        dataoutputstream = null;
          goto _L11
    }

    static long e()
    {
        return k;
    }

    private Location e(Context context)
    {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0 && context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        LocationManager locationmanager = (LocationManager)context.getSystemService("location");
        this;
        JVM INSTR monitorenter ;
        if (G != null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        G = locationmanager;
_L1:
        this;
        JVM INSTR monitorexit ;
        Criteria criteria = p;
        if (criteria == null)
        {
            criteria = new Criteria();
        }
        String s1 = locationmanager.getBestProvider(criteria, true);
        if (s1 != null)
        {
            locationmanager.requestLocationUpdates(s1, 0L, 0.0F, this, Looper.getMainLooper());
            return locationmanager.getLastKnownLocation(s1);
        }
        break MISSING_BLOCK_LABEL_112;
        locationmanager = G;
          goto _L1
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        return null;
    }

    static aj e(f f1)
    {
        return f1.ad;
    }

    private void e(boolean flag)
    {
        byte abyte0[];
        com.b.a.o.a("FlurryAgent", "generating report");
        abyte0 = d(flag);
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        StringBuilder stringbuilder;
        if (!a(abyte0))
        {
            break MISSING_BLOCK_LABEL_117;
        }
        stringbuilder = (new StringBuilder()).append("Done sending ");
        String s1;
        if (x)
        {
            s1 = "initial ";
        } else
        {
            s1 = "";
        }
        try
        {
            com.b.a.o.a("FlurryAgent", stringbuilder.append(s1).append("agent report").toString());
            i();
            return;
        }
        catch (IOException ioexception)
        {
            com.b.a.o.a("FlurryAgent", "", ioexception);
            return;
        }
        catch (Throwable throwable)
        {
            com.b.a.o.b("FlurryAgent", "", throwable);
        }
        break MISSING_BLOCK_LABEL_117;
        com.b.a.o.a("FlurryAgent", "Error generating report");
        return;
    }

    static boolean f()
    {
        return q;
    }

    private static byte[] f(Context context)
    {
        String s1;
        if (context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        s1 = telephonymanager.getDeviceId();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        byte abyte0[] = ai.b(s1);
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        if (abyte0.length == 20)
        {
            return abyte0;
        }
        try
        {
            com.b.a.o.b("FlurryAgent", (new StringBuilder()).append("sha1 is not 20 bytes long: ").append(Arrays.toString(abyte0)).toString());
        }
        catch (Exception exception) { }
        return null;
    }

    private void g()
    {
        this;
        JVM INSTR monitorenter ;
        ByteArrayOutputStream bytearrayoutputstream;
        Object obj;
        bytearrayoutputstream = new ByteArrayOutputStream();
        obj = new DataOutputStream(bytearrayoutputstream);
        ((DataOutputStream) (obj)).writeShort(1);
        ((DataOutputStream) (obj)).writeUTF(D);
        ((DataOutputStream) (obj)).writeLong(M);
        ((DataOutputStream) (obj)).writeLong(O);
        ((DataOutputStream) (obj)).writeLong(0L);
        ((DataOutputStream) (obj)).writeUTF(P);
        ((DataOutputStream) (obj)).writeUTF(Q);
        ((DataOutputStream) (obj)).writeByte(R);
        if (S != null) goto _L2; else goto _L1
_L1:
        String s1 = "";
_L8:
        ((DataOutputStream) (obj)).writeUTF(s1);
        if (W != null) goto _L4; else goto _L3
_L3:
        ((DataOutputStream) (obj)).writeBoolean(false);
_L9:
        ((DataOutputStream) (obj)).writeInt(ac);
        ((DataOutputStream) (obj)).writeByte(-1);
        ((DataOutputStream) (obj)).writeByte(-1);
        ((DataOutputStream) (obj)).writeByte(T);
        if (U != null) goto _L6; else goto _L5
_L5:
        ((DataOutputStream) (obj)).writeBoolean(false);
_L10:
        ((DataOutputStream) (obj)).writeShort(X.size());
        java.util.Map.Entry entry;
        for (Iterator iterator = X.entrySet().iterator(); iterator.hasNext(); ((DataOutputStream) (obj)).writeInt(((y)entry.getValue()).a))
        {
            entry = (java.util.Map.Entry)iterator.next();
            ((DataOutputStream) (obj)).writeUTF((String)entry.getKey());
        }

          goto _L7
        IOException ioexception;
        ioexception;
        Object obj1 = obj;
_L13:
        com.b.a.o.b("FlurryAgent", "", ioexception);
        ai.a(((java.io.Closeable) (obj1)));
_L11:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        s1 = S;
          goto _L8
_L4:
        ((DataOutputStream) (obj)).writeBoolean(true);
        ((DataOutputStream) (obj)).writeDouble(a(W.getLatitude()));
        ((DataOutputStream) (obj)).writeDouble(a(W.getLongitude()));
        ((DataOutputStream) (obj)).writeFloat(W.getAccuracy());
          goto _L9
        Exception exception;
        exception;
_L12:
        ai.a(((java.io.Closeable) (obj)));
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
_L6:
        ((DataOutputStream) (obj)).writeBoolean(true);
        ((DataOutputStream) (obj)).writeLong(U.longValue());
          goto _L10
_L7:
        ((DataOutputStream) (obj)).writeShort(Y.size());
        for (Iterator iterator1 = Y.iterator(); iterator1.hasNext(); ((DataOutputStream) (obj)).write(((aa)iterator1.next()).a())) { }
        ((DataOutputStream) (obj)).writeBoolean(Z);
        ((DataOutputStream) (obj)).writeInt(V);
        ((DataOutputStream) (obj)).writeShort(ab.size());
        j j1;
        for (Iterator iterator2 = ab.iterator(); iterator2.hasNext(); ((DataOutputStream) (obj)).writeUTF(j1.e))
        {
            j1 = (j)iterator2.next();
            ((DataOutputStream) (obj)).writeShort(j1.a);
            ((DataOutputStream) (obj)).writeLong(j1.b);
            ((DataOutputStream) (obj)).writeUTF(j1.c);
            ((DataOutputStream) (obj)).writeUTF(j1.d);
        }

        if (q)
        {
            List list = ad.f();
            ((DataOutputStream) (obj)).writeShort(list.size());
            for (Iterator iterator3 = list.iterator(); iterator3.hasNext(); ((ah)iterator3.next()).a(((java.io.DataOutput) (obj)))) { }
            break MISSING_BLOCK_LABEL_572;
        }
        ((DataOutputStream) (obj)).writeShort(0);
        ((DataOutputStream) (obj)).writeShort(0);
        L.add(bytearrayoutputstream.toByteArray());
        ai.a(((java.io.Closeable) (obj)));
          goto _L11
        exception;
        obj = null;
          goto _L12
        exception;
        obj = obj1;
          goto _L12
        ioexception;
        obj1 = null;
          goto _L13
    }

    private static String h()
    {
        if (c != null)
        {
            return c;
        }
        if (n)
        {
            return d;
        }
        if (m)
        {
            return e;
        } else
        {
            return d;
        }
    }

    private void i()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a(w);
        if (flag) goto _L2; else goto _L1
_L1:
        ai.a(null);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(w));
        int i1;
        dataoutputstream.writeShort(46586);
        dataoutputstream.writeShort(2);
        dataoutputstream.writeUTF(B);
        dataoutputstream.writeUTF(H);
        dataoutputstream.writeBoolean(I);
        dataoutputstream.writeLong(J);
        i1 = -1 + L.size();
_L4:
        if (i1 < 0)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        byte abyte0[];
        int j1;
        abyte0 = (byte[])L.get(i1);
        j1 = abyte0.length;
        if (j1 + 2 + dataoutputstream.size() <= 50000)
        {
            break MISSING_BLOCK_LABEL_184;
        }
        com.b.a.o.a("FlurryAgent", (new StringBuilder()).append("discarded sessions: ").append(i1).toString());
        dataoutputstream.writeShort(0);
        ai.a(dataoutputstream);
          goto _L3
        Exception exception1;
        exception1;
        throw exception1;
        dataoutputstream.writeShort(j1);
        dataoutputstream.write(abyte0);
        i1--;
          goto _L4
        Throwable throwable;
        throwable;
        dataoutputstream = null;
_L6:
        com.b.a.o.b("FlurryAgent", "", throwable);
        ai.a(dataoutputstream);
          goto _L3
_L5:
        Exception exception;
        ai.a(dataoutputstream);
        throw exception;
        exception;
          goto _L5
        throwable;
          goto _L6
        exception;
        dataoutputstream = null;
          goto _L5
    }

    private void j()
    {
        this;
        JVM INSTR monitorenter ;
        if (G != null)
        {
            G.removeUpdates(this);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(Throwable throwable)
    {
        String s1;
        StackTraceElement astacktraceelement[];
        throwable.printStackTrace();
        s1 = "";
        astacktraceelement = throwable.getStackTrace();
        if (astacktraceelement == null || astacktraceelement.length <= 0) goto _L2; else goto _L1
_L1:
        StackTraceElement stacktraceelement = astacktraceelement[0];
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(stacktraceelement.getClassName()).append(".").append(stacktraceelement.getMethodName()).append(":").append(stacktraceelement.getLineNumber());
        if (throwable.getMessage() != null)
        {
            stringbuilder.append((new StringBuilder()).append(" (").append(throwable.getMessage()).append(")").toString());
        }
        s1 = stringbuilder.toString();
_L4:
        a("uncaught", s1, throwable.getClass().toString());
        A.clear();
        a(((Context) (null)), true);
        return;
_L2:
        if (throwable.getMessage() != null)
        {
            s1 = throwable.getMessage();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onLocationChanged(Location location)
    {
        this;
        JVM INSTR monitorenter ;
        W = location;
        j();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Throwable throwable;
        throwable;
        com.b.a.o.b("FlurryAgent", "", throwable);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void onProviderDisabled(String s1)
    {
    }

    public final void onProviderEnabled(String s1)
    {
    }

    public final void onStatusChanged(String s1, int i1, Bundle bundle)
    {
    }

}
