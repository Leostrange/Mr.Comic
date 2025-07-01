// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;

final class abh extends aah
{
    final class a
        implements zc
    {

        long a;
        long b;
        long c;
        long d;
        int e;
        final abh f;

        public final int a()
        {
            return e;
        }

        public final long b()
        {
            return a;
        }

        public final long c()
        {
            return c;
        }

        public final long d()
        {
            return 0L;
        }

        public final String toString()
        {
            return new String((new StringBuilder("SmbQueryFileBasicInfo[createTime=")).append(new Date(a)).append(",lastAccessTime=").append(new Date(b)).append(",lastWriteTime=").append(new Date(c)).append(",changeTime=").append(new Date(d)).append(",attributes=0x").append(abw.a(e, 4)).append("]").toString());
        }

        a()
        {
            f = abh.this;
            super();
        }
    }

    final class b
        implements zc
    {

        long a;
        long b;
        int c;
        boolean d;
        boolean e;
        final abh f;

        public final int a()
        {
            return 0;
        }

        public final long b()
        {
            return 0L;
        }

        public final long c()
        {
            return 0L;
        }

        public final long d()
        {
            return b;
        }

        public final String toString()
        {
            return new String((new StringBuilder("SmbQueryInfoStandard[allocationSize=")).append(a).append(",endOfFile=").append(b).append(",numberOfLinks=").append(c).append(",deletePending=").append(d).append(",directory=").append(e).append("]").toString());
        }

        b()
        {
            f = abh.this;
            super();
        }
    }


    private int S;
    zc a;

    abh(int i)
    {
        S = i;
        L = 5;
    }

    final int a(byte abyte0[], int i)
    {
        return 2;
    }

    final int a(byte abyte0[], int i, int j)
    {
        boolean flag1 = true;
        b b1;
        switch (S)
        {
        default:
            return 0;

        case 257: 
            a a1 = new a();
            a1.a = g(abyte0, i);
            j = i + 8;
            a1.b = g(abyte0, j);
            j += 8;
            a1.c = g(abyte0, j);
            j += 8;
            a1.d = g(abyte0, j);
            j += 8;
            a1.e = d(abyte0, j);
            a = a1;
            return (j + 2) - i;

        case 258: 
            b1 = new b();
            break;
        }
        b1.a = f(abyte0, i);
        j = i + 8;
        b1.b = f(abyte0, j);
        j += 8;
        b1.c = e(abyte0, j);
        j += 4;
        int k = j + 1;
        boolean flag;
        if ((abyte0[j] & 0xff) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1.d = flag;
        if ((abyte0[k] & 0xff) > 0)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        b1.e = flag;
        a = b1;
        return (k + 1) - i;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2QueryPathInformationResponse[")).append(super.toString()).append("]").toString());
    }
}
