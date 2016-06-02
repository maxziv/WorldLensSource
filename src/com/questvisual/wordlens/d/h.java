// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import com.questvisual.wordlens.WordLensSystem;
import com.questvisual.wordlens.at;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.questvisual.wordlens.d:
//            j, i

public class h
    implements android.view.View.OnClickListener
{

    private static final String d[] = {
        "com.twitter.android", "com.twidroid", "com.handmark.tweetcaster", "com.thedeck.android", "com.facebook", "gmail", "email"
    };
    private static final android.graphics.Bitmap.CompressFormat f;
    private static boolean h = true;
    private static int j[];
    private AtomicBoolean a;
    private Context b;
    private j c;
    private boolean e;
    private String g;
    private i i;

    public h(Context context, AtomicBoolean atomicboolean, j j1)
    {
        a = null;
        c = null;
        e = false;
        g = null;
        i = null;
        b = context;
        a = atomicboolean;
        c = j1;
    }

    static Context a(h h1)
    {
        return h1.b;
    }

    private File a(android.graphics.Bitmap.CompressFormat compressformat)
    {
label0:
        {
            boolean flag = true;
            String s = Environment.getExternalStorageState();
            boolean flag1;
            File file;
            if ("mounted".equals(s))
            {
                flag1 = flag;
            } else
            if ("mounted_ro".equals(s))
            {
                flag1 = flag;
                flag = false;
            } else
            {
                flag = false;
                flag1 = false;
            }
            file = null;
            if (flag1)
            {
                file = null;
                if (flag)
                {
                    File file1 = b.getExternalCacheDir();
                    if (file1 == null)
                    {
                        break label0;
                    }
                    file1.mkdirs();
                    file = new File(file1, d());
                }
            }
            return file;
        }
        Log.e("QV", "Unable to access external cache. Returning null File object to save to.");
        return null;
    }

    static void a(h h1, i k)
    {
        h1.i = k;
    }

    private boolean a(ResolveInfo resolveinfo)
    {
        String as[] = d;
        int k = as.length;
        int l = 0;
        do
        {
            if (l >= k)
            {
                return false;
            }
            String s = as[l];
            if (resolveinfo.activityInfo.packageName.toLowerCase(Locale.US).contains(s) || resolveinfo.activityInfo.name.toLowerCase(Locale.US).contains(s))
            {
                return true;
            }
            l++;
        } while (true);
    }

    private boolean a(File file)
    {
        if (file.exists())
        {
            return file.canWrite();
        }
        boolean flag;
        try
        {
            flag = file.createNewFile();
        }
        catch (IOException ioexception)
        {
            Log.w("QV", (new StringBuilder("Unable to create file. Share snapshot will be disabled (")).append(file).append(")").toString());
            return false;
        }
        return flag;
    }

    static AtomicBoolean b(h h1)
    {
        return h1.a;
    }

    static boolean c(h h1)
    {
        return h1.h();
    }

    static int[] c()
    {
        int ai[] = j;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[android.graphics.Bitmap.CompressFormat.values().length];
        try
        {
            ai1[android.graphics.Bitmap.CompressFormat.JPEG.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[android.graphics.Bitmap.CompressFormat.PNG.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[android.graphics.Bitmap.CompressFormat.WEBP.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        j = ai1;
        return ai1;
    }

    private String d()
    {
        if (g != null) goto _L2; else goto _L1
_L1:
        c()[f.ordinal()];
        JVM INSTR tableswitch 1 2: default 40
    //                   1 51
    //                   2 60;
           goto _L3 _L4 _L5
_L3:
        g = "wordLensShareImage.unknown";
_L2:
        return g;
_L4:
        g = "wordLensShareImage.jpeg";
        continue; /* Loop/switch isn't completed */
_L5:
        g = "wordLensShareImage.png";
        if (true) goto _L2; else goto _L6
_L6:
    }

    static void d(h h1)
    {
        h1.g();
    }

    private Intent e()
    {
        File file;
        if (h)
        {
            File file1 = b.getExternalCacheDir();
            Intent intent;
            boolean flag;
            boolean flag1;
            if (file1 != null)
            {
                file = new File(file1, d());
            } else
            {
                Log.e("QV", "Unable to access external cache. Cannot save snapshot.");
                file = null;
            }
        } else
        {
            file = b.getFileStreamPath(d());
        }
        intent = null;
        if (file != null)
        {
            flag = file.exists();
            intent = null;
            if (flag)
            {
                flag1 = file.canRead();
                intent = null;
                if (flag1)
                {
                    intent = new Intent();
                    intent.setAction("android.intent.action.SEND");
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                    intent.setType("image/png");
                }
            }
        }
        return intent;
    }

    private List f()
    {
        Intent intent = e();
        if (intent != null) goto _L2; else goto _L1
_L1:
        List list;
        return null;
_L2:
        if ((list = b.getPackageManager().queryIntentActivities(intent, 0x10000)) == null || list.isEmpty()) goto _L1; else goto _L3
_L3:
        ArrayList arraylist;
        HashMap hashmap;
        Iterator iterator;
        arraylist = new ArrayList();
        hashmap = new HashMap();
        iterator = list.iterator();
_L6:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        Iterator iterator1;
        ArrayList arraylist1 = new ArrayList(hashmap.keySet());
        Collections.sort(arraylist1);
        iterator1 = arraylist1.iterator();
_L7:
        if (!iterator1.hasNext())
        {
            return arraylist;
        }
        break MISSING_BLOCK_LABEL_189;
_L5:
        ResolveInfo resolveinfo = (ResolveInfo)iterator.next();
        Intent intent1 = e();
        intent1.setPackage(resolveinfo.activityInfo.packageName);
        if (a(resolveinfo))
        {
            arraylist.add(intent1);
        } else
        {
            hashmap.put(resolveinfo.activityInfo.name, intent1);
        }
          goto _L6
        arraylist.add((Intent)hashmap.get((String)iterator1.next()));
          goto _L7
    }

    private void g()
    {
        String s = b.getString(at.share_image_title);
        List list = f();
        if (list != null && !list.isEmpty())
        {
            Intent intent = Intent.createChooser((Intent)list.remove(-1 + list.size()), s);
            intent.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])list.toArray(new Parcelable[0]));
            c.a(intent);
        }
        PreferenceManager.getDefaultSharedPreferences(b).edit().putBoolean("key.has.used.share.feature", true).apply();
    }

    private boolean h()
    {
        FileOutputStream fileoutputstream = null;
        boolean flag1 = h;
        fileoutputstream = null;
        if (!flag1) goto _L2; else goto _L1
_L1:
        File file = a(f);
        fileoutputstream = null;
        if (file == null) goto _L4; else goto _L3
_L3:
        fileoutputstream = new FileOutputStream(file);
          goto _L4
_L8:
        boolean flag2;
        e = flag2;
        Exception exception;
        IOException ioexception1;
        boolean flag;
        IOException ioexception2;
        FileNotFoundException filenotfoundexception;
        IOException ioexception3;
        Bitmap bitmap;
        IOException ioexception5;
        ByteArrayOutputStream bytearrayoutputstream;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception4) { }
        }
        flag = flag2;
        return flag;
_L2:
        fileoutputstream = b.openFileOutput(d(), 0);
          goto _L4
_L6:
        bitmap = WordLensSystem.f().c();
        if (bitmap != null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        Log.e("QV", "Unable to get snapshot to share");
        flag = false;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5)
            {
                return false;
            }
            return false;
        } else
        {
            break MISSING_BLOCK_LABEL_61;
        }
        bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(f, 70, bytearrayoutputstream);
        fileoutputstream.write(bytearrayoutputstream.toByteArray());
        fileoutputstream.close();
        flag2 = true;
        continue; /* Loop/switch isn't completed */
        filenotfoundexception;
        Log.e("QV", (new StringBuilder("Unable to open private output file: ")).append(d()).toString(), filenotfoundexception);
        flag = false;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception3)
            {
                return false;
            }
            return false;
        }
        break MISSING_BLOCK_LABEL_61;
        ioexception1;
        Log.e("QV", (new StringBuilder("Unable to write to file: ")).append(d()).toString(), ioexception1);
        flag = false;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2)
            {
                return false;
            }
            return false;
        } else
        {
            break MISSING_BLOCK_LABEL_61;
        }
        exception;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
_L4:
        if (fileoutputstream != null) goto _L6; else goto _L5
_L5:
        flag2 = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void a(boolean flag)
    {
        e = false;
    }

    public boolean a()
    {
        if (h)
        {
            File file = a(f);
            if (file != null)
            {
                return a(file);
            } else
            {
                return false;
            }
        } else
        {
            return a(b.getFileStreamPath(d()));
        }
    }

    public void b()
    {
        if (i != null)
        {
            i.cancel(true);
            i.a();
            i = null;
        }
    }

    public void onClick(View view)
    {
label0:
        {
            if (a.compareAndSet(false, true))
            {
                if (!e)
                {
                    break label0;
                }
                g();
            }
            return;
        }
        i = new i(this);
        i.execute(new Void[0]);
    }

    static 
    {
        f = android.graphics.Bitmap.CompressFormat.JPEG;
    }
}
