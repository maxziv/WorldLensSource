// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.view.View;
import android.widget.ImageView;
import com.questvisual.wordlens.c.d;
import com.questvisual.wordlens.e.a;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensActivity

class bt
    implements android.view.View.OnClickListener
{

    final WordLensActivity a;

    bt(WordLensActivity wordlensactivity)
    {
        a = wordlensactivity;
        super();
    }

    public void onClick(View view)
    {
label0:
        {
            if (WordLensActivity.c(a).compareAndSet(false, true))
            {
                com.questvisual.wordlens.e.a.a("wl_zoom");
                d d1 = d.a(com.questvisual.wordlens.WordLensActivity.d(a), (ImageView)view, WordLensActivity.e(a), WordLensActivity.c(a));
                if (d1 == null)
                {
                    break label0;
                }
                d1.execute(new Void[0]);
            }
            return;
        }
        WordLensActivity.c(a).set(false);
    }
}
