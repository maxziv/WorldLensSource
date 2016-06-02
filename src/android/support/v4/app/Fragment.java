// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.c.a;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

// Referenced classes of package android.support.v4.app:
//            g, q, i, ac, 
//            af, f, o

public class Fragment
    implements ComponentCallbacks, android.view.View.OnCreateContextMenuListener
{

    private static final HashMap a = new HashMap();
    int A;
    q B;
    i C;
    q D;
    Fragment E;
    int F;
    int G;
    String H;
    boolean I;
    boolean J;
    boolean K;
    boolean L;
    boolean M;
    boolean N;
    boolean O;
    int P;
    ViewGroup Q;
    View R;
    View S;
    boolean T;
    boolean U;
    ac V;
    boolean W;
    boolean X;
    int j;
    View k;
    int l;
    Bundle m;
    SparseArray n;
    int o;
    String p;
    Bundle q;
    Fragment r;
    int s;
    int t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;

    public Fragment()
    {
        j = 0;
        o = -1;
        s = -1;
        N = true;
        U = true;
    }

    public static Fragment a(Context context, String s1)
    {
        return a(context, s1, ((Bundle) (null)));
    }

    public static Fragment a(Context context, String s1, Bundle bundle)
    {
        Class class1;
        Fragment fragment;
        try
        {
            class1 = (Class)a.get(s1);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new g((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), classnotfoundexception);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new g((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new g((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), illegalaccessexception);
        }
        if (class1 != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        class1 = context.getClassLoader().loadClass(s1);
        a.put(s1, class1);
        fragment = (Fragment)class1.newInstance();
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        bundle.setClassLoader(fragment.getClass().getClassLoader());
        fragment.q = bundle;
        return fragment;
    }

    void A()
    {
label0:
        {
            if (D != null)
            {
                D.p();
            }
            if (W)
            {
                W = false;
                if (!X)
                {
                    X = true;
                    V = C.a(p, W, false);
                }
                if (V != null)
                {
                    if (C.h)
                    {
                        break label0;
                    }
                    V.c();
                }
            }
            return;
        }
        V.d();
    }

    void B()
    {
        if (D != null)
        {
            D.q();
        }
        O = false;
        g();
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onDestroyView()").toString());
        }
        if (V != null)
        {
            V.f();
        }
    }

    void C()
    {
        if (D != null)
        {
            D.r();
        }
        O = false;
        r();
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onDestroy()").toString());
        } else
        {
            return;
        }
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return null;
    }

    public Animation a(int i1, boolean flag, int j1)
    {
        return null;
    }

    public final String a(int i1)
    {
        return k().getString(i1);
    }

    public void a(int i1, int j1, Intent intent)
    {
    }

    final void a(int i1, Fragment fragment)
    {
        o = i1;
        if (fragment != null)
        {
            p = (new StringBuilder()).append(fragment.p).append(":").append(o).toString();
            return;
        } else
        {
            p = (new StringBuilder()).append("android:fragment:").append(o).toString();
            return;
        }
    }

    public void a(Activity activity)
    {
        O = true;
    }

    public void a(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        O = true;
    }

    public void a(Intent intent)
    {
        if (C == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            C.a(this, intent, -1);
            return;
        }
    }

    public void a(Intent intent, int i1)
    {
        if (C == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            C.a(this, intent, i1);
            return;
        }
    }

    void a(Configuration configuration)
    {
        onConfigurationChanged(configuration);
        if (D != null)
        {
            D.a(configuration);
        }
    }

    public void a(Bundle bundle)
    {
        O = true;
    }

    public void a(Menu menu)
    {
    }

    public void a(Menu menu, MenuInflater menuinflater)
    {
    }

    public void a(View view, Bundle bundle)
    {
    }

    public void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s1);
        printwriter.print("mFragmentId=#");
        printwriter.print(Integer.toHexString(F));
        printwriter.print(" mContainerId=#");
        printwriter.print(Integer.toHexString(G));
        printwriter.print(" mTag=");
        printwriter.println(H);
        printwriter.print(s1);
        printwriter.print("mState=");
        printwriter.print(j);
        printwriter.print(" mIndex=");
        printwriter.print(o);
        printwriter.print(" mWho=");
        printwriter.print(p);
        printwriter.print(" mBackStackNesting=");
        printwriter.println(A);
        printwriter.print(s1);
        printwriter.print("mAdded=");
        printwriter.print(u);
        printwriter.print(" mRemoving=");
        printwriter.print(v);
        printwriter.print(" mResumed=");
        printwriter.print(w);
        printwriter.print(" mFromLayout=");
        printwriter.print(x);
        printwriter.print(" mInLayout=");
        printwriter.println(y);
        printwriter.print(s1);
        printwriter.print("mHidden=");
        printwriter.print(I);
        printwriter.print(" mDetached=");
        printwriter.print(J);
        printwriter.print(" mMenuVisible=");
        printwriter.print(N);
        printwriter.print(" mHasMenu=");
        printwriter.println(M);
        printwriter.print(s1);
        printwriter.print("mRetainInstance=");
        printwriter.print(K);
        printwriter.print(" mRetaining=");
        printwriter.print(L);
        printwriter.print(" mUserVisibleHint=");
        printwriter.println(U);
        if (B != null)
        {
            printwriter.print(s1);
            printwriter.print("mFragmentManager=");
            printwriter.println(B);
        }
        if (C != null)
        {
            printwriter.print(s1);
            printwriter.print("mActivity=");
            printwriter.println(C);
        }
        if (E != null)
        {
            printwriter.print(s1);
            printwriter.print("mParentFragment=");
            printwriter.println(E);
        }
        if (q != null)
        {
            printwriter.print(s1);
            printwriter.print("mArguments=");
            printwriter.println(q);
        }
        if (m != null)
        {
            printwriter.print(s1);
            printwriter.print("mSavedFragmentState=");
            printwriter.println(m);
        }
        if (n != null)
        {
            printwriter.print(s1);
            printwriter.print("mSavedViewState=");
            printwriter.println(n);
        }
        if (r != null)
        {
            printwriter.print(s1);
            printwriter.print("mTarget=");
            printwriter.print(r);
            printwriter.print(" mTargetRequestCode=");
            printwriter.println(t);
        }
        if (P != 0)
        {
            printwriter.print(s1);
            printwriter.print("mNextAnim=");
            printwriter.println(P);
        }
        if (Q != null)
        {
            printwriter.print(s1);
            printwriter.print("mContainer=");
            printwriter.println(Q);
        }
        if (R != null)
        {
            printwriter.print(s1);
            printwriter.print("mView=");
            printwriter.println(R);
        }
        if (S != null)
        {
            printwriter.print(s1);
            printwriter.print("mInnerView=");
            printwriter.println(R);
        }
        if (k != null)
        {
            printwriter.print(s1);
            printwriter.print("mAnimatingAway=");
            printwriter.println(k);
            printwriter.print(s1);
            printwriter.print("mStateAfterAnimating=");
            printwriter.println(l);
        }
        if (V != null)
        {
            printwriter.print(s1);
            printwriter.println("Loader Manager:");
            V.a((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
        }
        if (D != null)
        {
            printwriter.print(s1);
            printwriter.println((new StringBuilder()).append("Child ").append(D).append(":").toString());
            D.a((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
        }
    }

    public boolean a(MenuItem menuitem)
    {
        return false;
    }

    public LayoutInflater b(Bundle bundle)
    {
        return C.getLayoutInflater();
    }

    View b(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (D != null)
        {
            D.i();
        }
        return a(layoutinflater, viewgroup, bundle);
    }

    public void b(Menu menu)
    {
    }

    public void b(boolean flag)
    {
    }

    boolean b(Menu menu, MenuInflater menuinflater)
    {
        boolean flag = I;
        boolean flag1 = false;
        if (!flag)
        {
            boolean flag2 = M;
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = N;
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                    a(menu, menuinflater);
                }
            }
            if (D != null)
            {
                flag1 |= D.a(menu, menuinflater);
            }
        }
        return flag1;
    }

    public boolean b(MenuItem menuitem)
    {
        return false;
    }

    public void c(boolean flag)
    {
        if (flag && E != null)
        {
            throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
        } else
        {
            K = flag;
            return;
        }
    }

    boolean c(Menu menu)
    {
        boolean flag = I;
        boolean flag1 = false;
        if (!flag)
        {
            boolean flag2 = M;
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = N;
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                    a(menu);
                }
            }
            if (D != null)
            {
                flag1 |= D.a(menu);
            }
        }
        return flag1;
    }

    boolean c(MenuItem menuitem)
    {
        while (!I && (M && N && a(menuitem) || D != null && D.a(menuitem))) 
        {
            return true;
        }
        return false;
    }

    public void d()
    {
        O = true;
    }

    public void d(Bundle bundle)
    {
        O = true;
    }

    void d(Menu menu)
    {
        if (!I)
        {
            if (M && N)
            {
                b(menu);
            }
            if (D != null)
            {
                D.b(menu);
            }
        }
    }

    boolean d(MenuItem menuitem)
    {
        while (!I && (b(menuitem) || D != null && D.b(menuitem))) 
        {
            return true;
        }
        return false;
    }

    public void e()
    {
        O = true;
        if (!W)
        {
            W = true;
            if (!X)
            {
                X = true;
                V = C.a(p, W, false);
            }
            if (V != null)
            {
                V.b();
            }
        }
    }

    public void e(Bundle bundle)
    {
    }

    public final boolean equals(Object obj)
    {
        return super.equals(obj);
    }

    public void f()
    {
        O = true;
    }

    final void f(Bundle bundle)
    {
        if (n != null)
        {
            S.restoreHierarchyState(n);
            n = null;
        }
        O = false;
        h(bundle);
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onViewStateRestored()").toString());
        } else
        {
            return;
        }
    }

    public void g()
    {
        O = true;
    }

    public void g(Bundle bundle)
    {
        if (o >= 0)
        {
            throw new IllegalStateException("Fragment already active");
        } else
        {
            q = bundle;
            return;
        }
    }

    public void h(Bundle bundle)
    {
        O = true;
    }

    final boolean h()
    {
        return A > 0;
    }

    public final int hashCode()
    {
        return super.hashCode();
    }

    public final Bundle i()
    {
        return q;
    }

    void i(Bundle bundle)
    {
        if (D != null)
        {
            D.i();
        }
        O = false;
        a(bundle);
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onCreate()").toString());
        }
        if (bundle != null)
        {
            android.os.Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null)
            {
                if (D == null)
                {
                    u();
                }
                D.a(parcelable, null);
                D.j();
            }
        }
    }

    public final i j()
    {
        return C;
    }

    void j(Bundle bundle)
    {
        if (D != null)
        {
            D.i();
        }
        O = false;
        d(bundle);
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onActivityCreated()").toString());
        }
        if (D != null)
        {
            D.k();
        }
    }

    public final Resources k()
    {
        if (C == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            return C.getResources();
        }
    }

    void k(Bundle bundle)
    {
        e(bundle);
        if (D != null)
        {
            android.os.Parcelable parcelable = D.h();
            if (parcelable != null)
            {
                bundle.putParcelable("android:support:fragments", parcelable);
            }
        }
    }

    public final o l()
    {
        return B;
    }

    public final o m()
    {
        if (D != null) goto _L2; else goto _L1
_L1:
        u();
        if (j < 5) goto _L4; else goto _L3
_L3:
        D.m();
_L2:
        return D;
_L4:
        if (j >= 4)
        {
            D.l();
        } else
        if (j >= 2)
        {
            D.k();
        } else
        if (j >= 1)
        {
            D.j();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final boolean n()
    {
        return J;
    }

    public View o()
    {
        return R;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        O = true;
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        j().onCreateContextMenu(contextmenu, view, contextmenuinfo);
    }

    public void onLowMemory()
    {
        O = true;
    }

    public void p()
    {
        O = true;
    }

    public void q()
    {
        O = true;
    }

    public void r()
    {
        O = true;
        if (!X)
        {
            X = true;
            V = C.a(p, W, false);
        }
        if (V != null)
        {
            V.h();
        }
    }

    void s()
    {
        o = -1;
        p = null;
        u = false;
        v = false;
        w = false;
        x = false;
        y = false;
        z = false;
        A = 0;
        B = null;
        C = null;
        F = 0;
        G = 0;
        H = null;
        I = false;
        J = false;
        L = false;
        V = null;
        W = false;
        X = false;
    }

    public void t()
    {
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        android.support.v4.c.a.a(this, stringbuilder);
        if (o >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(o);
        }
        if (F != 0)
        {
            stringbuilder.append(" id=0x");
            stringbuilder.append(Integer.toHexString(F));
        }
        if (H != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(H);
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    void u()
    {
        D = new q();
        D.a(C, new f(this), this);
    }

    void v()
    {
        if (D != null)
        {
            D.i();
            D.e();
        }
        O = false;
        e();
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onStart()").toString());
        }
        if (D != null)
        {
            D.l();
        }
        if (V != null)
        {
            V.g();
        }
    }

    void w()
    {
        if (D != null)
        {
            D.i();
            D.e();
        }
        O = false;
        p();
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onResume()").toString());
        }
        if (D != null)
        {
            D.m();
            D.e();
        }
    }

    void x()
    {
        onLowMemory();
        if (D != null)
        {
            D.s();
        }
    }

    void y()
    {
        if (D != null)
        {
            D.n();
        }
        O = false;
        q();
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onPause()").toString());
        } else
        {
            return;
        }
    }

    void z()
    {
        if (D != null)
        {
            D.o();
        }
        O = false;
        f();
        if (!O)
        {
            throw new af((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onStop()").toString());
        } else
        {
            return;
        }
    }

}
