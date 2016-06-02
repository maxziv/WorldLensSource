// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.questvisual.wordlens;

import android.util.Log;
import com.questvisual.wordlens.d.k;
import com.questvisual.wordlens.e.a;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.questvisual.wordlens:
//            WordLensSystem, NativeLangMan, LangPackInfo, ae, 
//            DictResultEntry

public class NativeDictionary
{

    private static NativeDictionary b = null;
    private static AtomicInteger c = new AtomicInteger();
    private ae a;

    private NativeDictionary()
    {
        a = null;
        initNative();
    }

    public static void b()
    {
        synchronized (WordLensSystem.g())
        {
            saveOffCurrentPhraseSelectionNative();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static NativeDictionary c()
    {
        synchronized (WordLensSystem.g())
        {
            if (b == null)
            {
                b = new NativeDictionary();
            }
            c.incrementAndGet();
        }
        return b;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void d()
    {
        Object obj = WordLensSystem.g();
        obj;
        JVM INSTR monitorenter ;
        if (c.decrementAndGet() != 0)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        if (b != null)
        {
            b.teardownNative();
            b = null;
        }
_L2:
        return;
        Log.d("QV", "Already another user of dictionary. Will not release at this time.");
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private native DictResultEntry getDictResultNative(int i);

    private native int getNumResultsNative();

    private native void initNative();

    private native void postSearchNative();

    private native void preSearchNative();

    private void returnOCRStringToUI(byte abyte0[])
    {
        String s = k.a(com.questvisual.wordlens.NativeLangMan.a().srcLang);
        if (!Charset.isSupported(s)) goto _L2; else goto _L1
_L1:
        String s1 = new String(abyte0, s);
_L4:
        if (a != null)
        {
            a.a(s1);
        }
        return;
_L2:
        try
        {
            s1 = new String(abyte0);
            Log.w("QV", (new StringBuilder("Unable to find desired encoding: ")).append(s).append(", using system default instead").toString());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("QV", (new StringBuilder("Unsupported Encoding: ")).append(unsupportedencodingexception.getMessage()).toString());
            s1 = "";
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static native void saveOffCurrentPhraseSelectionNative();

    private native void searchByOCRSelectionNative();

    private native void searchByUserInputNative(byte abyte0[]);

    private native void setGiveOneMeaningOnlyNative(boolean flag);

    private native void teardownNative();

    public DictResultEntry a(int i)
    {
        DictResultEntry dictresultentry;
        synchronized (WordLensSystem.g())
        {
            dictresultentry = getDictResultNative(i);
        }
        return dictresultentry;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        synchronized (WordLensSystem.g())
        {
            setGiveOneMeaningOnlyNative(com.questvisual.wordlens.NativeLangMan.a().isDemo());
            preSearchNative();
            searchByOCRSelectionNative();
            postSearchNative();
        }
        com.questvisual.wordlens.e.a.a("dict_poke_a_word");
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ae ae1)
    {
        a = ae1;
    }

    public void a(CharSequence charsequence)
    {
        Object obj = WordLensSystem.g();
        obj;
        JVM INSTR monitorenter ;
        String s;
        String s1;
        preSearchNative();
        LangPackInfo langpackinfo = com.questvisual.wordlens.NativeLangMan.a();
        s = k.a(langpackinfo.srcLang);
        s1 = charsequence.toString();
        setGiveOneMeaningOnlyNative(langpackinfo.isDemo());
        searchByUserInputNative(s1.getBytes(s));
_L1:
        postSearchNative();
        com.questvisual.wordlens.e.a.a("dict_user_entry");
        return;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        String s2 = (new StringBuilder("Unsupported encoding convertin user dict search test for charset: ")).append(s).append(". Strange? ").append(unsupportedencodingexception.getLocalizedMessage()).toString();
        Log.e("QV", s2);
        com.questvisual.wordlens.e.a.a("ERROR_WL_BUG", s2, "");
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int e()
    {
        int i;
        synchronized (WordLensSystem.g())
        {
            i = getNumResultsNative();
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
