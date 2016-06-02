// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.messaging;

import com.questvisual.util.b;

// Referenced classes of package com.questvisual.wordlens.messaging:
//            g

public class a
{

    protected byte a[];
    private g b;

    public a(g g1)
    {
        b = g1;
        a = null;
    }

    protected a(g g1, byte abyte0[])
    {
        this(g1);
        a = abyte0;
    }

    public g a()
    {
        return b;
    }

    protected byte[] b()
    {
        return a;
    }

    public String toString()
    {
        if (a != null)
        {
            return (new StringBuilder()).append(b).append(": ").append(com.questvisual.util.b.a(a)).toString();
        } else
        {
            return b.toString();
        }
    }
}
