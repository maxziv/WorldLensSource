// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.billing;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

// Referenced classes of package com.questvisual.wordlens.billing:
//            k, a, i

class b
    implements Runnable
{

    private final Context a;
    private final k b;
    private final String c;

    b(Context context, k k1, String s)
    {
        a = context;
        b = k1;
        c = s;
        super();
    }

    public void run()
    {
        boolean flag;
        SharedPreferences sharedpreferences = a.getSharedPreferences("word.lens", 0);
        k k1 = b;
        k k2 = k.a;
        flag = false;
        if (k1 == k2)
        {
            flag = true;
        }
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putBoolean((new StringBuilder("LPS.")).append(c).toString(), flag);
        editor.commit();
        String s = sharedpreferences.getString("key.first.start.of.wordlens.plus", null);
        if (s != null && s.equals(c))
        {
            sharedpreferences.edit().remove("key.first.start.of.wordlens.plus").commit();
        }
        com/questvisual/wordlens/billing/a;
        JVM INSTR monitorenter ;
        if (com.questvisual.wordlens.billing.a.a() != null)
        {
            com.questvisual.wordlens.billing.a.a().b();
        }
        com/questvisual/wordlens/billing/a;
        JVM INSTR monitorexit ;
        Log.d("QV", (new StringBuilder("Recorded purchase from Android Market: ")).append(c).append(", purchased:").append(flag).toString());
        return;
        Exception exception;
        exception;
        com/questvisual/wordlens/billing/a;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
