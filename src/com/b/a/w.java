// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.io.DataInput;

// Referenced classes of package com.b.a:
//            q, u

final class w extends q
{

    String a;
    byte b;
    byte c;
    u d;

    w()
    {
    }

    w(DataInput datainput)
    {
        a = datainput.readUTF();
        b = datainput.readByte();
        c = datainput.readByte();
    }

    public final String toString()
    {
        return (new StringBuilder()).append("{name: ").append(a).append(", blockId: ").append(b).append(", themeId: ").append(c).toString();
    }
}
