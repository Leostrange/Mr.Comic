// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aaf extends yv
{

    private String D;
    private String E;
    boolean b;
    byte c[];
    private String d;

    aaf(zm zm1)
    {
        super(zm1);
        d = "";
        D = "";
        E = "";
        c = null;
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
        boolean flag = true;
        int j1;
        int k1;
        if ((abyte0[i1] & 1) != 1)
        {
            flag = false;
        }
        b = flag;
        k1 = i1 + 2;
        j1 = k1;
        if (v)
        {
            int l1 = d(abyte0, k1);
            j1 = k1 + 2;
            c = new byte[l1];
        }
        return j1 - i1;
    }

    final int l(byte abyte0[], int i1)
    {
        int j1;
        int k1;
        if (v)
        {
            System.arraycopy(abyte0, i1, c, 0, c.length);
            j1 = c.length + i1;
        } else
        {
            j1 = i1;
        }
        d = a(abyte0, j1, 256, super.t);
        j1 += a(d, j1);
        D = b(abyte0, j1, s + i1, t);
        k1 = j1 + a(D, j1);
        j1 = k1;
        if (!v)
        {
            E = b(abyte0, k1, s + i1, t);
            j1 = k1 + a(E, k1);
        }
        return j1 - i1;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComSessionSetupAndXResponse[")).append(super.toString()).append(",isLoggedInAsGuest=").append(b).append(",nativeOs=").append(d).append(",nativeLanMan=").append(D).append(",primaryDomain=").append(E).append("]").toString());
    }
}
