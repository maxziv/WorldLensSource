// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.Activity;
import android.app.Dialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import com.questvisual.util.ui.a;

// Referenced classes of package com.questvisual.wordlens:
//            m, aq, ao, at

public class l extends a
{

    private EditText Y;
    private EditText Z;
    private com.questvisual.wordlens.c.a aa;
    private boolean ab;
    private android.view.View.OnClickListener ac;

    public l()
    {
        aa = null;
        ab = false;
        ac = new m(this);
    }

    static EditText a(l l1)
    {
        return l1.Z;
    }

    static void a(l l1, com.questvisual.wordlens.c.a a1)
    {
        l1.aa = a1;
    }

    static EditText b(l l1)
    {
        return l1.Y;
    }

    static com.questvisual.wordlens.c.a c(l l1)
    {
        return l1.aa;
    }

    public void E()
    {
        PreferenceManager.getDefaultSharedPreferences(j()).edit().remove("key.saved.user.email").remove("key.saved.user.rating").remove("key.saved.user.comments").commit();
        ab = true;
        Z.setText(null);
        Y.setText(null);
        a();
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(aq.fragment_feedback, viewgroup, false);
        Y = (EditText)view.findViewById(ao.text_email);
        Z = (EditText)view.findViewById(ao.text_comments);
        ((Button)view.findViewById(ao.button_send)).setOnClickListener(ac);
        if (b() != null)
        {
            b().setTitle(at.send_feedback);
        }
        return view;
    }

    public void a(Activity activity)
    {
        super.a(activity);
        if (aa != null)
        {
            aa.a(this);
        }
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        c(true);
    }

    public void a(View view, Bundle bundle)
    {
        if (!D())
        {
            b().getWindow().setSoftInputMode(16);
        }
        super.a(view, bundle);
    }

    public void d()
    {
        if (aa != null)
        {
            aa.a();
        }
        super.d();
    }

    public void p()
    {
        super.p();
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(j());
        String s = sharedpreferences.getString("key.saved.user.email", null);
        if (s != null)
        {
            Y.setText(s);
        }
        String s1 = sharedpreferences.getString("key.saved.user.comments", null);
        if (s1 != null)
        {
            Z.setText(s1);
        }
        ab = false;
    }

    public void q()
    {
        if (!ab)
        {
            android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(j()).edit();
            Editable editable = Y.getText();
            if (editable != null && editable.toString().length() > 0)
            {
                editor.putString("key.saved.user.email", editable.toString());
            }
            Editable editable1 = Z.getText();
            if (editable1 != null && editable1.toString().length() > 0)
            {
                editor.putString("key.saved.user.comments", editable1.toString());
            }
            editor.commit();
        }
        super.q();
    }
}
