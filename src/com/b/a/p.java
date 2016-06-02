// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

// Referenced classes of package com.b.a:
//            af, f

final class p extends SSLSocketFactory
{

    private SSLContext a;

    public p(f f, KeyStore keystore)
    {
        super(keystore);
        a = SSLContext.getInstance("TLS");
        af af1 = new af();
        a.init(null, new TrustManager[] {
            af1
        }, null);
    }

    public final Socket createSocket()
    {
        return a.getSocketFactory().createSocket();
    }

    public final Socket createSocket(Socket socket, String s, int i, boolean flag)
    {
        return a.getSocketFactory().createSocket(socket, s, i, flag);
    }
}
