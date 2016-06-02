// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class LanguagesProvider extends ContentProvider
{

    public LanguagesProvider()
    {
    }

    public int delete(Uri uri, String s, String as[])
    {
        throw new UnsupportedOperationException();
    }

    public String getType(Uri uri)
    {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        throw new UnsupportedOperationException();
    }

    public boolean onCreate()
    {
        SharedPreferences sharedpreferences = getContext().getSharedPreferences("word.lens", 0);
        boolean flag = false;
        if (sharedpreferences != null)
        {
            flag = true;
        }
        return flag;
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        SharedPreferences sharedpreferences = getContext().getSharedPreferences("word.lens", 0);
        MatrixCursor matrixcursor = new MatrixCursor(new String[] {
            "lpi.name", "lpi.status"
        });
        Iterator iterator = sharedpreferences.getAll().keySet().iterator();
        do
        {
            String s3;
            boolean flag;
            do
            {
                String s2;
                do
                {
                    if (!iterator.hasNext())
                    {
                        return matrixcursor;
                    }
                    s2 = (String)iterator.next();
                } while (!s2.startsWith("LPS."));
                s3 = s2.substring("LPS.".length());
                flag = sharedpreferences.getBoolean(s2, false);
            } while (!flag);
            Object aobj[] = new Object[2];
            aobj[0] = s3;
            aobj[1] = Boolean.valueOf(flag);
            matrixcursor.addRow(aobj);
        } while (true);
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        throw new UnsupportedOperationException();
    }
}
