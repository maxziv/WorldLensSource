// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class be
    implements android.content.DialogInterface.OnClickListener
{

    final WordLensActivity a;

    be(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse((new StringBuilder("market://details?id=")).append(a.getPackageName()).toString()));
            a.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Log.i("QV", (new StringBuilder("Cannot launch activity to review. Oh well! Message: ")).append(activitynotfoundexception.getLocalizedMessage()).toString());
        }
    }
}
