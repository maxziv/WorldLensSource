// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.messaging;

import android.util.Log;
import com.questvisual.util.b;

// Referenced classes of package com.questvisual.wordlens.messaging:
//            a, g

public class d extends a
{

    private float b;

    public d(g g, byte abyte0[])
    {
        super(g, abyte0);
        b = (0.0F / 0.0F);
    }

    public float c()
    {
        if (Float.isNaN(b))
        {
            try
            {
                b = Float.intBitsToFloat(com.questvisual.util.b.a(b(), 0));
            }
            catch (Exception exception)
            {
                Log.e("QV", (new StringBuilder("Unable to parse confidence from payload: ")).append(com.questvisual.util.b.a(b())).append(", exception: ").append(exception.getLocalizedMessage()).toString());
                return 0.0F;
            }
        }
        if (Float.isNaN(b))
        {
            return 0.0F;
        } else
        {
            return b;
        }
    }

    public boolean d()
    {
        return c() > 0.49F;
    }
}
