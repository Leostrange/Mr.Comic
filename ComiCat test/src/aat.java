// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.OutputStream;

public class aat extends OutputStream
{

    public aar a;
    private boolean b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private long g;
    private byte h[];
    private aam i;
    private aan j;
    private aal k;
    private aao l;

    public aat(aar aar1)
    {
        this(aar1, (byte)0);
    }

    private aat(aar aar1, byte byte0)
    {
        this(aar1, 82);
    }

    public aat(aar aar1, int i1)
    {
        h = new byte[1];
        a = aar1;
        b = false;
        d = i1;
        e = i1 >>> 16 & 0xffff;
        if ((aar1 instanceof aau) && aar1.j.startsWith("\\pipe\\"))
        {
            aar1.j = aar1.j.substring(5);
            aar1.a(new abo((new StringBuilder("\\pipe")).append(aar1.j).toString()), new abp());
        }
        aar1.a(i1, e | 2);
        d = d & 0xffffffaf;
        f = aar1.i.f.e.v - 70;
        c = aar1.i.f.e.a(16);
        if (c)
        {
            i = new aam();
            j = new aan();
            return;
        } else
        {
            k = new aal();
            l = new aao();
            return;
        }
    }

    final void a()
    {
        if (!a.b())
        {
            a.a(d, e | 2);
            if (b)
            {
                g = a.j();
            }
        }
    }

    public final void a(byte abyte0[], int i1, int j1, int k1)
    {
        if (j1 <= 0)
        {
            return;
        }
        if (h == null)
        {
            throw new IOException("Bad file descriptor");
        }
        a();
        abx abx1 = aar.c;
        int i2 = i1;
        int l1 = j1;
        if (abx.a >= 4)
        {
            aar.c.println((new StringBuilder("write: fid=")).append(a.k).append(",off=").append(i1).append(",len=").append(j1).toString());
            l1 = j1;
            i2 = i1;
        }
        do
        {
            if (l1 > f)
            {
                i1 = f;
            } else
            {
                i1 = l1;
            }
            if (c)
            {
                i.a(a.k, g, l1 - i1, abyte0, i2, i1);
                if ((k1 & 1) != 0)
                {
                    i.a(a.k, g, l1, abyte0, i2, i1);
                    i.b = 8;
                } else
                {
                    i.b = 0;
                }
                a.a(i, j);
                g = g + j.b;
                i1 = (int)((long)l1 - j.b);
                j1 = (int)((long)i2 + j.b);
            } else
            {
                aal aal1 = k;
                j1 = a.k;
                long l2 = g;
                aal1.a = j1;
                aal1.c = (int)(l2 & 0xffffffffL);
                aal1.d = l1 - i1;
                aal1.E = abyte0;
                aal1.D = i2;
                aal1.b = i1;
                aal1.B = null;
                g = g + l.a;
                i1 = (int)((long)l1 - l.a);
                j1 = (int)((long)i2 + l.a);
                a.a(k, l);
            }
            i2 = j1;
            l1 = i1;
        } while (i1 > 0);
    }

    public void close()
    {
        a.c();
        h = null;
    }

    public void write(int i1)
    {
        h[0] = (byte)i1;
        write(h, 0, 1);
    }

    public void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public void write(byte abyte0[], int i1, int j1)
    {
        if (!a.b() && (a instanceof aau))
        {
            a.a(new abo((new StringBuilder("\\pipe")).append(a.j).toString()), new abp());
        }
        a(abyte0, i1, j1, 0);
    }
}
