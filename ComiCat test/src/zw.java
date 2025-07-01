// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;
import java.util.Date;

final class zw extends zm
{

    int a;
    aax.a b;

    zw(aax.a a1)
    {
        b = a1;
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
        boolean flag1 = true;
        a = d(abyte0, i1);
        int j1 = i1 + 2;
        if (a > 10)
        {
            return j1 - i1;
        }
        aax.a a1 = b;
        int k1 = j1 + 1;
        a1.f = abyte0[j1] & 0xff;
        b.g = b.f & 1;
        a1 = b;
        boolean flag;
        if ((b.f & 2) == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.h = flag;
        a1 = b;
        if ((b.f & 4) == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.i = flag;
        a1 = b;
        if ((b.f & 8) == 8)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        a1.j = flag;
        b.a = d(abyte0, k1);
        j1 = k1 + 2;
        b.k = d(abyte0, j1);
        j1 += 2;
        b.b = e(abyte0, j1);
        j1 += 4;
        b.l = e(abyte0, j1);
        j1 += 4;
        b.c = e(abyte0, j1);
        j1 += 4;
        b.d = e(abyte0, j1);
        j1 += 4;
        b.m = g(abyte0, j1);
        j1 += 8;
        b.n = d(abyte0, j1);
        j1 += 2;
        b.o = abyte0[j1] & 0xff;
        return (j1 + 1) - i1;
    }

    final int l(byte abyte0[], int i1)
    {
        int j1;
        int k1;
        boolean flag;
        j1 = 0;
        flag = false;
        k1 = 0;
        if ((b.d & 0x80000000) != 0) goto _L2; else goto _L1
_L1:
        int l1;
        b.p = new byte[b.o];
        System.arraycopy(abyte0, i1, b.p, 0, b.o);
        l1 = i1 + b.o;
        if (s <= b.o) goto _L4; else goto _L3
_L3:
        int i2 = m;
        j1 = ((flag) ? 1 : 0);
        if ((i2 & 0x8000) != 32768) goto _L6; else goto _L5
_L5:
        j1 = k1;
_L10:
        if (abyte0[l1 + j1] == 0 && abyte0[l1 + j1 + 1] == 0) goto _L8; else goto _L7
_L7:
        k1 = j1 + 2;
        j1 = k1;
        if (k1 <= 256) goto _L10; else goto _L9
_L9:
        j1 = k1;
        try
        {
            throw new RuntimeException("zero termination not found");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            k1 = j1;
        }
_L14:
        j1 = k1;
        if (abx.a > 1)
        {
            abyte0.printStackTrace(e);
            j1 = k1;
        }
_L11:
        j1 += l1;
_L12:
        return j1 - i1;
_L8:
        k1 = j1;
        b.e = new String(abyte0, l1, j1, "UTF-16LE");
          goto _L11
_L6:
        do
        {
            k1 = abyte0[l1 + j1];
            if (k1 == 0)
            {
                break MISSING_BLOCK_LABEL_254;
            }
            k1 = j1 + 1;
            j1 = k1;
        } while (k1 <= 256);
        j1 = k1;
        throw new RuntimeException("zero termination not found");
        k1 = j1;
        b.e = new String(abyte0, l1, j1, zm.am);
          goto _L11
_L4:
        b.e = new String();
        j1 = l1;
          goto _L12
_L2:
        b.q = new byte[16];
        System.arraycopy(abyte0, i1, b.q, 0, 16);
        b.e = new String();
        j1 = i1;
          goto _L12
        abyte0;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public final String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder("SmbComNegotiateResponse[")).append(super.toString()).append(",wordCount=").append(r).append(",dialectIndex=").append(a).append(",securityMode=0x").append(abw.a(b.f, 1)).append(",security=");
        String s;
        if (b.g == 0)
        {
            s = "share";
        } else
        {
            s = "user";
        }
        return new String(stringbuilder.append(s).append(",encryptedPasswords=").append(b.h).append(",maxMpxCount=").append(b.a).append(",maxNumberVcs=").append(b.k).append(",maxBufferSize=").append(b.b).append(",maxRawSize=").append(b.l).append(",sessionKey=0x").append(abw.a(b.c, 8)).append(",capabilities=0x").append(abw.a(b.d, 8)).append(",serverTime=").append(new Date(b.m)).append(",serverTimeZone=").append(b.n).append(",encryptionKeyLength=").append(b.o).append(",byteCount=").append(this.s).append(",oemDomainName=").append(b.e).append("]").toString());
    }
}
