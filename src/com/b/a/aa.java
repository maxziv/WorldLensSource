// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.b.a:
//            f, o, ai

final class aa
{

    private int a;
    private String b;
    private Map c;
    private long d;
    private boolean e;
    private long f;

    public aa(String s, Map map, long l, boolean flag)
    {
        a = com.b.a.f.b();
        b = s;
        c = map;
        d = l;
        e = flag;
    }

    public final void a(long l)
    {
        f = l - d;
        o.a("FlurryAgent", (new StringBuilder()).append("Ended event '").append(b).append("' (").append(d).append(") after ").append(f).append("ms").toString());
    }

    public final boolean a(String s)
    {
        return e && f == 0L && b.equals(s);
    }

    public final byte[] a()
    {
        ByteArrayOutputStream bytearrayoutputstream;
        Object obj;
        bytearrayoutputstream = new ByteArrayOutputStream();
        obj = new DataOutputStream(bytearrayoutputstream);
        ((DataOutputStream) (obj)).writeShort(a);
        ((DataOutputStream) (obj)).writeUTF(b);
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        ((DataOutputStream) (obj)).writeShort(0);
_L1:
        byte abyte1[];
        ((DataOutputStream) (obj)).writeLong(d);
        ((DataOutputStream) (obj)).writeLong(f);
        ((DataOutputStream) (obj)).flush();
        abyte1 = bytearrayoutputstream.toByteArray();
        ai.a(((java.io.Closeable) (obj)));
        return abyte1;
        ((DataOutputStream) (obj)).writeShort(c.size());
        Iterator iterator = c.entrySet().iterator();
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            ((DataOutputStream) (obj)).writeUTF(ai.a((String)entry.getKey(), 255));
            ((DataOutputStream) (obj)).writeUTF(ai.a((String)entry.getValue(), 255));
        }
          goto _L1
        IOException ioexception;
        ioexception;
        Object obj1 = obj;
_L5:
        byte abyte0[] = new byte[0];
        ai.a(((java.io.Closeable) (obj1)));
        return abyte0;
        Exception exception1;
        exception1;
        Exception exception;
        obj = null;
        exception = exception1;
_L3:
        ai.a(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        obj = obj1;
        if (true) goto _L3; else goto _L2
_L2:
        IOException ioexception1;
        ioexception1;
        obj1 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
