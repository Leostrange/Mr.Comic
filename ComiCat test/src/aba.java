// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;
import java.util.Date;

final class aba extends aah
{
    final class a
        implements za
    {

        int a;
        int b;
        long c;
        long d;
        long e;
        long f;
        long g;
        long h;
        int i;
        int j;
        int k;
        int l;
        String m;
        String n;
        final aba o;

        public final String a()
        {
            return n;
        }

        public final int b()
        {
            return 1;
        }

        public final int c()
        {
            return i;
        }

        public final long d()
        {
            return c;
        }

        public final long e()
        {
            return e;
        }

        public final long f()
        {
            return g;
        }

        public final String toString()
        {
            return new String((new StringBuilder("SmbFindFileBothDirectoryInfo[nextEntryOffset=")).append(a).append(",fileIndex=").append(b).append(",creationTime=").append(new Date(c)).append(",lastAccessTime=").append(new Date(d)).append(",lastWriteTime=").append(new Date(e)).append(",changeTime=").append(new Date(f)).append(",endOfFile=").append(g).append(",allocationSize=").append(h).append(",extFileAttributes=").append(i).append(",fileNameLength=").append(j).append(",eaSize=").append(k).append(",shortNameLength=").append(l).append(",shortName=").append(m).append(",filename=").append(n).append("]").toString());
        }

        a()
        {
            o = aba.this;
            super();
        }
    }


    boolean S;
    int T;
    int U;
    int V;
    int a;
    String aA;
    int aB;

    aba()
    {
        g = 50;
        L = 1;
    }

    private String b(byte abyte0[], int i, int j)
    {
        if (t)
        {
            return new String(abyte0, i, j, "UTF-16LE");
        }
        break MISSING_BLOCK_LABEL_54;
_L1:
        int k;
        abyte0 = new String(abyte0, i, k, zm.am);
        return abyte0;
        abyte0;
        if (abx.a > 1)
        {
            abyte0.printStackTrace(e);
        }
        return null;
        k = j;
        if (j > 0)
        {
            k = j;
            if (abyte0[(i + j) - 1] == 0)
            {
                k = j - 1;
            }
        }
          goto _L1
    }

    final int a(byte abyte0[], int i)
    {
        int j;
        boolean flag;
        if (L == 1)
        {
            a = d(abyte0, i);
            j = i + 2;
        } else
        {
            j = i;
        }
        Q = d(abyte0, j);
        j += 2;
        if ((abyte0[j] & 1) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        S = flag;
        j += 2;
        T = d(abyte0, j);
        j += 2;
        U = d(abyte0, j);
        return (j + 2) - i;
    }

    final int a(byte abyte0[], int i, int j)
    {
        V = U + i;
        R = new a[Q];
        boolean flag = false;
        j = i;
        for (i = ((flag) ? 1 : 0); i < Q; i++)
        {
            za aza[] = R;
            a a1 = new a();
            aza[i] = a1;
            a1.a = e(abyte0, j);
            a1.b = e(abyte0, j + 4);
            a1.c = g(abyte0, j + 8);
            a1.e = g(abyte0, j + 24);
            a1.g = f(abyte0, j + 40);
            a1.i = e(abyte0, j + 56);
            a1.j = e(abyte0, j + 60);
            a1.n = b(abyte0, j + 94, a1.j);
            if (V >= j && (a1.a == 0 || V < a1.a + j))
            {
                aA = a1.n;
                aB = a1.b;
            }
            j += a1.a;
        }

        return K;
    }

    public final String toString()
    {
        String s;
        if (L == 1)
        {
            s = "Trans2FindFirst2Response[";
        } else
        {
            s = "Trans2FindNext2Response[";
        }
        return new String((new StringBuilder()).append(s).append(super.toString()).append(",sid=").append(a).append(",searchCount=").append(Q).append(",isEndOfSearch=").append(S).append(",eaErrorOffset=").append(T).append(",lastNameOffset=").append(U).append(",lastName=").append(aA).append("]").toString());
    }
}
