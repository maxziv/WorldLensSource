// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.util.ui;

import android.app.ActionBar;
import android.os.Bundle;
import android.support.v4.app.e;
import android.support.v4.app.i;
import android.support.v4.app.o;
import android.support.v4.app.z;
import android.view.MenuItem;
import com.questvisual.wordlens.WordLensSystem;
import com.questvisual.wordlens.ao;
import com.questvisual.wordlens.aq;

public abstract class b extends i
{

    public b()
    {
    }

    private void g()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ActionBar actionbar = getActionBar();
            if (actionbar != null)
            {
                actionbar.setDisplayHomeAsUpEnabled(true);
            }
        }
    }

    protected abstract e f();

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        WordLensSystem.a(getApplicationContext());
        setContentView(aq.single_fragment_activity);
        g();
        if (bundle != null)
        {
            return;
        } else
        {
            e e = f();
            z z1 = e().a();
            z1.a(ao.fragment_container, e);
            z1.a();
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            finish();
            break;
        }
        return true;
    }
}
