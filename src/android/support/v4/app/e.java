// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

// Referenced classes of package android.support.v4.app:
//            Fragment, o, z, i

public class e extends Fragment
    implements android.content.DialogInterface.OnCancelListener, android.content.DialogInterface.OnDismissListener
{

    int a;
    int b;
    boolean c;
    boolean d;
    int e;
    Dialog f;
    boolean g;
    boolean h;
    boolean i;

    public e()
    {
        a = 0;
        b = 0;
        c = true;
        d = true;
        e = -1;
    }

    public void a()
    {
        a(false);
    }

    public void a(Activity activity)
    {
        super.a(activity);
        if (!i)
        {
            h = false;
        }
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        boolean flag;
        if (G == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
        if (bundle != null)
        {
            a = bundle.getInt("android:style", 0);
            b = bundle.getInt("android:theme", 0);
            c = bundle.getBoolean("android:cancelable", true);
            d = bundle.getBoolean("android:showsDialog", d);
            e = bundle.getInt("android:backStackId", -1);
        }
    }

    public void a(o o1, String s)
    {
        h = false;
        i = true;
        z z1 = o1.a();
        z1.a(this, s);
        z1.a();
    }

    void a(boolean flag)
    {
        if (h)
        {
            return;
        }
        h = true;
        i = false;
        if (f != null)
        {
            f.dismiss();
            f = null;
        }
        g = true;
        if (e >= 0)
        {
            l().a(e, 1);
            e = -1;
            return;
        }
        z z1 = l().a();
        z1.a(this);
        if (flag)
        {
            z1.b();
            return;
        } else
        {
            z1.a();
            return;
        }
    }

    public Dialog b()
    {
        return f;
    }

    public LayoutInflater b(Bundle bundle)
    {
        if (!d)
        {
            return super.b(bundle);
        }
        f = c(bundle);
        a;
        JVM INSTR tableswitch 1 3: default 52
    //                   1 87
    //                   2 87
    //                   3 75;
           goto _L1 _L2 _L2 _L3
_L1:
        if (f != null)
        {
            return (LayoutInflater)f.getContext().getSystemService("layout_inflater");
        } else
        {
            return (LayoutInflater)C.getSystemService("layout_inflater");
        }
_L3:
        f.getWindow().addFlags(24);
_L2:
        f.requestWindowFeature(1);
          goto _L1
    }

    public int c()
    {
        return b;
    }

    public Dialog c(Bundle bundle)
    {
        return new Dialog(j(), c());
    }

    public void d()
    {
        super.d();
        if (!i && !h)
        {
            h = true;
        }
    }

    public void d(Bundle bundle)
    {
        super.d(bundle);
        if (d)
        {
            View view = o();
            if (view != null)
            {
                if (view.getParent() != null)
                {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                f.setContentView(view);
            }
            f.setOwnerActivity(j());
            f.setCancelable(c);
            f.setOnCancelListener(this);
            f.setOnDismissListener(this);
            if (bundle != null)
            {
                Bundle bundle1 = bundle.getBundle("android:savedDialogState");
                if (bundle1 != null)
                {
                    f.onRestoreInstanceState(bundle1);
                    return;
                }
            }
        }
    }

    public void e()
    {
        super.e();
        if (f != null)
        {
            g = false;
            f.show();
        }
    }

    public void e(Bundle bundle)
    {
        super.e(bundle);
        if (f != null)
        {
            Bundle bundle1 = f.onSaveInstanceState();
            if (bundle1 != null)
            {
                bundle.putBundle("android:savedDialogState", bundle1);
            }
        }
        if (a != 0)
        {
            bundle.putInt("android:style", a);
        }
        if (b != 0)
        {
            bundle.putInt("android:theme", b);
        }
        if (!c)
        {
            bundle.putBoolean("android:cancelable", c);
        }
        if (!d)
        {
            bundle.putBoolean("android:showsDialog", d);
        }
        if (e != -1)
        {
            bundle.putInt("android:backStackId", e);
        }
    }

    public void f()
    {
        super.f();
        if (f != null)
        {
            f.hide();
        }
    }

    public void g()
    {
        super.g();
        if (f != null)
        {
            g = true;
            f.dismiss();
            f = null;
        }
    }

    public void onCancel(DialogInterface dialoginterface)
    {
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        if (!g)
        {
            a(true);
        }
    }
}
