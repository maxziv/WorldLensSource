// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.questvisual.util.ui.a;

// Referenced classes of package com.questvisual.wordlens:
//            aq, ao, t, at, 
//            v, u

public class s extends a
{

    public s()
    {
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(aq.info_screen, viewgroup, false);
        view.findViewById(ao.info_url).setOnClickListener(new t(this));
        TextView textview = (TextView)view.findViewById(ao.info_version);
        ((Button)view.findViewById(ao.debug_button)).setVisibility(8);
        try
        {
            android.support.v4.app.i i = j();
            String s1 = i.getPackageManager().getPackageInfo(i.getPackageName(), 0).versionName;
            textview.setText((new StringBuilder(String.valueOf(a(at.info_version_label)))).append(" ").append(s1).toString());
        }
        catch (Exception exception)
        {
            Log.e("QV", (new StringBuilder("Unable to find application version. (")).append(exception.getLocalizedMessage()).append(") Clearing version field.").toString());
            textview.setText(null);
        }
        view.findViewById(ao.info_mailto).setOnClickListener(new v(this, null));
        ((Button)view.findViewById(ao.reset_screen_compensation_button)).setOnClickListener(new u(this, null));
        if (b() != null)
        {
            b().setTitle(at.info_label);
        }
        return view;
    }

    public void a(int i, int j, Intent intent)
    {
        super.a(i, j, intent);
    }

    public void e()
    {
        super.e();
        com.questvisual.wordlens.e.a.a(j());
    }

    public void f()
    {
        com.questvisual.wordlens.e.a.b(j());
        super.f();
    }

    public void p()
    {
        super.p();
        com.questvisual.wordlens.e.a.a("info_screen", true);
    }

    public void q()
    {
        com.questvisual.wordlens.e.a.b("info_screen");
        super.q();
    }
}
