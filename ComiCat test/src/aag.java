// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Enumeration;

abstract class aag extends zm
    implements Enumeration
{

    private static final int a = xj.a("jcifs.smb.client.transaction_buf_size", 65535) - 512;
    protected int D;
    protected int E;
    protected int F;
    protected int G;
    protected int H;
    protected int I;
    protected int J;
    protected int K;
    int L;
    int M;
    int N;
    int O;
    byte P;
    int Q;
    int R;
    byte S;
    String T;
    int U;
    byte V[];
    private boolean aA;
    private boolean aB;
    private int aC;
    private int aD;
    private int b;
    private int c;
    private int d;

    aag()
    {
        b = 0;
        c = 0;
        d = 0;
        aA = true;
        aB = true;
        O = a;
        Q = 0;
        R = 1;
        T = "";
        N = 1024;
        D = 61;
        E = 51;
    }

    abstract int a(byte abyte0[], int i1);

    void a(int i1, String s)
    {
        e();
    }

    abstract int b(byte abyte0[], int i1);

    abstract int c(byte abyte0[], int i1);

    final void e()
    {
        super.e();
        aA = true;
        aB = true;
    }

    public boolean hasMoreElements()
    {
        return aA;
    }

    int i(byte abyte0[], int i1)
    {
        a(L, abyte0, i1);
        int j1 = i1 + 2;
        a(M, abyte0, j1);
        int k1 = j1 + 2;
        j1 = k1;
        if (g != 38)
        {
            a(N, abyte0, k1);
            j1 = k1 + 2;
            a(O, abyte0, j1);
            k1 = j1 + 2;
            j1 = k1 + 1;
            abyte0[k1] = P;
            k1 = j1 + 1;
            abyte0[j1] = 0;
            a(b, abyte0, k1);
            j1 = k1 + 2;
            b(Q, abyte0, j1);
            j1 += 4;
            k1 = j1 + 1;
            abyte0[j1] = 0;
            j1 = k1 + 1;
            abyte0[k1] = 0;
        }
        a(F, abyte0, j1);
        j1 += 2;
        a(G, abyte0, j1);
        k1 = j1 + 2;
        j1 = k1;
        if (g == 38)
        {
            a(H, abyte0, k1);
            j1 = k1 + 2;
        }
        a(I, abyte0, j1);
        k1 = j1 + 2;
        if (I == 0)
        {
            j1 = 0;
        } else
        {
            j1 = J;
        }
        a(j1, abyte0, k1);
        k1 += 2;
        if (g == 38)
        {
            a(K, abyte0, k1);
            j1 = k1 + 2;
        } else
        {
            j1 = k1 + 1;
            abyte0[k1] = (byte)R;
            k1 = j1 + 1;
            abyte0[j1] = 0;
            j1 = k1 + a(abyte0, k1);
        }
        return j1 - i1;
    }

    final int j(byte abyte0[], int i1)
    {
        int l1 = c;
        int j1;
        int k1;
        if (g == 37 && !f())
        {
            k1 = a(T, abyte0, i1) + i1;
        } else
        {
            k1 = i1;
        }
        j1 = k1;
        if (F > 0)
        {
            for (j1 = l1; j1 > 0; j1--)
            {
                abyte0[k1] = 0;
                k1++;
            }

            System.arraycopy(V, aC, abyte0, k1, F);
            j1 = F + k1;
        }
        k1 = j1;
        if (I > 0)
        {
            for (k1 = d; k1 > 0; k1--)
            {
                abyte0[j1] = 0;
                j1++;
            }

            System.arraycopy(V, aD, abyte0, j1, I);
            aD = aD + I;
            k1 = I + j1;
        }
        return k1 - i1;
    }

    final int k(byte abyte0[], int i1)
    {
        return 0;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public Object nextElement()
    {
        if (aB)
        {
            aB = false;
            G = D + R * 2 + 2;
            int i1;
            int k1;
            int i2;
            if (g != -96)
            {
                if (g == 37 && !f())
                {
                    G = G + a(T, G);
                }
            } else
            if (g == -96)
            {
                G = G + 2;
            }
            c = G % 2;
            if (c == 0)
            {
                i1 = 0;
            } else
            {
                i1 = 2 - c;
            }
            c = i1;
            G = G + c;
            L = b(V, aC);
            aD = L;
            k1 = U - G;
            F = Math.min(L, k1);
            i2 = F;
            J = G + F;
            d = J % 2;
            if (d == 0)
            {
                i1 = 0;
            } else
            {
                i1 = 2 - d;
            }
            d = i1;
            J = J + d;
            M = c(V, aD);
            I = Math.min(M, k1 - i2);
        } else
        {
            int j1;
            if (g != -96)
            {
                g = 38;
            } else
            {
                g = -95;
            }
            G = 51;
            if (L - H > 0)
            {
                c = G % 2;
                int l1;
                int j2;
                if (c == 0)
                {
                    j1 = 0;
                } else
                {
                    j1 = 2 - c;
                }
                c = j1;
                G = G + c;
            }
            H = H + F;
            l1 = U - G - c;
            F = Math.min(L - H, l1);
            j2 = F;
            J = G + F;
            d = J % 2;
            if (d == 0)
            {
                j1 = 0;
            } else
            {
                j1 = 2 - d;
            }
            d = j1;
            J = J + d;
            K = K + I;
            j1 = d;
            I = Math.min(M - K, l1 - j2 - j1);
        }
        if (H + F >= L && K + I >= M)
        {
            aA = false;
        }
        return this;
    }

    public String toString()
    {
        return new String((new StringBuilder()).append(super.toString()).append(",totalParameterCount=").append(L).append(",totalDataCount=").append(M).append(",maxParameterCount=").append(N).append(",maxDataCount=").append(O).append(",maxSetupCount=").append(P).append(",flags=0x").append(abw.a(b, 2)).append(",timeout=").append(Q).append(",parameterCount=").append(F).append(",parameterOffset=").append(G).append(",parameterDisplacement=").append(H).append(",dataCount=").append(I).append(",dataOffset=").append(J).append(",dataDisplacement=").append(K).append(",setupCount=").append(R).append(",pad=").append(c).append(",pad1=").append(d).toString());
    }

}
