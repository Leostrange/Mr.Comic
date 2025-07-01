// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public final class ajj extends Writer
{

    protected final ajc a;
    OutputStream b;
    byte c[];
    final int d;
    int e;
    int f;

    public ajj(ajc ajc1, OutputStream outputstream)
    {
        f = 0;
        a = ajc1;
        b = outputstream;
        c = ajc1.f();
        d = c.length - 4;
        e = 0;
    }

    private int a(int i)
    {
        int j = f;
        f = 0;
        if (i < 56320 || i > 57343)
        {
            throw new IOException((new StringBuilder("Broken surrogate pair: first char 0x")).append(Integer.toHexString(j)).append(", second 0x").append(Integer.toHexString(i)).append("; illegal combination").toString());
        } else
        {
            return (j - 55296 << 10) + 0x10000 + (i - 56320);
        }
    }

    private static void b(int i)
    {
        if (i > 0x10ffff)
        {
            throw new IOException((new StringBuilder("Illegal character point (0x")).append(Integer.toHexString(i)).append(") to output; max is 0x10FFFF as per RFC 4627").toString());
        }
        if (i >= 55296)
        {
            if (i <= 56319)
            {
                throw new IOException((new StringBuilder("Unmatched first part of surrogate pair (0x")).append(Integer.toHexString(i)).append(")").toString());
            } else
            {
                throw new IOException((new StringBuilder("Unmatched second part of surrogate pair (0x")).append(Integer.toHexString(i)).append(")").toString());
            }
        } else
        {
            throw new IOException((new StringBuilder("Illegal character point (0x")).append(Integer.toHexString(i)).append(") to output").toString());
        }
    }

    public final Writer append(char c1)
    {
        write(c1);
        return this;
    }

    public final volatile Appendable append(char c1)
    {
        return append(c1);
    }

    public final void close()
    {
        if (b != null)
        {
            if (e > 0)
            {
                b.write(c, 0, e);
                e = 0;
            }
            OutputStream outputstream = b;
            b = null;
            byte abyte0[] = c;
            if (abyte0 != null)
            {
                c = null;
                a.b(abyte0);
            }
            outputstream.close();
            int i = f;
            f = 0;
            if (i > 0)
            {
                b(i);
            }
        }
    }

    public final void flush()
    {
        if (b != null)
        {
            if (e > 0)
            {
                b.write(c, 0, e);
                e = 0;
            }
            b.flush();
        }
    }

    public final void write(int i)
    {
        int j;
        if (f > 0)
        {
            j = a(i);
        } else
        {
            j = i;
            if (i >= 55296)
            {
                j = i;
                if (i <= 57343)
                {
                    if (i > 56319)
                    {
                        b(i);
                    }
                    f = i;
                    return;
                }
            }
        }
        if (e >= d)
        {
            b.write(c, 0, e);
            e = 0;
        }
        if (j < 128)
        {
            byte abyte0[] = c;
            i = e;
            e = i + 1;
            abyte0[i] = (byte)j;
            return;
        }
        i = e;
        if (j < 2048)
        {
            byte abyte1[] = c;
            int k = i + 1;
            abyte1[i] = (byte)(j >> 6 | 0xc0);
            abyte1 = c;
            i = k + 1;
            abyte1[k] = (byte)(j & 0x3f | 0x80);
        } else
        if (j <= 65535)
        {
            byte abyte2[] = c;
            int l = i + 1;
            abyte2[i] = (byte)(j >> 12 | 0xe0);
            abyte2 = c;
            int j1 = l + 1;
            abyte2[l] = (byte)(j >> 6 & 0x3f | 0x80);
            abyte2 = c;
            i = j1 + 1;
            abyte2[j1] = (byte)(j & 0x3f | 0x80);
        } else
        {
            if (j > 0x10ffff)
            {
                b(j);
            }
            byte abyte3[] = c;
            int i1 = i + 1;
            abyte3[i] = (byte)(j >> 18 | 0xf0);
            abyte3 = c;
            i = i1 + 1;
            abyte3[i1] = (byte)(j >> 12 & 0x3f | 0x80);
            abyte3 = c;
            i1 = i + 1;
            abyte3[i] = (byte)(j >> 6 & 0x3f | 0x80);
            abyte3 = c;
            i = i1 + 1;
            abyte3[i1] = (byte)(j & 0x3f | 0x80);
        }
        e = i;
    }

    public final void write(String s)
    {
        write(s, 0, s.length());
    }

    public final void write(String s, int i, int j)
    {
        if (j < 2)
        {
            if (j == 1)
            {
                write(s.charAt(i));
            }
            return;
        }
        int k = i;
        int l = j;
        if (f > 0)
        {
            k = s.charAt(i);
            l = j - 1;
            write(a(k));
            k = i + 1;
        }
        i = e;
        byte abyte0[] = c;
        int k1 = d;
        int l1 = l + k;
        j = k;
label0:
        do
        {
            k = i;
            if (j >= l1)
            {
                break;
            }
            k = i;
            if (i >= k1)
            {
                b.write(abyte0, 0, i);
                k = 0;
            }
            int i1 = j + 1;
            char c1 = s.charAt(j);
            j = k;
            int j1 = c1;
            i = i1;
            if (c1 < '\200')
            {
                i = k + 1;
                abyte0[k] = (byte)c1;
                k = l1 - i1;
                j = k1 - i;
                if (k > j)
                {
                    k = j;
                }
                j = i1;
                do
                {
                    if (j >= k + i1)
                    {
                        continue label0;
                    }
                    j1 = j + 1;
                    c1 = s.charAt(j);
                    if (c1 >= '\200')
                    {
                        break;
                    }
                    abyte0[i] = (byte)c1;
                    i++;
                    j = j1;
                } while (true);
                j = i;
                k = c1;
                i = j1;
                j1 = k;
            }
            if (j1 < 2048)
            {
                i1 = j + 1;
                abyte0[j] = (byte)(j1 >> 6 | 0xc0);
                k = i1 + 1;
                abyte0[i1] = (byte)(j1 & 0x3f | 0x80);
                j = i;
                i = k;
                continue;
            }
            if (j1 < 55296 || j1 > 57343)
            {
                k = j + 1;
                abyte0[j] = (byte)(j1 >> 12 | 0xe0);
                j = k + 1;
                abyte0[k] = (byte)(j1 >> 6 & 0x3f | 0x80);
                k = j + 1;
                abyte0[j] = (byte)(j1 & 0x3f | 0x80);
                j = i;
                i = k;
                continue;
            }
            if (j1 > 56319)
            {
                e = j;
                b(j1);
            }
            f = j1;
            k = j;
            if (i >= l1)
            {
                break;
            }
            k = i + 1;
            i1 = a(s.charAt(i));
            if (i1 > 0x10ffff)
            {
                e = j;
                b(i1);
            }
            i = j + 1;
            abyte0[j] = (byte)(i1 >> 18 | 0xf0);
            j = i + 1;
            abyte0[i] = (byte)(i1 >> 12 & 0x3f | 0x80);
            j1 = j + 1;
            abyte0[j] = (byte)(i1 >> 6 & 0x3f | 0x80);
            i = j1 + 1;
            abyte0[j1] = (byte)(i1 & 0x3f | 0x80);
            j = k;
        } while (true);
        e = k;
    }

    public final void write(char ac[])
    {
        write(ac, 0, ac.length);
    }

    public final void write(char ac[], int i, int j)
    {
        if (j < 2)
        {
            if (j == 1)
            {
                write(ac[i]);
            }
            return;
        }
        int k = i;
        int l = j;
        if (f > 0)
        {
            k = ac[i];
            l = j - 1;
            write(a(k));
            k = i + 1;
        }
        i = e;
        byte abyte0[] = c;
        int k1 = d;
        int l1 = l + k;
        j = k;
label0:
        do
        {
            k = i;
            if (j >= l1)
            {
                break;
            }
            k = i;
            if (i >= k1)
            {
                b.write(abyte0, 0, i);
                k = 0;
            }
            int i1 = j + 1;
            char c1 = ac[j];
            j = k;
            int j1 = c1;
            i = i1;
            if (c1 < '\200')
            {
                i = k + 1;
                abyte0[k] = (byte)c1;
                k = l1 - i1;
                j = k1 - i;
                if (k > j)
                {
                    k = j;
                }
                j = i1;
                do
                {
                    if (j >= k + i1)
                    {
                        continue label0;
                    }
                    j1 = j + 1;
                    c1 = ac[j];
                    if (c1 >= '\200')
                    {
                        break;
                    }
                    abyte0[i] = (byte)c1;
                    i++;
                    j = j1;
                } while (true);
                j = i;
                k = c1;
                i = j1;
                j1 = k;
            }
            if (j1 < 2048)
            {
                i1 = j + 1;
                abyte0[j] = (byte)(j1 >> 6 | 0xc0);
                k = i1 + 1;
                abyte0[i1] = (byte)(j1 & 0x3f | 0x80);
                j = i;
                i = k;
                continue;
            }
            if (j1 < 55296 || j1 > 57343)
            {
                k = j + 1;
                abyte0[j] = (byte)(j1 >> 12 | 0xe0);
                j = k + 1;
                abyte0[k] = (byte)(j1 >> 6 & 0x3f | 0x80);
                k = j + 1;
                abyte0[j] = (byte)(j1 & 0x3f | 0x80);
                j = i;
                i = k;
                continue;
            }
            if (j1 > 56319)
            {
                e = j;
                b(j1);
            }
            f = j1;
            k = j;
            if (i >= l1)
            {
                break;
            }
            k = i + 1;
            i1 = a(ac[i]);
            if (i1 > 0x10ffff)
            {
                e = j;
                b(i1);
            }
            i = j + 1;
            abyte0[j] = (byte)(i1 >> 18 | 0xf0);
            j = i + 1;
            abyte0[i] = (byte)(i1 >> 12 & 0x3f | 0x80);
            j1 = j + 1;
            abyte0[j] = (byte)(i1 >> 6 & 0x3f | 0x80);
            i = j1 + 1;
            abyte0[j1] = (byte)(i1 & 0x3f | 0x80);
            j = k;
        } while (true);
        e = k;
    }
}
