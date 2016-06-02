// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.b.a:
//            m, u, aj, o, 
//            a, s, w, ak, 
//            h, ai

final class i
{

    private Context a;
    private aj b;
    private h c;
    private volatile long d;
    private m e;
    private m f;
    private Map g;
    private Map h;
    private Map i;
    private Map j;
    private volatile boolean k;

    i()
    {
        e = new m(100);
        f = new m(100);
        g = new HashMap();
        h = new HashMap();
        i = new HashMap();
        j = new HashMap();
    }

    private u a(byte byte0)
    {
        this;
        JVM INSTR monitorenter ;
        u u1 = (u)i.get(Byte.valueOf(byte0));
        this;
        JVM INSTR monitorexit ;
        return u1;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(int l)
    {
        boolean flag;
        if (!g.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = flag;
        if (k)
        {
            b.a(l);
        }
    }

    private void a(DataInputStream datainputstream)
    {
        int l = 0;
        o.a("FlurryAgent", "Reading cache");
        if (datainputstream.readUnsignedShort() != 2)
        {
            return;
        }
        d = datainputstream.readLong();
        int i1 = datainputstream.readUnsignedShort();
        e = new m(100);
        for (int j1 = 0; j1 < i1; j1++)
        {
            long l5 = datainputstream.readLong();
            a a1 = new a();
            a1.a(datainputstream);
            e.a(Long.valueOf(l5), a1);
        }

        int k1 = datainputstream.readUnsignedShort();
        f = new m(100);
        for (int l1 = 0; l1 < k1; l1++)
        {
            long l4 = datainputstream.readLong();
            s s3 = new s();
            if (datainputstream.readBoolean())
            {
                s3.a = datainputstream.readUTF();
            }
            if (datainputstream.readBoolean())
            {
                s3.b = datainputstream.readUTF();
            }
            s3.c = datainputstream.readInt();
            f.a(Long.valueOf(l4), s3);
        }

        int i2 = datainputstream.readUnsignedShort();
        h = new HashMap(i2);
        for (int j2 = 0; j2 < i2; j2++)
        {
            String s2 = datainputstream.readUTF();
            w w1 = new w(datainputstream);
            h.put(s2, w1);
        }

        int k2 = datainputstream.readUnsignedShort();
        g = new HashMap(k2);
        for (int l2 = 0; l2 < k2; l2++)
        {
            String s1 = datainputstream.readUTF();
            int i4 = datainputstream.readUnsignedShort();
            ak aak[] = new ak[i4];
            for (int j4 = 0; j4 < i4; j4++)
            {
                ak ak1 = new ak();
                ak1.a(datainputstream);
                aak[j4] = ak1;
            }

            g.put(s1, aak);
        }

        int i3 = datainputstream.readUnsignedShort();
        i = new HashMap();
        for (int j3 = 0; j3 < i3; j3++)
        {
            byte byte0 = datainputstream.readByte();
            u u1 = new u();
            u1.b(datainputstream);
            i.put(Byte.valueOf(byte0), u1);
        }

        int k3 = datainputstream.readUnsignedShort();
        j = new HashMap(k3);
        for (; l < k3; l++)
        {
            short word0 = datainputstream.readShort();
            long l3 = datainputstream.readLong();
            j.put(Short.valueOf(word0), Long.valueOf(l3));
        }

        f();
        o.a("FlurryAgent", (new StringBuilder()).append("Cache read, num images: ").append(e.a()).toString());
    }

    private void a(DataOutputStream dataoutputstream)
    {
        dataoutputstream.writeShort(2);
        dataoutputstream.writeLong(d);
        List list = e.b();
        dataoutputstream.writeShort(list.size());
        a a1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); dataoutputstream.write(a1.e))
        {
            java.util.Map.Entry entry5 = (java.util.Map.Entry)iterator.next();
            dataoutputstream.writeLong(((Long)entry5.getKey()).longValue());
            a1 = (a)entry5.getValue();
            dataoutputstream.writeLong(a1.a);
            dataoutputstream.writeInt(a1.b);
            dataoutputstream.writeInt(a1.c);
            dataoutputstream.writeUTF(a1.d);
            dataoutputstream.writeInt(a1.e.length);
        }

        List list1 = f.b();
        dataoutputstream.writeShort(list1.size());
        Iterator iterator1 = list1.iterator();
        while (iterator1.hasNext()) 
        {
            java.util.Map.Entry entry4 = (java.util.Map.Entry)iterator1.next();
            dataoutputstream.writeLong(((Long)entry4.getKey()).longValue());
            s s1 = (s)entry4.getValue();
            boolean flag;
            boolean flag1;
            if (s1.a != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            dataoutputstream.writeBoolean(flag);
            if (flag)
            {
                dataoutputstream.writeUTF(s1.a);
            }
            if (s1.b != null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            dataoutputstream.writeBoolean(flag1);
            if (flag1)
            {
                dataoutputstream.writeUTF(s1.b);
            }
            dataoutputstream.writeInt(s1.c);
        }
        dataoutputstream.writeShort(h.size());
        w w1;
        for (Iterator iterator2 = h.entrySet().iterator(); iterator2.hasNext(); dataoutputstream.writeByte(w1.c))
        {
            java.util.Map.Entry entry3 = (java.util.Map.Entry)iterator2.next();
            dataoutputstream.writeUTF((String)entry3.getKey());
            w1 = (w)entry3.getValue();
            dataoutputstream.writeUTF(w1.a);
            dataoutputstream.writeByte(w1.b);
        }

        dataoutputstream.writeShort(g.size());
        for (Iterator iterator3 = g.entrySet().iterator(); iterator3.hasNext();)
        {
            java.util.Map.Entry entry2 = (java.util.Map.Entry)iterator3.next();
            dataoutputstream.writeUTF((String)entry2.getKey());
            ak aak[] = (ak[])entry2.getValue();
            int l;
            int i1;
            if (aak == null)
            {
                l = 0;
            } else
            {
                l = aak.length;
            }
            dataoutputstream.writeShort(l);
            i1 = 0;
            while (i1 < l) 
            {
                ak ak1 = aak[i1];
                dataoutputstream.writeLong(ak1.a);
                dataoutputstream.writeLong(ak1.b);
                dataoutputstream.writeUTF(ak1.d);
                dataoutputstream.writeUTF(ak1.c);
                dataoutputstream.writeLong(ak1.e);
                dataoutputstream.writeLong(ak1.f.longValue());
                dataoutputstream.writeByte(ak1.g.length);
                dataoutputstream.write(ak1.g);
                i1++;
            }
        }

        dataoutputstream.writeShort(i.size());
        java.util.Map.Entry entry1;
        for (Iterator iterator4 = i.entrySet().iterator(); iterator4.hasNext(); ((u)entry1.getValue()).a(dataoutputstream))
        {
            entry1 = (java.util.Map.Entry)iterator4.next();
            dataoutputstream.writeByte(((Byte)entry1.getKey()).byteValue());
        }

        dataoutputstream.writeShort(j.size());
        java.util.Map.Entry entry;
        for (Iterator iterator5 = j.entrySet().iterator(); iterator5.hasNext(); dataoutputstream.writeLong(((Long)entry.getValue()).longValue()))
        {
            entry = (java.util.Map.Entry)iterator5.next();
            dataoutputstream.writeShort(((Short)entry.getKey()).shortValue());
        }

    }

    private static void a(File file)
    {
        if (!file.delete())
        {
            o.b("FlurryAgent", "Cannot delete cached ads");
        }
    }

    private void f()
    {
        for (Iterator iterator = i.values().iterator(); iterator.hasNext(); iterator.next()) { }
        Iterator iterator1 = g.values().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            ak aak[] = (ak[])iterator1.next();
            if (aak != null)
            {
                int l = aak.length;
                int i1 = 0;
                while (i1 < l) 
                {
                    ak ak1 = aak[i1];
                    ak1.h = b(ak1.f.longValue());
                    if (ak1.h == null)
                    {
                        o.b("FlurryAgent", (new StringBuilder()).append("Ad ").append(ak1.d).append(" has no image").toString());
                    }
                    if (a(ak1.a) == null)
                    {
                        o.b("FlurryAgent", (new StringBuilder()).append("Ad ").append(ak1.d).append(" has no pricing").toString());
                    }
                    i1++;
                }
            }
        } while (true);
        Iterator iterator2 = h.values().iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            w w1 = (w)iterator2.next();
            w1.d = a(w1.c);
            if (w1.d == null)
            {
                o.d("FlurryAgent", (new StringBuilder()).append("No ad theme found for ").append(w1.c).toString());
            }
        } while (true);
    }

    private String g()
    {
        return (new StringBuilder()).append(".flurryappcircle.").append(Integer.toString(c.a.hashCode(), 16)).toString();
    }

    final s a(long l)
    {
        this;
        JVM INSTR monitorenter ;
        s s1 = (s)f.a(Long.valueOf(l));
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    final Set a()
    {
        this;
        JVM INSTR monitorenter ;
        Set set = e.c();
        this;
        JVM INSTR monitorexit ;
        return set;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(Context context, aj aj1, h h1)
    {
        a = context;
        b = aj1;
        c = h1;
    }

    final void a(Map map, Map map1, Map map2, Map map3, Map map4, Map map5)
    {
        this;
        JVM INSTR monitorenter ;
        d = System.currentTimeMillis();
        Iterator iterator = map3.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry2 = (java.util.Map.Entry)iterator.next();
            if (entry2.getValue() != null)
            {
                e.a(entry2.getKey(), entry2.getValue());
            }
        } while (true);
        break MISSING_BLOCK_LABEL_86;
        Exception exception;
        exception;
        throw exception;
        Iterator iterator1 = map4.entrySet().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator1.next();
            if (entry1.getValue() != null)
            {
                f.a(entry1.getKey(), entry1.getValue());
            }
        } while (true);
        if (map1 == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        if (!map1.isEmpty())
        {
            h = map1;
        }
        if (map2 == null)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        if (!map2.isEmpty())
        {
            i = map2;
        }
        if (map5 == null)
        {
            break MISSING_BLOCK_LABEL_213;
        }
        if (!map5.isEmpty())
        {
            j = map5;
        }
        Iterator iterator2;
        g = new HashMap();
        iterator2 = map1.entrySet().iterator();
_L2:
        java.util.Map.Entry entry;
        w w1;
        ak aak[];
        if (!iterator2.hasNext())
        {
            break MISSING_BLOCK_LABEL_348;
        }
        entry = (java.util.Map.Entry)iterator2.next();
        w1 = (w)entry.getValue();
        aak = (ak[])map.get(Byte.valueOf(w1.b));
        if (aak == null)
        {
            break MISSING_BLOCK_LABEL_314;
        }
        g.put(entry.getKey(), aak);
        u u1 = (u)map2.get(Byte.valueOf(w1.c));
        if (u1 == null) goto _L2; else goto _L1
_L1:
        w1.d = u1;
          goto _L2
        f();
        a(202);
        this;
        JVM INSTR monitorexit ;
    }

    final ak[] a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        ak aak[] = (ak[])g.get(s1);
        if (aak != null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        aak = (ak[])g.get("");
        this;
        JVM INSTR monitorexit ;
        return aak;
        Exception exception;
        exception;
        throw exception;
    }

    final a b(long l)
    {
        this;
        JVM INSTR monitorenter ;
        a a1 = (a)e.a(Long.valueOf(l));
        this;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    final w b(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        w w1 = (w)h.get(s1);
        if (w1 != null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        w1 = (w)h.get("");
        this;
        JVM INSTR monitorexit ;
        return w1;
        Exception exception;
        exception;
        throw exception;
    }

    final boolean b()
    {
        return k;
    }

    final long c()
    {
        return d;
    }

    final void d()
    {
        this;
        JVM INSTR monitorenter ;
        File file;
        boolean flag;
        file = a.getFileStreamPath(g());
        flag = file.exists();
        if (!flag) goto _L2; else goto _L1
_L1:
        DataInputStream datainputstream = new DataInputStream(new FileInputStream(file));
        if (datainputstream.readUnsignedShort() != 46587) goto _L4; else goto _L3
_L3:
        a(datainputstream);
        a(201);
_L5:
        ai.a(datainputstream);
_L6:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        a(file);
          goto _L5
        Throwable throwable;
        throwable;
_L8:
        o.a("FlurryAgent", "Discarding cache", throwable);
        a(file);
        ai.a(datainputstream);
          goto _L6
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        datainputstream = null;
_L7:
        ai.a(datainputstream);
        throw exception1;
_L2:
        o.c("FlurryAgent", (new StringBuilder()).append("cache file does not exist, path=").append(file.getAbsolutePath()).toString());
          goto _L6
        exception1;
          goto _L7
        throwable;
        datainputstream = null;
          goto _L8
    }

    final void e()
    {
        Object obj = null;
        this;
        JVM INSTR monitorenter ;
        File file;
        File file1;
        boolean flag;
        file = a.getFileStreamPath(g());
        file1 = file.getParentFile();
        flag = file1.mkdirs();
        obj = null;
        if (flag) goto _L2; else goto _L1
_L1:
        if (file1.exists()) goto _L2; else goto _L3
_L3:
        o.b("FlurryAgent", (new StringBuilder()).append("Unable to create persistent dir: ").append(file1).toString());
        ai.a(null);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(file));
        dataoutputstream.writeShort(46587);
        a(dataoutputstream);
        ai.a(dataoutputstream);
          goto _L4
        Exception exception1;
        exception1;
        throw exception1;
        Throwable throwable;
        throwable;
_L6:
        o.b("FlurryAgent", "", throwable);
        ai.a(((java.io.Closeable) (obj)));
          goto _L4
_L5:
        Exception exception;
        ai.a(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        obj = dataoutputstream;
          goto _L5
        throwable;
        obj = dataoutputstream;
          goto _L6
        exception;
          goto _L5
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("{");
        stringbuilder.append((new StringBuilder()).append("adImages (").append(e.b().size()).append("),\n").toString());
        stringbuilder.append((new StringBuilder()).append("adBlock (").append(g.size()).append("):").toString()).append(",\n");
        java.util.Map.Entry entry;
        for (Iterator iterator = g.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder()).append("\t").append((String)entry.getKey()).append(": ").append(Arrays.toString((Object[])entry.getValue())).toString()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        stringbuilder.append((new StringBuilder()).append("adHooks (").append(h.size()).append("):").append(h).toString()).append(",\n");
        stringbuilder.append((new StringBuilder()).append("adThemes (").append(i.size()).append("):").append(i).toString()).append(",\n");
        stringbuilder.append((new StringBuilder()).append("auxMap (").append(j.size()).append("):").append(j).toString()).append(",\n");
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
