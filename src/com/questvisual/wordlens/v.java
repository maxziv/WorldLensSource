// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.questvisual.wordlens.e.a;
import com.questvisual.wordlens.e.b;

// Referenced classes of package com.questvisual.wordlens:
//            s, at

class v
    implements android.view.View.OnClickListener
{

    final s a;

    private v(s s1)
    {
        a = s1;
        super();
    }

    v(s s1, v v1)
    {
        this(s1);
    }

    public void onClick(View view)
    {
        com.questvisual.wordlens.e.a.a("info_send_feedback");
        Intent intent = new Intent("android.intent.action.SENDTO");
        StringBuilder stringbuilder = new StringBuilder("mailto:help@questvisual.com?");
        stringbuilder.append("subject=Word Lens Feedback");
        stringbuilder.append((new StringBuilder("&body=")).append(b.a(a.j())).toString());
        intent.setData(Uri.parse(stringbuilder.toString().replace(" ", "%20")));
        a.a(Intent.createChooser(intent, a.a(at.send_email)));
    }
}
