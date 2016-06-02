// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.questvisual.wordlens.e.b;

// Referenced classes of package com.questvisual.wordlens:
//            at, WordLensActivity

class ba
    implements android.content.DialogInterface.OnClickListener
{

    final WordLensActivity a;

    ba(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent("android.intent.action.SENDTO");
        String s = a.getString(at.unsupported_device_email_text);
        intent.setData(Uri.parse((new StringBuilder("mailto:help@questvisual.com?subject=UNSUPPORTED_DEVICE&body=")).append(s).append("\n\nDetails:\n").append(b.b()).toString().replace(" ", "%20")));
        a.startActivity(Intent.createChooser(intent, a.getString(at.send_email)));
        a.finish();
    }
}
