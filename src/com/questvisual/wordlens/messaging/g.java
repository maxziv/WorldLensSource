// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens.messaging;

import android.util.Log;

public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    public static final g g;
    public static final g h;
    public static final g i;
    public static final g j;
    public static final g k;
    public static final g l;
    public static final g m;
    public static final g n;
    public static final g o;
    public static final g p;
    public static final g q;
    public static final g r;
    public static final g s;
    public static final g t;
    public static final g u;
    public static final g v;
    public static final g w;
    private static final g x[];

    private g(String s1, int i1)
    {
        super(s1, i1);
    }

    public static g a(int i1)
    {
        g ag[] = values();
        if (ag != null && i1 < ag.length)
        {
            return ag[i1];
        } else
        {
            Log.e("QV", (new StringBuilder("Unknown value of native enum value: ")).append(i1).toString());
            return null;
        }
    }

    public static g valueOf(String s1)
    {
        return (g)Enum.valueOf(com/questvisual/wordlens/messaging/g, s1);
    }

    public static g[] values()
    {
        g ag[] = x;
        int i1 = ag.length;
        g ag1[] = new g[i1];
        System.arraycopy(ag, 0, ag1, 0, i1);
        return ag1;
    }

    static 
    {
        a = new g("kMsg_INVALID", 0);
        b = new g("kMsg_QVLib_BEGIN", 1);
        c = new g("kMsg_GUIInput", 2);
        d = new g("kMsg_GUIViewInfo", 3);
        e = new g("kMsg_CameraState", 4);
        f = new g("kMsg_CameraFocus", 5);
        g = new g("kMsg_WLViewRotation", 6);
        h = new g("kMsg_WLViewEmptyClick", 7);
        i = new g("kMsg_WLOCRInitialized", 8);
        j = new g("kMsg_WLOCRHasNewResults", 9);
        k = new g("kMsg_WLOCRImageSourceChanged", 10);
        l = new g("kMsg_WLLanguagesSelected", 11);
        m = new g("kMsg_WLLangLoadStatus", 12);
        n = new g("kMsg_WLDictLookup", 13);
        o = new g("kMsg_WLOCRLetterBox", 14);
        p = new g("kMsg_WLOCRConfidence", 15);
        q = new g("kMsg_WLOCRTextSize", 16);
        r = new g("kMsg_WLOCRPerfMon", 17);
        s = new g("kMsg_DLCDownloadsComplete", 18);
        t = new g("EVENT_CAMERA_START", 19);
        u = new g("EVENT_CAMERA_STOP", 20);
        v = new g("EVENT_NEW_STATUS_CHECK", 21);
        w = new g("EVENT_REFRESH_LANGUAGES", 22);
        g ag[] = new g[23];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        ag[6] = g;
        ag[7] = h;
        ag[8] = i;
        ag[9] = j;
        ag[10] = k;
        ag[11] = l;
        ag[12] = m;
        ag[13] = n;
        ag[14] = o;
        ag[15] = p;
        ag[16] = q;
        ag[17] = r;
        ag[18] = s;
        ag[19] = t;
        ag[20] = u;
        ag[21] = v;
        ag[22] = w;
        x = ag;
    }
}
