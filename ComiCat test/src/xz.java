// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

public final class xz
{

    public byte a[];
    public int b;
    public int c;
    public int d;
    public xz e;

    public xz(byte abyte0[], int i)
    {
        a = abyte0;
        c = i;
        b = i;
        d = 0;
        e = this;
    }

    public final xz a(int i)
    {
        xz xz1 = new xz(a, b);
        xz1.c = i;
        xz1.e = e;
        return xz1;
    }

    public final void a()
    {
        c = b;
        d = 0;
        e = this;
    }

    public final void a(Object obj)
    {
        if (obj == null)
        {
            g(0);
            return;
        } else
        {
            g(System.identityHashCode(obj));
            return;
        }
    }

    public final void a(String s)
    {
        d(4);
        int j = c;
        int i = s.length();
        abu.a(i + 1, a, j);
        j += 4;
        abu.a(0, a, j);
        j += 4;
        abu.a(i + 1, a, j);
        j += 4;
        try
        {
            System.arraycopy(s.getBytes("UTF-16LE"), 0, a, j, i * 2);
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        i = j + i * 2;
        s = a;
        j = i + 1;
        s[i] = 0;
        a[j] = 0;
        c((j + 1) - c);
    }

    public final int b()
    {
        byte byte0 = a[c];
        c(1);
        return byte0 & 0xff;
    }

    public final void b(int i)
    {
        e.d = i;
    }

    public final int c()
    {
        d(2);
        short word0 = abu.a(a, c);
        c(2);
        return word0;
    }

    public final void c(int i)
    {
        c = c + i;
        if (c - b > e.d)
        {
            e.d = c - b;
        }
    }

    public final int d()
    {
        d(4);
        int i = abu.b(a, c);
        c(4);
        return i;
    }

    public final int d(int i)
    {
        i--;
        int j = c - b;
        i = (~i & j + i) - j;
        c(i);
        return i;
    }

    public final String e()
    {
        int i;
        int j;
        d(4);
        i = c;
        j = abu.b(a, i);
        i += 12;
        if (j == 0) goto _L2; else goto _L1
_L1:
        j = (j - 1) * 2;
        if (j >= 0 && j <= 65535) goto _L4; else goto _L3
_L3:
        try
        {
            throw new ya("invalid array conformance");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception) { }
_L2:
        String s = null;
_L6:
        c(i - c);
        return s;
_L4:
        s = new String(a, i, j, "UTF-16LE");
        i = j + 2 + i;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void e(int i)
    {
        a[c] = (byte)(i & 0xff);
        c(1);
    }

    public final void f(int i)
    {
        d(2);
        i = (short)i;
        byte abyte0[] = a;
        int j = c;
        abyte0[j] = (byte)(i & 0xff);
        abyte0[j + 1] = (byte)(i >> 8 & 0xff);
        c(2);
    }

    public final void g(int i)
    {
        d(4);
        abu.a(i, a, c);
        c(4);
    }

    public final String toString()
    {
        return (new StringBuilder("start=")).append(b).append(",index=").append(c).append(",length=").append(e.d).toString();
    }
}
