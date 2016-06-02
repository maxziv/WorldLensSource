// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.Dialog;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.e;
import java.util.Locale;

// Referenced classes of package com.questvisual.wordlens:
//            at, x

public class w extends e
{

    public w()
    {
    }

    public static w a(int i, int j)
    {
        w w1 = new w();
        Bundle bundle = new Bundle();
        bundle.putInt("key.lang.err.dialog.title.id", i);
        bundle.putInt("key.lang.err.dialog.message.id", j);
        w1.g(bundle);
        return w1;
    }

    private String a(String s)
    {
        if (s.contains("%lang%") || s.contains("%region%"))
        {
            Locale locale = Locale.getDefault();
            s = s.replace("%lang%", locale.getLanguage().toLowerCase(Locale.US)).replace("%region%", locale.getCountry().toLowerCase(Locale.US));
        }
        return s;
    }

    public Dialog c(Bundle bundle)
    {
        int i = i().getInt("key.lang.err.dialog.title.id");
        int j = i().getInt("key.lang.err.dialog.message.id");
        Uri uri = Uri.parse(a(a(at.help_url)));
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(j());
        builder.setTitle(i).setIcon(0x108008a).setMessage(j).setCancelable(false).setPositiveButton(0x104000a, null).setNegativeButton(at.learn_more, new x(this, uri));
        return builder.create();
    }
}
