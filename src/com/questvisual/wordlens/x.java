// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

// Referenced classes of package com.questvisual.wordlens:
//            w

class x
    implements android.content.DialogInterface.OnClickListener
{

    final w a;
    private final Uri b;

    x(w w1, Uri uri)
    {
        a = w1;
        b = uri;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent("android.intent.action.VIEW", b);
        a.a(intent);
    }
}
