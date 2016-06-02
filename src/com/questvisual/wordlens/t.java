// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.questvisual.wordlens.e.a;

// Referenced classes of package com.questvisual.wordlens:
//            at, s

class t
    implements android.view.View.OnClickListener
{

    final s a;

    t(s s1)
    {
        a = s1;
        super();
    }

    public void onClick(View view)
    {
        com.questvisual.wordlens.e.a.a("info_visit_website");
        String s1 = a.a(at.info_url);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(s1));
        a.a(intent);
    }
}
