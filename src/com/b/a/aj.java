// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.b.a:
//            i, ak, o, ah, 
//            l, f, x, ai, 
//            al, k, r, h, 
//            n, c, a

final class aj
    implements android.view.View.OnClickListener
{

    private static volatile long A = 0L;
    static String a = "FlurryAgent";
    static String b = "";
    private static volatile String c = "market://";
    private static volatile String d = "market://details?id=";
    private static volatile String e = "https://market.android.com/details?id=";
    private static String f = "com.flurry.android.ACTION_CATALOG";
    private static int g = 5000;
    private String h;
    private String i;
    private String j;
    private long k;
    private long l;
    private long m;
    private long n;
    private i o;
    private boolean p;
    private volatile boolean q;
    private String r;
    private Map s;
    private Handler t;
    private boolean u;
    private transient Map v;
    private n w;
    private List x;
    private Map y;
    private c z;

    public aj()
    {
        p = true;
        s = new HashMap();
        v = new HashMap();
        x = new ArrayList();
        y = new HashMap();
        o = new i();
    }

    static c a(aj aj1)
    {
        return aj1.z;
    }

    static String a(aj aj1, String s1)
    {
        return aj1.b(s1);
    }

    private static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i1 = 0;
        while (i1 < abyte0.length) 
        {
            int j1 = 0xf & abyte0[i1] >> 4;
            int k1;
            if (j1 < 10)
            {
                stringbuilder.append((char)(j1 + 48));
            } else
            {
                stringbuilder.append((char)(-10 + (j1 + 65)));
            }
            k1 = 0xf & abyte0[i1];
            if (k1 < 10)
            {
                stringbuilder.append((char)(k1 + 48));
            } else
            {
                stringbuilder.append((char)(-10 + (k1 + 65)));
            }
            i1++;
        }
        return stringbuilder.toString();
    }

    private List a(List list, Long long1)
    {
label0:
        {
            ArrayList arraylist;
label1:
            {
                if (list == null || list.isEmpty() || !o.b())
                {
                    return Collections.emptyList();
                }
                ak aak[] = o.a((String)list.get(0));
                if (aak == null || aak.length <= 0)
                {
                    break label0;
                }
                arraylist = new ArrayList(Arrays.asList(aak));
                Collections.shuffle(arraylist);
                if (long1 == null)
                {
                    break label1;
                }
                Iterator iterator = arraylist.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label1;
                    }
                } while (((ak)iterator.next()).a != long1.longValue());
                iterator.remove();
            }
            return arraylist.subList(0, Math.min(arraylist.size(), list.size()));
        }
        return Collections.emptyList();
    }

    static void a(aj aj1, Context context, String s1)
    {
        if (s1.startsWith(d))
        {
            String s2 = s1.substring(d.length());
            if (aj1.p)
            {
                try
                {
                    com.b.a.o.a(a, (new StringBuilder()).append("Launching Android Market for app ").append(s2).toString());
                    context.startActivity((new Intent("android.intent.action.VIEW")).setData(Uri.parse(s1)));
                    return;
                }
                catch (Exception exception)
                {
                    com.b.a.o.c(a, (new StringBuilder()).append("Cannot launch Marketplace url ").append(s1).toString(), exception);
                }
                return;
            } else
            {
                com.b.a.o.a(a, (new StringBuilder()).append("Launching Android Market website for app ").append(s2).toString());
                String s3 = (new StringBuilder()).append(e).append(s2).toString();
                context.startActivity((new Intent("android.intent.action.VIEW")).setData(Uri.parse(s3)));
                return;
            }
        } else
        {
            com.b.a.o.d(a, (new StringBuilder()).append("Unexpected android market url scheme: ").append(s1).toString());
            return;
        }
    }

    private static void a(Runnable runnable)
    {
        (new Handler()).post(runnable);
    }

    private String b(String s1)
    {
        HttpResponse httpresponse;
        int i1;
        if (s1.startsWith(c))
        {
            break MISSING_BLOCK_LABEL_241;
        }
        HttpGet httpget = new HttpGet(s1);
        httpresponse = (new DefaultHttpClient()).execute(httpget);
        i1 = httpresponse.getStatusLine().getStatusCode();
        if (i1 != 200)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        s1 = EntityUtils.toString(httpresponse.getEntity());
        if (!s1.startsWith(c))
        {
            return b(s1);
        }
        break MISSING_BLOCK_LABEL_241;
        com.b.a.o.c(a, (new StringBuilder()).append("Cannot process with responseCode ").append(i1).toString());
        c((new StringBuilder()).append("Error when fetching application's android market ID, responseCode ").append(i1).toString());
        return s1;
        UnknownHostException unknownhostexception;
        unknownhostexception;
        com.b.a.o.c(a, (new StringBuilder()).append("Unknown host: ").append(unknownhostexception.getMessage()).toString());
        if (z != null)
        {
            c((new StringBuilder()).append("Unknown host: ").append(unknownhostexception.getMessage()).toString());
        }
        return null;
        Exception exception;
        exception;
        com.b.a.o.c(a, (new StringBuilder()).append("Failed on url: ").append(s1).toString(), exception);
        s1 = null;
        return s1;
    }

    private void b(Context context, ah ah1, String s1)
    {
        Intent intent = new Intent(h());
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra("u", s1);
        if (ah1 != null)
        {
            intent.putExtra("o", ah1.a());
        }
        context.startActivity(intent);
    }

    static void b(aj aj1, String s1)
    {
        aj1.c(s1);
    }

    private void c(ah ah1)
    {
        if (x.size() < 32767)
        {
            x.add(ah1);
            v.put(Long.valueOf(ah1.a()), ah1);
        }
    }

    private void c(String s1)
    {
        a(new l(this, s1));
    }

    private static String h()
    {
        if (f.a != null)
        {
            return f.a;
        } else
        {
            return f;
        }
    }

    private boolean i()
    {
        if (!q)
        {
            com.b.a.o.d(a, "AppCircle is not initialized");
        }
        if (r == null)
        {
            com.b.a.o.d(a, "Cannot identify UDID.");
        }
        return q;
    }

    final a a(long l1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = i();
        if (flag) goto _L2; else goto _L1
_L1:
        a a2 = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return a2;
_L2:
        a a1 = o.b(l1);
        a2 = a1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final String a(ah ah1)
    {
        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder;
        ak ak1 = ah1.c;
        stringbuilder = (new StringBuilder()).append("?apik=").append(j).append("&cid=").append(ak1.e).append("&adid=").append(ak1.a).append("&pid=").append(r).append("&iid=").append(k).append("&sid=").append(l).append("&lid=").append(ah1.b).append("&aso=").append(((x)ah1.e.get(-1 + ah1.e.size())).b).append("&hid=").append(ai.a(ah1.a)).append("&ac=").append(a(ak1.g));
        if (s != null && !s.isEmpty())
        {
            String s2;
            String s3;
            for (Iterator iterator = s.entrySet().iterator(); iterator.hasNext(); stringbuilder.append("&").append(s2).append("=").append(s3))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                s2 = (new StringBuilder()).append("c_").append(ai.a((String)entry.getKey())).toString();
                s3 = ai.a((String)entry.getValue());
            }

        }
        break MISSING_BLOCK_LABEL_313;
        Exception exception;
        exception;
        throw exception;
        String s1;
        stringbuilder.append("&ats=").append(System.currentTimeMillis());
        s1 = stringbuilder.toString();
        this;
        JVM INSTR monitorexit ;
        return s1;
    }

    final List a(Context context, List list, Long long1, int i1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (i()) goto _L2; else goto _L1
_L1:
        List list3 = Collections.emptyList();
        Object obj = list3;
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((List) (obj));
_L2:
        if (!o.b() || list == null)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        List list1;
        int j1;
        ArrayList arraylist;
        list1 = a(list, long1);
        j1 = Math.min(list.size(), list1.size());
        arraylist = new ArrayList();
        Exception exception;
        String s1;
        w w1;
        ah ah1;
        List list2;
        for (int k1 = 0; k1 >= j1; k1++)
        {
            break MISSING_BLOCK_LABEL_254;
        }

        s1 = (String)list.get(k1);
        w1 = o.b(s1);
        if (w1 == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        ah1 = new ah((String)list.get(k1), (byte)1, g());
        c(ah1);
        if (k1 < list1.size())
        {
            ah1.c = (ak)list1.get(k1);
            ah1.a(new x((byte)2, g()));
            arraylist.add(new al(context, this, ah1, w1, i1, flag));
        }
        break MISSING_BLOCK_LABEL_273;
        com.b.a.o.d(a, (new StringBuilder()).append("Cannot find hook: ").append(s1).toString());
        break MISSING_BLOCK_LABEL_273;
        exception;
        throw exception;
        obj = arraylist;
        continue; /* Loop/switch isn't completed */
        list2 = Collections.emptyList();
        obj = list2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    final void a(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if (z != null)
        {
            a(((Runnable) (new k(this, i1))));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(long l1, long l2)
    {
        this;
        JVM INSTR monitorenter ;
        l = l1;
        m = l2;
        n = 0L;
        x.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(Context context, ah ah1, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = i();
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        t.post(new r(this, s1, context, ah1));
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final void a(Context context, h h1)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        PackageManager packagemanager;
        Intent intent;
        if (q)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        h = h1.c;
        i = h1.d;
        j = h1.a;
        k = h1.b;
        t = h1.e;
        w = new n(t, g);
        context.getResources().getDisplayMetrics();
        y.clear();
        v.clear();
        o.a(context, this, h1);
        s.clear();
        packagemanager = context.getPackageManager();
        String s1 = context.getPackageName();
        String s2 = (new StringBuilder()).append(d).append(s1).toString();
        intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(s2));
        if (packagemanager.queryIntentActivities(intent, 0x10000).size() <= 0)
        {
            flag = false;
        }
        p = flag;
        q = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(String s1)
    {
        r = s1;
    }

    final void a(Map map, Map map1, Map map2, Map map3, Map map4, Map map5)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = i();
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        o.a(map, map1, map2, map3, map4, map5);
        Log.i("FlurryAgent", o.toString());
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final boolean a()
    {
        return q;
    }

    final ah b(ah ah1)
    {
        this;
        JVM INSTR monitorenter ;
        ah ah2;
        if (x.contains(ah1))
        {
            break MISSING_BLOCK_LABEL_41;
        }
        ah2 = new ah(ah1, g());
        x.add(ah2);
        ah1 = ah2;
        ah1.a(new x((byte)4, g()));
        this;
        JVM INSTR monitorexit ;
        return ah1;
        Exception exception;
        exception;
        throw exception;
    }

    final void b()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = i();
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        o.d();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final void c()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = i();
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        o.e();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final long d()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = i();
        if (flag) goto _L2; else goto _L1
_L1:
        long l2 = 0L;
_L4:
        this;
        JVM INSTR monitorexit ;
        return l2;
_L2:
        long l1 = o.c();
        l2 = l1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final Set e()
    {
        this;
        JVM INSTR monitorenter ;
        if (i()) goto _L2; else goto _L1
_L1:
        Set set2 = Collections.emptySet();
        Set set1 = set2;
_L4:
        this;
        JVM INSTR monitorexit ;
        return set1;
_L2:
        Set set = o.a();
        set1 = set;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final List f()
    {
        this;
        JVM INSTR monitorenter ;
        List list = x;
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }

    final long g()
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        l1 = SystemClock.elapsedRealtime() - m;
        if (l1 <= n)
        {
            break MISSING_BLOCK_LABEL_36;
        }
_L1:
        long l2;
        n = l1;
        l2 = n;
        this;
        JVM INSTR monitorexit ;
        return l2;
        l1 = 1L + n;
        n = l1;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public final void onClick(View view)
    {
        this;
        JVM INSTR monitorenter ;
        ah ah1;
        String s1;
        al al1 = (al)view;
        ah1 = b(al1.a());
        al1.a(ah1);
        s1 = a(ah1);
        if (!u) goto _L2; else goto _L1
_L1:
        b(view.getContext(), ah1, (new StringBuilder()).append(h).append(s1).toString());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        a(view.getContext(), ah1, (new StringBuilder()).append(i).append(s1).toString());
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[adLogs=").append(x).append("]");
        return stringbuilder.toString();
    }

    static 
    {
        new Random(System.currentTimeMillis());
    }
}
