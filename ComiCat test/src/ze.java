// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class ze extends aah
{
    final class a
        implements za
    {

        String a;
        int b;
        int c;
        int d;
        String e;
        final ze f;

        public final String a()
        {
            return a;
        }

        public final int b()
        {
            return (d & 0x80000000) == 0 ? 4 : 2;
        }

        public final int c()
        {
            return 17;
        }

        public final long d()
        {
            return 0L;
        }

        public final long e()
        {
            return 0L;
        }

        public final long f()
        {
            return 0L;
        }

        public final String toString()
        {
            return new String((new StringBuilder("ServerInfo1[name=")).append(a).append(",versionMajor=").append(b).append(",versionMinor=").append(c).append(",type=0x").append(abw.a(d, 8)).append(",commentOrMasterBrowser=").append(e).append("]").toString());
        }

        a()
        {
            f = ze.this;
            super();
        }
    }


    private int S;
    private int T;
    String a;

    ze()
    {
    }

    final int a(byte abyte0[], int i)
    {
        P = d(abyte0, i);
        int j = i + 2;
        S = d(abyte0, j);
        j += 2;
        Q = d(abyte0, j);
        j += 2;
        T = d(abyte0, j);
        return (j + 2) - i;
    }

    final int a(byte abyte0[], int i, int j)
    {
        Object obj = null;
        R = new a[Q];
        j = 0;
        a a1 = null;
        int k = i;
        for (; j < Q; j++)
        {
            za aza[] = R;
            a1 = new a();
            aza[j] = a1;
            a1.a = a(abyte0, k, 16, false);
            int l = k + 16;
            k = l + 1;
            a1.b = abyte0[l] & 0xff;
            l = k + 1;
            a1.c = abyte0[k] & 0xff;
            a1.d = e(abyte0, l);
            k = l + 4;
            l = e(abyte0, k);
            k += 4;
            a1.e = a(abyte0, ((l & 0xffff) - S) + i, 48, false);
            if (abx.a >= 4)
            {
                e.println(a1);
            }
        }

        if (Q == 0)
        {
            abyte0 = obj;
        } else
        {
            abyte0 = a1.a;
        }
        a = abyte0;
        return k - i;
    }

    public final String toString()
    {
        return new String((new StringBuilder("NetServerEnum2Response[")).append(super.toString()).append(",status=").append(P).append(",converter=").append(S).append(",entriesReturned=").append(Q).append(",totalAvailableEntries=").append(T).append(",lastName=").append(a).append("]").toString());
    }
}
