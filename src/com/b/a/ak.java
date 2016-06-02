// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.io.DataInput;

// Referenced classes of package com.b.a:
//            q, a

final class ak extends q
{

    long a;
    long b;
    String c;
    String d;
    long e;
    Long f;
    byte g[];
    a h;

    ak()
    {
    }

    ak(DataInput datainput)
    {
        b(datainput);
    }

    private static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while (i < abyte0.length) 
        {
            int j = 0xf & abyte0[i] >> 4;
            int k;
            if (j < 10)
            {
                stringbuilder.append((char)(j + 48));
            } else
            {
                stringbuilder.append((char)(-10 + (j + 65)));
            }
            k = 0xf & abyte0[i];
            if (k < 10)
            {
                stringbuilder.append((char)(k + 48));
            } else
            {
                stringbuilder.append((char)(-10 + (k + 65)));
            }
            i++;
        }
        return stringbuilder.toString();
    }

    private void b(DataInput datainput)
    {
        a = datainput.readLong();
        b = datainput.readLong();
        d = datainput.readUTF();
        c = datainput.readUTF();
        e = datainput.readLong();
        f = Long.valueOf(datainput.readLong());
        g = new byte[datainput.readUnsignedByte()];
        datainput.readFully(g);
    }

    final void a(DataInput datainput)
    {
        b(datainput);
    }

    public final String toString()
    {
        return (new StringBuilder()).append("ad {id=").append(a).append(", name='").append(d).append("', cookie: '").append(a(g)).append("'}").toString();
    }
}
