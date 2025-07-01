// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.CharConversionException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public final class wq extends Writer
    implements wv
{

    private OutputStream a;
    private final byte b[] = new byte[2048];
    private int c;
    private char d;

    public wq()
    {
    }

    private void a(char c1)
    {
        if (c1 < '\uD800' || c1 > '\uDFFF')
        {
            write(c1);
            return;
        }
        if (c1 < '\uDC00')
        {
            d = c1;
            return;
        } else
        {
            write((d - 55296 << 10) + (c1 - 56320) + 0x10000);
            return;
        }
    }

    private void b()
    {
        if (a == null)
        {
            throw new IOException("Stream closed");
        } else
        {
            a.write(b, 0, c);
            c = 0;
            return;
        }
    }

    public final wq a(OutputStream outputstream)
    {
        if (a != null)
        {
            throw new IllegalStateException("Writer not closed or reset");
        } else
        {
            a = outputstream;
            return this;
        }
    }

    public final void a()
    {
        d = '\0';
        c = 0;
        a = null;
    }

    public final void close()
    {
        if (a != null)
        {
            b();
            a.close();
            a();
        }
    }

    public final void flush()
    {
        b();
        a.flush();
    }

    public final void write(int i)
    {
        if ((i & 0xffffff80) != 0) goto _L2; else goto _L1
_L1:
        b[c] = (byte)i;
        i = c + 1;
        c = i;
        if (i >= b.length)
        {
            b();
        }
_L4:
        return;
_L2:
        if ((i & 0xfffff800) != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        b[c] = (byte)(i >> 6 | 0xc0);
        int j = c + 1;
        c = j;
        if (j >= b.length)
        {
            b();
        }
        b[c] = (byte)(i & 0x3f | 0x80);
        i = c + 1;
        c = i;
        if (i >= b.length)
        {
            b();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if ((0xffff0000 & i) != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        b[c] = (byte)(i >> 12 | 0xe0);
        int k = c + 1;
        c = k;
        if (k >= b.length)
        {
            b();
        }
        b[c] = (byte)(i >> 6 & 0x3f | 0x80);
        k = c + 1;
        c = k;
        if (k >= b.length)
        {
            b();
        }
        b[c] = (byte)(i & 0x3f | 0x80);
        i = c + 1;
        c = i;
        if (i >= b.length)
        {
            b();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if ((0xff200000 & i) != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        b[c] = (byte)(i >> 18 | 0xf0);
        int l = c + 1;
        c = l;
        if (l >= b.length)
        {
            b();
        }
        b[c] = (byte)(i >> 12 & 0x3f | 0x80);
        l = c + 1;
        c = l;
        if (l >= b.length)
        {
            b();
        }
        b[c] = (byte)(i >> 6 & 0x3f | 0x80);
        l = c + 1;
        c = l;
        if (l >= b.length)
        {
            b();
        }
        b[c] = (byte)(i & 0x3f | 0x80);
        i = c + 1;
        c = i;
        if (i >= b.length)
        {
            b();
            return;
        }
        if (true) goto _L4; else goto _L6
_L6:
        if ((0xf4000000 & i) != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        b[c] = (byte)(i >> 24 | 0xf8);
        int i1 = c + 1;
        c = i1;
        if (i1 >= b.length)
        {
            b();
        }
        b[c] = (byte)(i >> 18 & 0x3f | 0x80);
        i1 = c + 1;
        c = i1;
        if (i1 >= b.length)
        {
            b();
        }
        b[c] = (byte)(i >> 12 & 0x3f | 0x80);
        i1 = c + 1;
        c = i1;
        if (i1 >= b.length)
        {
            b();
        }
        b[c] = (byte)(i >> 6 & 0x3f | 0x80);
        i1 = c + 1;
        c = i1;
        if (i1 >= b.length)
        {
            b();
        }
        b[c] = (byte)(i & 0x3f | 0x80);
        i = c + 1;
        c = i;
        if (i >= b.length)
        {
            b();
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
        if ((0x80000000 & i) == 0)
        {
            b[c] = (byte)(i >> 30 | 0xfc);
            int j1 = c + 1;
            c = j1;
            if (j1 >= b.length)
            {
                b();
            }
            b[c] = (byte)(i >> 24 & 0x3f | 0x80);
            j1 = c + 1;
            c = j1;
            if (j1 >= b.length)
            {
                b();
            }
            b[c] = (byte)(i >> 18 & 0x3f | 0x80);
            j1 = c + 1;
            c = j1;
            if (j1 >= b.length)
            {
                b();
            }
            b[c] = (byte)(i >> 12 & 0x3f | 0x80);
            j1 = c + 1;
            c = j1;
            if (j1 >= b.length)
            {
                b();
            }
            b[c] = (byte)(i >> 6 & 0x3f | 0x80);
            j1 = c + 1;
            c = j1;
            if (j1 >= b.length)
            {
                b();
            }
            b[c] = (byte)(i & 0x3f | 0x80);
            i = c + 1;
            c = i;
            if (i >= b.length)
            {
                b();
                return;
            }
        } else
        {
            throw new CharConversionException((new StringBuilder("Illegal character U+")).append(Integer.toHexString(i)).toString());
        }
        if (true) goto _L4; else goto _L8
_L8:
    }

    public final void write(String s, int i, int j)
    {
        int k = i;
        do
        {
            int l = k;
            if (l >= i + j)
            {
                break;
            }
            k = l + 1;
            char c1 = s.charAt(l);
            if (c1 < '\200')
            {
                b[c] = (byte)c1;
                int i1 = c + 1;
                c = i1;
                if (i1 >= b.length)
                {
                    b();
                }
            } else
            {
                a(c1);
            }
        } while (true);
    }

    public final void write(char ac[], int i, int j)
    {
        int k = i;
        do
        {
            int l = k;
            if (l >= i + j)
            {
                break;
            }
            k = l + 1;
            char c1 = ac[l];
            if (c1 < '\200')
            {
                b[c] = (byte)c1;
                int i1 = c + 1;
                c = i1;
                if (i1 >= b.length)
                {
                    b();
                }
            } else
            {
                a(c1);
            }
        } while (true);
    }
}
