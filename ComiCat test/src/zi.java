// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class zi extends zx
{

    int a;
    int b;

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final int b(byte abyte0[], int i)
    {
        a(a, abyte0, i);
        int k = i + 2;
        int j = k + 1;
        abyte0[k] = 0;
        k = j + 1;
        abyte0[j] = 0;
        b(b, abyte0, k);
        return (k + 4) - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("NtTransQuerySecurityDesc[")).append(super.toString()).append(",fid=0x").append(abw.a(a, 4)).append(",securityInformation=0x").append(abw.a(b, 8)).append("]").toString());
    }
}
