// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class zg extends aah
{

    private int S;
    private int a;

    zg()
    {
    }

    final int a(byte abyte0[], int i)
    {
        P = d(abyte0, i);
        int j = i + 2;
        a = d(abyte0, j);
        j += 2;
        Q = d(abyte0, j);
        j += 2;
        S = d(abyte0, j);
        return (j + 2) - i;
    }

    final int a(byte abyte0[], int i, int j)
    {
        t = false;
        R = new aaw[Q];
        j = 0;
        int k = i;
        for (; j < Q; j++)
        {
            za aza[] = R;
            aaw aaw1 = new aaw();
            aza[j] = aaw1;
            aaw1.b = a(abyte0, k, 13, false);
            k += 14;
            aaw1.c = d(abyte0, k);
            k += 2;
            int l = e(abyte0, k);
            k += 4;
            aaw1.d = a(abyte0, ((l & 0xffff) - a) + i, 128, false);
            if (abx.a >= 4)
            {
                e.println(aaw1);
            }
        }

        return k - i;
    }

    public final String toString()
    {
        return new String((new StringBuilder("NetShareEnumResponse[")).append(super.toString()).append(",status=").append(P).append(",converter=").append(a).append(",entriesReturned=").append(Q).append(",totalAvailableEntries=").append(S).append("]").toString());
    }
}
