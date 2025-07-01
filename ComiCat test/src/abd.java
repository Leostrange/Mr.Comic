// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abd extends aah
{
    final class a
    {

        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        int i;
        String j;
        String k;
        final abd l;
        private String m;

        public final String toString()
        {
            return new String((new StringBuilder("Referral[version=")).append(a).append(",size=").append(b).append(",serverType=").append(c).append(",flags=").append(d).append(",proximity=").append(e).append(",ttl=").append(i).append(",pathOffset=").append(f).append(",altPathOffset=").append(g).append(",nodeOffset=").append(h).append(",path=").append(j).append(",altPath=").append(m).append(",node=").append(k).append("]").toString());
        }

        a()
        {
            l = abd.this;
            super();
            j = null;
            k = null;
        }
    }


    int S;
    int T;
    a U[];
    int a;

    abd()
    {
        L = 16;
    }

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final int a(byte abyte0[], int i, int j)
    {
        a = d(abyte0, i);
        int k = i + 2;
        if ((m & 0x8000) != 0)
        {
            a = a / 2;
        }
        S = d(abyte0, k);
        k += 2;
        T = d(abyte0, k);
        U = new a[S];
        int l = k + 4;
        k = 0;
        while (k < S) 
        {
            U[k] = new a();
            a a1 = U[k];
            a1.a = zm.d(abyte0, l);
            if (a1.a != 3 && a1.a != 1)
            {
                throw new RuntimeException((new StringBuilder("Version ")).append(a1.a).append(" referral not supported. Please report this to jcifs at samba dot org.").toString());
            }
            int i1 = l + 2;
            a1.b = zm.d(abyte0, i1);
            i1 += 2;
            a1.c = zm.d(abyte0, i1);
            i1 += 2;
            a1.d = zm.d(abyte0, i1);
            i1 += 2;
            if (a1.a == 3)
            {
                a1.e = zm.d(abyte0, i1);
                i1 += 2;
                a1.i = zm.d(abyte0, i1);
                i1 += 2;
                a1.f = zm.d(abyte0, i1);
                i1 += 2;
                a1.g = zm.d(abyte0, i1);
                a1.h = zm.d(abyte0, i1 + 2);
                abd abd1 = a1.l;
                i1 = a1.f;
                boolean flag;
                if ((a1.l.m & 0x8000) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                a1.j = abd1.a(abyte0, l + i1, j, flag);
                if (a1.h > 0)
                {
                    abd abd2 = a1.l;
                    i1 = a1.h;
                    if ((a1.l.m & 0x8000) != 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    a1.k = abd2.a(abyte0, l + i1, j, flag);
                }
            } else
            if (a1.a == 1)
            {
                abd abd3 = a1.l;
                boolean flag1;
                if ((a1.l.m & 0x8000) != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                a1.k = abd3.a(abyte0, i1, j, flag1);
            }
            l += a1.b;
            k++;
        }
        return l - i;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2GetDfsReferralResponse[")).append(super.toString()).append(",pathConsumed=").append(a).append(",numReferrals=").append(S).append(",flags=").append(T).append("]").toString());
    }
}
