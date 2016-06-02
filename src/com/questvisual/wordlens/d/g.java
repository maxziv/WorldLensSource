// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.d;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class g extends BaseAdapter
{

    private Map a;
    private List b;
    private Context c;
    private LayoutInflater d;
    private int e;
    private boolean f;

    public g(Context context, boolean flag)
    {
        a = new HashMap();
        b = new ArrayList();
        e = 0;
        c = context;
        d = LayoutInflater.from(c);
        f = flag;
    }

    private void b(Object obj, List list)
    {
        if (!b.contains(obj))
        {
            b.add(obj);
        }
        a.put(obj, list);
    }

    protected LayoutInflater a()
    {
        return d;
    }

    protected abstract View a(View view, Object obj, int i, int j);

    public void a(Object obj, List list)
    {
        b(obj, list);
        c();
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    protected Context b()
    {
        return c;
    }

    protected abstract View b(View view, Object obj, int i, int j);

    protected void c()
    {
        e = 0;
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                Log.d("QV", (new StringBuilder("SectionedBaseAdapter.setSection(): mEntryCount=")).append(e).toString());
                return;
            }
            Object obj = (Object)iterator.next();
            if (a.size() > 1 || f)
            {
                e = 1 + e;
            }
            e = e + ((List)a.get(obj)).size();
        } while (true);
    }

    public int getCount()
    {
        return e;
    }

    public Object getItem(int i)
    {
        Iterator iterator = b.iterator();
_L6:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return obj;
_L2:
        List list;
        int j;
        obj = (Object)iterator.next();
        list = (List)a.get(obj);
        j = 1 + list.size();
        if (!f && a.size() == 1)
        {
            return list.get(i);
        }
        if (i == 0) goto _L4; else goto _L3
_L3:
        if (i < j)
        {
            return list.get(i - 1);
        }
        i -= j;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        if (!f && a.size() == 1)
        {
            return 1;
        }
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                Log.e("QV", (new StringBuilder("Why was unable to find itemViewType for position: ")).append(i).toString());
                return 0;
            }
            Object obj = (Object)iterator.next();
            int j = 1 + ((List)a.get(obj)).size();
            if (i == 0)
            {
                return 0;
            }
            if (i < j)
            {
                return 1;
            }
            i -= j;
        } while (true);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Iterator iterator = b.iterator();
        int j = i;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            Object obj = (Object)iterator.next();
            List list = (List)a.get(obj);
            int k = 1 + list.size();
            if (!f && a.size() == 1)
            {
                return b(view, list.get(j), i, j);
            }
            if (j == 0)
            {
                return a(view, obj, i, j);
            }
            if (j < k)
            {
                return b(view, list.get(j - 1), i, j);
            }
            j -= k;
        } while (true);
    }

    public int getViewTypeCount()
    {
        return 2;
    }

    public boolean hasStableIds()
    {
        return false;
    }

    public boolean isEnabled(int i)
    {
        return 1 == getItemViewType(i);
    }
}
