// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.io.DataInput;
import java.io.DataOutput;

// Referenced classes of package com.b.a:
//            q

final class u extends q
{

    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private int V;
    private int W;
    private int X;
    private int Y;
    private int Z;
    byte a;
    private int aa;
    private int ab;
    private int ac;
    private int ad;
    private int ae;
    private int af;
    private boolean ag;
    String b;
    long c;
    String d;
    int e;
    int f;
    String g;
    int h;
    int i;
    String j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    private long r;
    private String s;
    private int t;
    private int u;
    private String v;
    private int w;
    private int x;
    private String y;
    private int z;

    u()
    {
    }

    u(DataInput datainput)
    {
        c(datainput);
    }

    private void c(DataInput datainput)
    {
        a = datainput.readByte();
        b = datainput.readUTF();
        c = datainput.readLong();
        r = datainput.readLong();
        d = datainput.readUTF();
        e = datainput.readUnsignedShort();
        f = datainput.readInt();
        g = datainput.readUTF();
        h = datainput.readUnsignedShort();
        i = datainput.readInt();
        j = datainput.readUTF();
        k = datainput.readUnsignedShort();
        l = datainput.readInt();
    }

    final void a(DataInput datainput)
    {
        s = datainput.readUTF();
        t = datainput.readUnsignedShort();
        u = datainput.readInt();
        v = datainput.readUTF();
        w = datainput.readUnsignedShort();
        x = datainput.readInt();
        y = datainput.readUTF();
        z = datainput.readUnsignedShort();
        A = datainput.readInt();
        B = datainput.readInt();
        C = datainput.readInt();
        m = datainput.readInt();
        n = datainput.readInt();
        o = datainput.readInt();
        p = datainput.readInt();
        D = datainput.readInt();
        E = datainput.readInt();
        F = datainput.readInt();
        G = datainput.readInt();
        H = datainput.readInt();
        I = datainput.readInt();
        J = datainput.readInt();
        K = datainput.readInt();
        q = datainput.readInt();
        L = datainput.readInt();
        M = datainput.readInt();
        N = datainput.readInt();
        O = datainput.readInt();
        P = datainput.readInt();
        Q = datainput.readInt();
        R = datainput.readInt();
        S = datainput.readInt();
        T = datainput.readInt();
        U = datainput.readInt();
        V = datainput.readInt();
        W = datainput.readInt();
        X = datainput.readInt();
        Y = datainput.readInt();
        Z = datainput.readInt();
        aa = datainput.readInt();
        ab = datainput.readInt();
        ac = datainput.readInt();
        ad = datainput.readInt();
        ae = datainput.readInt();
        af = datainput.readInt();
        ag = true;
    }

    final void a(DataOutput dataoutput)
    {
        dataoutput.writeByte(a);
        dataoutput.writeUTF(b);
        dataoutput.writeLong(c);
        dataoutput.writeLong(r);
        dataoutput.writeUTF(d);
        dataoutput.writeShort(e);
        dataoutput.writeInt(f);
        dataoutput.writeUTF(g);
        dataoutput.writeShort(h);
        dataoutput.writeInt(i);
        dataoutput.writeUTF(j);
        dataoutput.writeShort(k);
        dataoutput.writeInt(l);
        dataoutput.writeBoolean(ag);
        if (ag)
        {
            dataoutput.writeUTF(s);
            dataoutput.writeShort(t);
            dataoutput.writeInt(u);
            dataoutput.writeUTF(v);
            dataoutput.writeShort(w);
            dataoutput.writeInt(x);
            dataoutput.writeUTF(y);
            dataoutput.writeShort(z);
            dataoutput.writeInt(A);
            dataoutput.writeInt(B);
            dataoutput.writeInt(C);
            dataoutput.writeInt(m);
            dataoutput.writeInt(n);
            dataoutput.writeInt(o);
            dataoutput.writeInt(p);
            dataoutput.writeInt(D);
            dataoutput.writeInt(E);
            dataoutput.writeInt(F);
            dataoutput.writeInt(G);
            dataoutput.writeInt(H);
            dataoutput.writeInt(I);
            dataoutput.writeInt(J);
            dataoutput.writeInt(K);
            dataoutput.writeInt(q);
            dataoutput.writeInt(L);
            dataoutput.writeInt(M);
            dataoutput.writeInt(N);
            dataoutput.writeInt(O);
            dataoutput.writeInt(P);
            dataoutput.writeInt(Q);
            dataoutput.writeInt(R);
            dataoutput.writeInt(S);
            dataoutput.writeInt(T);
            dataoutput.writeInt(U);
            dataoutput.writeInt(V);
            dataoutput.writeInt(W);
            dataoutput.writeInt(X);
            dataoutput.writeInt(Y);
            dataoutput.writeInt(Z);
            dataoutput.writeInt(aa);
            dataoutput.writeInt(ab);
            dataoutput.writeInt(ac);
            dataoutput.writeInt(ad);
            dataoutput.writeInt(ae);
            dataoutput.writeInt(af);
        }
    }

    final void b(DataInput datainput)
    {
        c(datainput);
        ag = datainput.readBoolean();
        if (ag)
        {
            a(datainput);
        }
    }
}
