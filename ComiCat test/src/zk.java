// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class zk
{

    zl a;
    int b;
    String c;
    boolean d;
    byte e[];
    byte f[];
    String g;
    int h;
    abx i;

    public zk(zl zl1, boolean flag)
    {
        d = false;
        e = null;
        f = null;
        g = null;
        h = 1;
        a = zl1;
        b = b | 4 | 0x80000 | 0x20000000;
        if (flag)
        {
            b = b | 0x40008010;
        }
        c = yr.b();
        i = abx.a();
    }

    public final byte[] a(byte abyte0[])
    {
        switch (h)
        {
        default:
            throw new aaq("Invalid state");

        case 1: // '\001'
            abyte0 = new yr(b, a.h, c);
            byte abyte1[] = abyte0.a();
            if (abx.a >= 4)
            {
                i.println(abyte0);
                if (abx.a >= 6)
                {
                    abw.a(i, abyte1, 0, abyte1.length);
                }
            }
            h = h + 1;
            return abyte1;

        case 2: // '\002'
            break;
        }
        byte abyte2[];
        try
        {
            ys ys1 = new ys(abyte0);
            if (abx.a >= 4)
            {
                i.println(ys1);
                if (abx.a >= 6)
                {
                    abw.a(i, abyte0, 0, abyte0.length);
                }
            }
            e = ys1.d;
            b = b & ((yq) (ys1)).c;
            abyte0 = new yt(ys1, a.j, a.h, a.i, c, b);
            abyte2 = abyte0.a();
            if (abx.a >= 4)
            {
                i.println(abyte0);
                if (abx.a >= 6)
                {
                    abw.a(i, abyte2, 0, abyte2.length);
                }
            }
            if ((b & 0x10) != 0)
            {
                f = ((yt) (abyte0)).d;
            }
            d = true;
            h = h + 1;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new aaq(abyte0.getMessage(), abyte0);
        }
        return abyte2;
    }

    public final String toString()
    {
        String s = (new StringBuilder("NtlmContext[auth=")).append(a).append(",ntlmsspFlags=0x").append(abw.a(b, 8)).append(",workstation=").append(c).append(",isEstablished=").append(d).append(",state=").append(h).append(",serverChallenge=").toString();
        if (e == null)
        {
            s = (new StringBuilder()).append(s).append("null").toString();
        } else
        {
            s = (new StringBuilder()).append(s).append(abw.a(e, e.length * 2)).toString();
        }
        s = (new StringBuilder()).append(s).append(",signingKey=").toString();
        if (f == null)
        {
            s = (new StringBuilder()).append(s).append("null").toString();
        } else
        {
            s = (new StringBuilder()).append(s).append(abw.a(f, f.length * 2)).toString();
        }
        return (new StringBuilder()).append(s).append("]").toString();
    }
}
