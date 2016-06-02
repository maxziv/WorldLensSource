// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import com.b.a.f;
import com.questvisual.wordlens.messaging.MessageManager;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.questvisual.wordlens:
//            cj, NativeLangMan, aq, ao, 
//            cm, ck, NativeBitmapInfo, ah, 
//            at, cl

public class WordLensSystem
{

    private static boolean d = false;
    private static boolean i = false;
    private static final Object j = new Object();
    private static WordLensSystem sys;
    private GLSurfaceView a;
    public AssetManager assetManagers[];
    private cm b;
    private android.os.Handler.Callback c;
    private com.questvisual.wordlens.d.f e;
    private Context f;
    private NativeBitmapInfo g;
    private Object h;
    private boolean k;
    public SharedPreferences mDefaultSharedPrefs;

    private WordLensSystem(Context context)
    {
        c = new cj(this);
        e = null;
        f = null;
        g = null;
        h = new Object();
        k = true;
        b(context);
    }

    private static native boolean CheckCPUHasNeonNative();

    private native void InitNative();

    public static void a(Context context, boolean flag)
    {
        if (flag)
        {
            ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
            if (connectivitymanager != null)
            {
                NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
                if (networkinfo != null)
                {
                    boolean flag1;
                    if (networkinfo.isRoaming())
                    {
                        flag1 = false;
                    } else
                    {
                        flag1 = true;
                    }
                    i = flag1;
                    return;
                } else
                {
                    i = false;
                    return;
                }
            } else
            {
                i = false;
                return;
            }
        } else
        {
            i = false;
            return;
        }
    }

    static void a(WordLensSystem wordlenssystem)
    {
        wordlenssystem.updateActionQueuesNative();
    }

    static void a(WordLensSystem wordlenssystem, NativeBitmapInfo nativebitmapinfo)
    {
        wordlenssystem.g = nativebitmapinfo;
    }

    public static boolean a(Context context)
    {
        boolean flag;
        flag = true;
        if (sys != null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        Object obj = g();
        obj;
        JVM INSTR monitorenter ;
        k();
        sys = new WordLensSystem(context);
        sys.c(context);
        int i1 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        Log.i("QV", (new StringBuilder("Word Lens Build number: ")).append(i1).toString());
_L1:
        NativeLangMan.a(context);
        MessageManager.a();
        SharedPreferences sharedpreferences = context.getSharedPreferences("word.lens", 0);
        boolean flag1 = sharedpreferences.getBoolean("key.user.approve.flurry", false);
        boolean flag2 = sharedpreferences.getBoolean("key.user.prompted.flurry", false);
        if (!flag1 && !flag2)
        {
            int l = sharedpreferences.getInt("key.init.count", 0);
            Exception exception;
            Exception exception1;
            if (flag == l)
            {
                sharedpreferences.edit().putBoolean("key.user.should.prompt.flurry", flag).commit();
            } else
            {
                sharedpreferences.edit().putInt("key.init.count", l + 1).commit();
            }
        }
        a(context, flag1);
_L2:
        com.b.a.f.a(false);
        com.b.a.f.c(false);
        return flag;
        exception1;
        Log.w("QV", (new StringBuilder("Unable to extract Word Lens build number: ")).append(exception1.getLocalizedMessage()).toString());
          goto _L1
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        flag = false;
          goto _L2
    }

    static android.os.Handler.Callback b(WordLensSystem wordlenssystem)
    {
        return wordlenssystem.c;
    }

    private void b(Context context)
    {
        f = context;
        e = new com.questvisual.wordlens.d.f(LayoutInflater.from(context).inflate(aq.snapshot_header, null), ao.snapshot_header_text);
    }

    public static boolean b()
    {
        return d;
    }

    static Object c(WordLensSystem wordlenssystem)
    {
        return wordlenssystem.h;
    }

    private void c(Context context)
    {
        int l;
        ArrayList arraylist;
        ArrayList arraylist1;
        Iterator iterator;
        l = 0;
        arraylist = new ArrayList();
        arraylist.add(context.getResources().getAssets());
        List list = context.getPackageManager().getInstalledApplications(128);
        arraylist1 = new ArrayList();
        iterator = list.iterator();
_L8:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1 = arraylist1.iterator();
_L5:
        if (iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        assetManagers = new AssetManager[arraylist.size()];
_L6:
        if (l >= assetManagers.length)
        {
            b = new cm(this);
            b.start();
            mDefaultSharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
            if (Looper.myLooper() != Looper.getMainLooper())
            {
                Log.e("QV", "WordLensSystem init not called from UI Thread. Weirdness may occur.");
            }
            synchronized (g())
            {
                InitNative();
            }
            return;
        }
        break MISSING_BLOCK_LABEL_306;
_L2:
        String s = ((ApplicationInfo)iterator.next()).packageName;
        if (s.startsWith("com.questvisual.wordlens"))
        {
            Log.d("QV", (new StringBuilder("Found match: ")).append(s).toString());
            arraylist1.add(s);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        String s1 = (String)iterator1.next();
        try
        {
            arraylist.add(context.createPackageContext(s1, 0).getAssets());
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Log.w("QV", (new StringBuilder("Warning. Retrieved package name (")).append(s1).append(") from package manager, but then it was not found: ").append(namenotfoundexception.getLocalizedMessage()).toString(), namenotfoundexception);
        }
          goto _L5
        assetManagers[l] = (AssetManager)arraylist.get(l);
        l++;
          goto _L6
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static NativeBitmapInfo d(WordLensSystem wordlenssystem)
    {
        return wordlenssystem.wlSnapShareRenderImageNative();
    }

    public static boolean d()
    {
        return i;
    }

    public static boolean e()
    {
        return CheckCPUHasNeonNative();
    }

    public static WordLensSystem f()
    {
        if (sys == null)
        {
            Log.e("WordLens", "Call WordLensSystem.init before doing stuff!");
            throw new IllegalStateException("Call WordLensSystem.init() before attempting to use it!");
        } else
        {
            return sys;
        }
    }

    public static Object g()
    {
        return j;
    }

    private native int getAppPropsIntForKeyNative(String s);

    private static void k()
    {
        boolean flag = true;
        if (!Build.CPU_ABI.contains("v7a") && !Build.CPU_ABI2.contains("v7a"))
        {
            break MISSING_BLOCK_LABEL_233;
        }
        Log.i("QV", "Compatibility check: ARMv7a found. Checking for ");
        try
        {
            System.loadLibrary("wordlens-detector");
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror1)
        {
            Log.e("QV", (new StringBuilder("Unable to load native library wordlens-detector. Cannot continue! ")).append(unsatisfiedlinkerror1.getLocalizedMessage()).toString());
            d = false;
            flag = false;
        }
        catch (SecurityException securityexception)
        {
            Log.e("QV", (new StringBuilder("Unable to load native library wordlens-detector. Cannot continue! ")).append(securityexception.getLocalizedMessage()).toString());
            d = false;
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        if (e())
        {
            break MISSING_BLOCK_LABEL_145;
        }
        Log.e("QV", "This device does not support NEON extensions. Loading non-NEON WordLens...");
        System.loadLibrary("wordlens-slow");
        d = true;
        return;
        try
        {
            Log.i("QV", "Compatibility check: NEON extensions found. Loading NEON-enabled WordLens...");
            System.loadLibrary("wordlens-neon");
            d = true;
            return;
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            Log.e("QV", (new StringBuilder("Unable to load native library wordlens. Cannot continue! ")).append(unsatisfiedlinkerror.getLocalizedMessage()).toString());
            d = false;
            return;
        }
        catch (SecurityException securityexception1)
        {
            Log.e("QV", (new StringBuilder("Unable to load native library wordlens. Cannot continue! ")).append(securityexception1.getLocalizedMessage()).toString());
        }
        d = false;
        return;
        if (Build.CPU_ABI.contains("x86") || Build.CPU_ABI2.contains("x86"))
        {
            Log.i("QV", "Compatibility check: x86 found.");
            try
            {
                System.loadLibrary("wordlens-slow");
                d = true;
                return;
            }
            catch (UnsatisfiedLinkError unsatisfiedlinkerror2)
            {
                Log.e("QV", (new StringBuilder("Unable to load native library wordlens for x86. Cannot continue! ")).append(unsatisfiedlinkerror2.getLocalizedMessage()).toString());
                d = false;
                return;
            }
            catch (SecurityException securityexception2)
            {
                Log.e("QV", (new StringBuilder("Unable to load native library wordlens for x86. Cannot continue! ")).append(securityexception2.getLocalizedMessage()).toString());
            }
            d = false;
            return;
        } else
        {
            Log.i("QV", "Compatibility check: No supported CPU found.");
            d = false;
            return;
        }
    }

    private native void onMagicAppletPauseNative();

    private native void setAutoZoomDimsNative(int l, int i1);

    private native void updateActionQueuesNative();

    private native NativeBitmapInfo wlSnapShareRenderImageNative();

    public int a(String s)
    {
        return getAppPropsIntForKeyNative(s);
    }

    public Handler a()
    {
        return cm.a(b);
    }

    public void a(int l, int i1)
    {
        setAutoZoomDimsNative(32 * (l / 32), 32 * (i1 / 32));
    }

    public void a(GLSurfaceView glsurfaceview)
    {
        a = glsurfaceview;
    }

    public Bitmap c()
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        Log.e("QV", "Uh oh! Need to get at GL thread so we have GL context to render with... why is renderView null?");
_L4:
        return null;
_L2:
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        a.queueEvent(new ck(this));
        Exception exception;
        try
        {
            h.wait();
        }
        catch (InterruptedException interruptedexception) { }
        if (g == null) goto _L4; else goto _L3
_L3:
        Bitmap bitmap = Bitmap.createBitmap(g.width, g.height, android.graphics.Bitmap.Config.ARGB_8888);
        bitmap.copyPixelsFromBuffer(ByteBuffer.wrap(g.rawData));
        return bitmap;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public byte[] drawTextToImage(String s, int ai[], int l, int i1, String s1)
    {
        Log.d("QV", (new StringBuilder("drawTextToImage: fontName=")).append(s).append(", bounds=").append(ai[0]).append("x").append(ai[1]).append(", argb=0x").append(Integer.toHexString(l)).append(", alignment=").append(i1).append(", uString=").append(s1).toString());
        byte abyte0[];
        try
        {
            e.c(ah.b(i1));
            e.b(l);
            e.a(ai[0], ai[1]);
            e.a(s1);
            Bitmap bitmap = e.a();
            abyte0 = new byte[bitmap.getRowBytes() * bitmap.getHeight()];
            bitmap.copyPixelsToBuffer(ByteBuffer.wrap(abyte0));
        }
        catch (Exception exception)
        {
            Log.e("QV", "Exception rendering text to image", exception);
            return null;
        }
        return abyte0;
    }

    public String getLanguageNameUTF8(String s, String s1)
    {
        Locale locale = new Locale(s);
        return (new Locale(s1)).getDisplayLanguage(locale);
    }

    public native byte[] getLatestOCRNuggets();

    public native byte[] getLatestOCRWords();

    public String getLocalizedStringUTF8(String s)
    {
        if (s == null)
        {
            return "";
        }
        if (s.equalsIgnoreCase("Lang.Demo.EraseWords"))
        {
            return f.getString(at.lang_demo_erasewords);
        }
        if (s.equalsIgnoreCase("Lang.Demo.ReverseWords"))
        {
            return f.getString(at.lang_demo_reversewords);
        } else
        {
            Log.e("QV", (new StringBuilder("QVLocale_android requestd unknown string key: ")).append(s).toString());
            return "";
        }
    }

    public void h()
    {
        this;
        JVM INSTR monitorenter ;
        k = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void i()
    {
        this;
        JVM INSTR monitorenter ;
        k = true;
        scheduleDrainMainQueue();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void j()
    {
        synchronized (g())
        {
            onMagicAppletPauseNative();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void scheduleDrainMainQueue()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = k;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        a.queueEvent(new cl(this));
          goto _L1
        Exception exception;
        exception;
        throw exception;
        a().sendEmptyMessage(0);
          goto _L1
    }

    static 
    {
        k();
    }
}
