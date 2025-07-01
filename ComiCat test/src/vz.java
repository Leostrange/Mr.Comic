// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vz extends Enum
{

    public static final vz A;
    public static final vz B;
    public static final vz C;
    public static final vz D;
    public static final vz E;
    public static final vz F;
    public static final vz G;
    public static final vz H;
    public static final vz I;
    public static final vz J;
    public static final vz K;
    public static final vz L;
    public static final vz M;
    public static final vz N;
    public static final vz O;
    public static final vz P;
    public static final vz Q;
    public static final vz R;
    public static final vz S;
    public static final vz T;
    public static final vz U;
    public static final vz V;
    public static final vz W;
    public static final vz X;
    public static final vz Y;
    public static final vz Z;
    public static final vz a;
    public static final vz aa;
    public static final vz ab;
    public static final vz ac;
    private static final vz ae[];
    public static final vz b;
    public static final vz c;
    public static final vz d;
    public static final vz e;
    public static final vz f;
    public static final vz g;
    public static final vz h;
    public static final vz i;
    public static final vz j;
    public static final vz k;
    public static final vz l;
    public static final vz m;
    public static final vz n;
    public static final vz o;
    public static final vz p;
    public static final vz q;
    public static final vz r;
    public static final vz s;
    public static final vz t;
    public static final vz u;
    public static final vz v;
    public static final vz w;
    public static final vz x;
    public static final vz y;
    public static final vz z;
    int ad;

    private vz(String s1, int i1, int j1)
    {
        super(s1, i1);
        ad = j1;
    }

    public static vz a(int i1)
    {
        if (a.b(i1))
        {
            return a;
        }
        if (b.b(i1))
        {
            return b;
        }
        if (c.b(i1))
        {
            return c;
        }
        if (d.b(i1))
        {
            return d;
        }
        if (e.b(i1))
        {
            return e;
        }
        if (f.b(i1))
        {
            return f;
        }
        if (g.b(i1))
        {
            return g;
        }
        if (h.b(i1))
        {
            return h;
        }
        if (i.b(i1))
        {
            return i;
        }
        if (j.b(i1))
        {
            return j;
        }
        if (k.b(i1))
        {
            return k;
        }
        if (l.b(i1))
        {
            return l;
        }
        if (m.b(i1))
        {
            return m;
        }
        if (n.b(i1))
        {
            return n;
        }
        if (o.b(i1))
        {
            return o;
        }
        if (p.b(i1))
        {
            return p;
        }
        if (q.b(i1))
        {
            return q;
        }
        if (r.b(i1))
        {
            return r;
        }
        if (s.b(i1))
        {
            return s;
        }
        if (t.b(i1))
        {
            return t;
        }
        if (u.b(i1))
        {
            return u;
        }
        if (v.b(i1))
        {
            return v;
        }
        if (w.b(i1))
        {
            return w;
        }
        if (x.b(i1))
        {
            return x;
        }
        if (y.b(i1))
        {
            return y;
        }
        if (z.b(i1))
        {
            return z;
        }
        if (A.b(i1))
        {
            return A;
        }
        if (B.b(i1))
        {
            return B;
        }
        if (C.b(i1))
        {
            return C;
        }
        if (D.b(i1))
        {
            return D;
        }
        if (E.b(i1))
        {
            return E;
        }
        if (F.b(i1))
        {
            return F;
        }
        if (G.b(i1))
        {
            return G;
        }
        if (H.b(i1))
        {
            return H;
        }
        if (I.b(i1))
        {
            return I;
        }
        if (J.b(i1))
        {
            return J;
        }
        if (K.b(i1))
        {
            return K;
        }
        if (L.b(i1))
        {
            return L;
        }
        if (M.b(i1))
        {
            return M;
        }
        if (N.b(i1))
        {
            return N;
        }
        if (O.b(i1))
        {
            return O;
        }
        if (P.b(i1))
        {
            return P;
        }
        if (Q.b(i1))
        {
            return Q;
        }
        if (R.b(i1))
        {
            return R;
        }
        if (S.b(i1))
        {
            return S;
        }
        if (T.b(i1))
        {
            return T;
        }
        if (U.b(i1))
        {
            return U;
        }
        if (V.b(i1))
        {
            return V;
        }
        if (W.b(i1))
        {
            return W;
        }
        if (X.b(i1))
        {
            return X;
        }
        if (Y.b(i1))
        {
            return Y;
        }
        if (Z.b(i1))
        {
            return Z;
        }
        if (aa.b(i1))
        {
            return aa;
        }
        if (ab.b(i1))
        {
            return ab;
        }
        if (ac.b(i1))
        {
            return ac;
        } else
        {
            return null;
        }
    }

    private boolean b(int i1)
    {
        return ad == i1;
    }

    public static vz valueOf(String s1)
    {
        return (vz)Enum.valueOf(vz, s1);
    }

    public static vz[] values()
    {
        return (vz[])ae.clone();
    }

    static 
    {
        a = new vz("VM_MOV", 0, 0);
        b = new vz("VM_CMP", 1, 1);
        c = new vz("VM_ADD", 2, 2);
        d = new vz("VM_SUB", 3, 3);
        e = new vz("VM_JZ", 4, 4);
        f = new vz("VM_JNZ", 5, 5);
        g = new vz("VM_INC", 6, 6);
        h = new vz("VM_DEC", 7, 7);
        i = new vz("VM_JMP", 8, 8);
        j = new vz("VM_XOR", 9, 9);
        k = new vz("VM_AND", 10, 10);
        l = new vz("VM_OR", 11, 11);
        m = new vz("VM_TEST", 12, 12);
        n = new vz("VM_JS", 13, 13);
        o = new vz("VM_JNS", 14, 14);
        p = new vz("VM_JB", 15, 15);
        q = new vz("VM_JBE", 16, 16);
        r = new vz("VM_JA", 17, 17);
        s = new vz("VM_JAE", 18, 18);
        t = new vz("VM_PUSH", 19, 19);
        u = new vz("VM_POP", 20, 20);
        v = new vz("VM_CALL", 21, 21);
        w = new vz("VM_RET", 22, 22);
        x = new vz("VM_NOT", 23, 23);
        y = new vz("VM_SHL", 24, 24);
        z = new vz("VM_SHR", 25, 25);
        A = new vz("VM_SAR", 26, 26);
        B = new vz("VM_NEG", 27, 27);
        C = new vz("VM_PUSHA", 28, 28);
        D = new vz("VM_POPA", 29, 29);
        E = new vz("VM_PUSHF", 30, 30);
        F = new vz("VM_POPF", 31, 31);
        G = new vz("VM_MOVZX", 32, 32);
        H = new vz("VM_MOVSX", 33, 33);
        I = new vz("VM_XCHG", 34, 34);
        J = new vz("VM_MUL", 35, 35);
        K = new vz("VM_DIV", 36, 36);
        L = new vz("VM_ADC", 37, 37);
        M = new vz("VM_SBB", 38, 38);
        N = new vz("VM_PRINT", 39, 39);
        O = new vz("VM_MOVB", 40, 40);
        P = new vz("VM_MOVD", 41, 41);
        Q = new vz("VM_CMPB", 42, 42);
        R = new vz("VM_CMPD", 43, 43);
        S = new vz("VM_ADDB", 44, 44);
        T = new vz("VM_ADDD", 45, 45);
        U = new vz("VM_SUBB", 46, 46);
        V = new vz("VM_SUBD", 47, 47);
        W = new vz("VM_INCB", 48, 48);
        X = new vz("VM_INCD", 49, 49);
        Y = new vz("VM_DECB", 50, 50);
        Z = new vz("VM_DECD", 51, 51);
        aa = new vz("VM_NEGB", 52, 52);
        ab = new vz("VM_NEGD", 53, 53);
        ac = new vz("VM_STANDARD", 54, 54);
        ae = (new vz[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m, n, o, p, q, r, s, t, 
            u, v, w, x, y, z, A, B, C, D, 
            E, F, G, H, I, J, K, L, M, N, 
            O, P, Q, R, S, T, U, V, W, X, 
            Y, Z, aa, ab, ac
        });
    }
}
