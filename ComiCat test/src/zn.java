// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class zn
    implements aap
{

    static abx a = abx.a();
    private MessageDigest b;
    private byte c[];
    private boolean d;
    private int e;
    private int f;

    public zn(byte abyte0[], boolean flag)
    {
        d = false;
        try
        {
            b = MessageDigest.getInstance("MD5");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            if (abx.a > 0)
            {
                abyte0.printStackTrace(a);
            }
            throw new aaq("MD5", abyte0);
        }
        c = abyte0;
        d = flag;
        e = 0;
        f = 0;
        if (abx.a >= 5)
        {
            a.println("macSigningKey:");
            abw.a(a, abyte0, 0, abyte0.length);
        }
    }

    private void a(byte abyte0[], int i, int j)
    {
        if (abx.a >= 5)
        {
            a.println((new StringBuilder("update: ")).append(e).append(" ").append(i).append(":").append(j).toString());
            abw.a(a, abyte0, i, Math.min(j, 256));
            a.flush();
        }
        if (j == 0)
        {
            return;
        } else
        {
            b.update(abyte0, i, j);
            e = e + 1;
            return;
        }
    }

    private byte[] a()
    {
        byte abyte0[] = b.digest();
        if (abx.a >= 5)
        {
            a.println("digest: ");
            abw.a(a, abyte0, 0, abyte0.length);
            a.flush();
        }
        e = 0;
        return abyte0;
    }

    final void a(byte abyte0[], int i, int j, zm zm1, zm zm2)
    {
        int k;
        k = 0;
        zm1.x = f;
        if (zm2 != null)
        {
            zm2.x = f + 1;
            zm2.y = false;
        }
        a(c, 0, c.length);
        int l = i + 14;
        while (k < 8) 
        {
            abyte0[l + k] = 0;
            k++;
        }
          goto _L1
_L3:
        zm.b(f, abyte0, l);
        a(abyte0, i, j);
        System.arraycopy(a(), 0, abyte0, l, 8);
        if (d)
        {
            d = false;
            System.arraycopy("BSRSPYL ".getBytes(), 0, abyte0, l, 8);
        }
        f = f + 2;
        return;
        abyte0;
        if (abx.a > 0)
        {
            abyte0.printStackTrace(a);
        }
        f = f + 2;
        return;
        abyte0;
        f = f + 2;
        throw abyte0;
_L1:
        if (true) goto _L3; else goto _L2
_L2:
    }

    final boolean a(byte abyte0[], zm zm1)
    {
        a(c, 0, c.length);
        a(abyte0, 4, 14);
        byte abyte1[] = new byte[8];
        zm.b(zm1.x, abyte1, 0);
        a(abyte1, 0, 8);
        if (zm1.g == 46)
        {
            aad aad1 = (aad)zm1;
            a(abyte0, 26, zm1.j - aad1.D - 14 - 8);
            a(aad1.b, aad1.c, aad1.D);
        } else
        {
            a(abyte0, 26, zm1.j - 14 - 8);
        }
        aad1 = a();
        for (int i = 0; i < 8; i++)
        {
            if (aad1[i] != abyte0[i + 18])
            {
                if (abx.a >= 2)
                {
                    a.println("signature verification failure");
                    abw.a(a, aad1, 0, 8);
                    abw.a(a, abyte0, 18, 8);
                }
                zm1.y = true;
                return true;
            }
        }

        zm1.y = false;
        return false;
    }

    public final String toString()
    {
        return (new StringBuilder("LM_COMPATIBILITY=")).append(ai).append(" MacSigningKey=").append(abw.a(c, c.length)).toString();
    }

}
