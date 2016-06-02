// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.questvisual.wordlens.c.a;
import com.questvisual.wordlens.e.b;

// Referenced classes of package com.questvisual.wordlens:
//            l, at

class m
    implements android.view.View.OnClickListener
{

    final l a;

    m(l l1)
    {
        a = l1;
        super();
    }

    public void onClick(View view)
    {
        String s;
        if (com.questvisual.wordlens.l.a(a).getText() != null)
        {
            s = com.questvisual.wordlens.l.a(a).getText().toString();
        } else
        {
            s = "";
        }
        s.trim();
        if (s == null || s.length() == 0)
        {
            (new android.app.AlertDialog.Builder(a.j())).setTitle(a.a(at.send_feedback)).setMessage(at.feedback_missing_comment).setPositiveButton(0x104000a, null).setCancelable(true).show();
            return;
        }
        String s1;
        String s2;
        if (com.questvisual.wordlens.l.b(a).getText() != null)
        {
            s1 = com.questvisual.wordlens.l.b(a).getText().toString();
        } else
        {
            s1 = "";
        }
        s2 = s1.trim();
        if (s2 == null || s2.length() == 0 || !s2.matches(".+\\@.+\\..+"))
        {
            (new android.app.AlertDialog.Builder(a.j())).setTitle(a.a(at.send_feedback)).setMessage(at.feedback_missing_email).setPositiveButton(0x104000a, null).setCancelable(true).show();
            return;
        } else
        {
            String s3 = b.a(a.j());
            com.questvisual.wordlens.l.a(a, new a(a, s3, s2, -1F, s));
            l.c(a).execute(new String[0]);
            return;
        }
    }
}
