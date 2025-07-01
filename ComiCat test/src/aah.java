// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Enumeration;

abstract class aah extends zm
    implements Enumeration
{

    protected int D;
    protected int E;
    protected int F;
    protected int G;
    protected int H;
    protected int I;
    protected int J;
    int K;
    byte L;
    boolean M;
    boolean N;
    byte O[];
    int P;
    int Q;
    za R[];
    private int S;
    private boolean T;
    private boolean U;
    private int a;
    protected int b;
    protected int c;
    protected int d;

    aah()
    {
        M = true;
        N = true;
        O = null;
    }

    abstract int a(byte abyte0[], int i1);

    abstract int a(byte abyte0[], int i1, int j1);

    final void e()
    {
        super.e();
        J = 0;
        M = true;
        N = true;
        U = false;
        T = false;
    }

    public boolean hasMoreElements()
    {
        return l == 0 && M;
    }

    final int i(byte abyte0[], int i1)
    {
        return 0;
    }

    final int j(byte abyte0[], int i1)
    {
        return 0;
    }

    final int k(byte abyte0[], int i1)
    {
        b = d(abyte0, i1);
        if (J == 0)
        {
            J = b;
        }
        int j1 = i1 + 2;
        c = d(abyte0, j1);
        j1 += 4;
        d = d(abyte0, j1);
        j1 += 2;
        D = d(abyte0, j1);
        j1 += 2;
        E = d(abyte0, j1);
        j1 += 2;
        K = d(abyte0, j1);
        j1 += 2;
        F = d(abyte0, j1);
        j1 += 2;
        G = d(abyte0, j1);
        j1 += 2;
        H = abyte0[j1] & 0xff;
        if (H != 0 && abx.a > 2)
        {
            e.println((new StringBuilder("setupCount is not zero: ")).append(H).toString());
        }
        return (j1 + 2) - i1;
    }

    final int l(byte abyte0[], int i1)
    {
        S = 0;
        a = 0;
        int j1 = i1;
        if (d > 0)
        {
            j1 = D - (i1 - i);
            a = j1;
            i1 = j1 + i1;
            System.arraycopy(abyte0, i1, O, I + E, d);
            j1 = i1 + d;
        }
        if (K > 0)
        {
            i1 = F - (j1 - i);
            S = i1;
            System.arraycopy(abyte0, i1 + j1, O, J + G, K);
        }
        if (!T && E + d == b)
        {
            T = true;
        }
        if (!U && G + K == c)
        {
            U = true;
        }
        if (T && U)
        {
            M = false;
            a(O, I);
            a(O, J, c);
        }
        return a + d + S + K;
    }

    public Object nextElement()
    {
        if (N)
        {
            N = false;
        }
        return this;
    }

    public String toString()
    {
        return new String((new StringBuilder()).append(super.toString()).append(",totalParameterCount=").append(b).append(",totalDataCount=").append(c).append(",parameterCount=").append(d).append(",parameterOffset=").append(D).append(",parameterDisplacement=").append(E).append(",dataCount=").append(K).append(",dataOffset=").append(F).append(",dataDisplacement=").append(G).append(",setupCount=").append(H).append(",pad=").append(a).append(",pad1=").append(S).toString());
    }
}
