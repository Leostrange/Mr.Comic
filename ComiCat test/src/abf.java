// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abf extends aah
{
    final class a
        implements yu
    {

        long a;
        long b;
        int c;
        int d;
        final abf e;

        public final long a()
        {
            return a * (long)c * (long)d;
        }

        public final String toString()
        {
            return new String((new StringBuilder("SmbInfoAllocation[alloc=")).append(a).append(",free=").append(b).append(",sectPerAlloc=").append(c).append(",bytesPerSect=").append(d).append("]").toString());
        }

        a()
        {
            e = abf.this;
            super();
        }
    }


    private int S;
    yu a;

    abf()
    {
        S = 1;
        g = 50;
        L = 3;
    }

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final int a(byte abyte0[], int i, int j)
    {
        a a3;
        switch (S)
        {
        default:
            return 0;

        case 1: // '\001'
            a a1 = new a();
            j = i + 4;
            a1.c = e(abyte0, j);
            j += 4;
            a1.a = e(abyte0, j);
            j += 4;
            a1.b = e(abyte0, j);
            j += 4;
            a1.d = d(abyte0, j);
            a = a1;
            return (j + 4) - i;

        case 259: 
            a a2 = new a();
            a2.a = f(abyte0, i);
            j = i + 8;
            a2.b = f(abyte0, j);
            j += 8;
            a2.c = e(abyte0, j);
            j += 4;
            a2.d = e(abyte0, j);
            a = a2;
            return (j + 4) - i;

        case 1007: 
            a3 = new a();
            break;
        }
        a3.a = f(abyte0, i);
        j = i + 8;
        a3.b = f(abyte0, j);
        j = j + 8 + 8;
        a3.c = e(abyte0, j);
        j += 4;
        a3.d = e(abyte0, j);
        a = a3;
        return (j + 4) - i;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2QueryFSInformationResponse[")).append(super.toString()).append("]").toString());
    }
}
