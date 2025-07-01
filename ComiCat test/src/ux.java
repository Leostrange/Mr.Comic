// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.EOFException;
import java.io.InputStream;

public final class ux
{

    public final ua a;
    public long b;
    public boolean c;
    public boolean d;
    public InputStream e;
    public ags f;
    public uo g;
    public boolean h;
    public boolean i;
    public boolean j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public long t;
    public int u;
    public int v;
    public int w;
    public char x;

    public ux(ua ua1)
    {
        a = ua1;
    }

    public final int a(byte abyte0[], int i1, int j1)
    {
        int k1 = 0;
        if (j1 <= 0) goto _L2; else goto _L1
_L1:
        int l1;
        k1 = j1;
        if ((long)j1 > b)
        {
            k1 = (int)b;
        }
        k1 = e.read(abyte0, i1, k1);
        if (k1 < 0)
        {
            throw new EOFException();
        }
        if (g.h())
        {
            t = ud.a((int)t, abyte0, i1, k1);
        }
        n = n + (long)k1;
        l1 = k1 + 0;
        b = b - (long)k1;
        abyte0 = a;
        if (k1 > 0)
        {
            abyte0.g = ((ua) (abyte0)).g + (long)k1;
        }
        i1 = l1;
        j1 = k1;
        if (b != 0L) goto _L4; else goto _L3
_L3:
        i1 = l1;
        j1 = k1;
        if (!g.h()) goto _L4; else goto _L5
_L5:
        j = true;
        i1 = -1;
_L7:
        return i1;
_L2:
        j1 = 0;
        i1 = k1;
_L4:
        if (j1 == -1)
        {
            return j1;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final void b(byte abyte0[], int i1, int j1)
    {
label0:
        {
            if (!c)
            {
                f.a(abyte0, i1, j1);
            }
            o = o + (long)j1;
            if (!d)
            {
                if (!a.d.g)
                {
                    break label0;
                }
                s = ud.a((short)(int)s, abyte0, j1);
            }
            return;
        }
        s = ud.a((int)s, abyte0, i1, j1);
    }
}
