// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.CharConversionException;
import java.io.InputStream;

public final class aji extends aja
{

    protected final boolean g;
    protected char h;
    protected int i;
    protected int j;
    protected final boolean k;

    public aji(ajc ajc, InputStream inputstream, byte abyte0[], int l, int i1, boolean flag)
    {
        boolean flag1 = false;
        super(ajc, inputstream, abyte0, l, i1);
        h = '\0';
        i = 0;
        j = 0;
        g = flag;
        flag = flag1;
        if (inputstream != null)
        {
            flag = true;
        }
        k = flag;
    }

    private boolean a(int l)
    {
        j = j + (e - l);
        if (l > 0)
        {
            if (d > 0)
            {
                for (int i1 = 0; i1 < l; i1++)
                {
                    c[i1] = c[d + i1];
                }

                d = 0;
            }
            e = l;
        } else
        {
            d = 0;
            if (b == null)
            {
                l = -1;
            } else
            {
                l = b.read(c);
            }
            if (l <= 0)
            {
                e = 0;
                if (l < 0)
                {
                    if (k)
                    {
                        a();
                    }
                    return false;
                }
                b();
            }
            e = l;
        }
        for (; e < 4; e = l + e)
        {
            if (b == null)
            {
                l = -1;
            } else
            {
                l = b.read(c, e, c.length - e);
            }
            if (l <= 0)
            {
                if (l < 0)
                {
                    if (k)
                    {
                        a();
                    }
                    l = e;
                    int j1 = j;
                    int k1 = i;
                    throw new CharConversionException((new StringBuilder("Unexpected EOF in the middle of a 4-byte UTF-32 char: got ")).append(l).append(", needed 4, at char #").append(k1).append(", byte #").append(j1 + l).append(")").toString());
                }
                b();
            }
        }

        return true;
    }

    public final volatile void close()
    {
        super.close();
    }

    public final volatile int read()
    {
        return super.read();
    }

    public final int read(char ac[], int l, int i1)
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        int j1 = -1;
_L4:
        return j1;
_L2:
        j1 = i1;
        if (i1 <= 0) goto _L4; else goto _L3
_L3:
        int k2;
        if (l < 0 || l + i1 > ac.length)
        {
            throw new ArrayIndexOutOfBoundsException((new StringBuilder("read(buf,")).append(l).append(",").append(i1).append("), cbuf[").append(ac.length).append("]").toString());
        }
        k2 = i1 + l;
        if (h == 0) goto _L6; else goto _L5
_L5:
        i1 = l + 1;
        ac[l] = h;
        h = '\0';
_L16:
        j1 = i1;
        if (i1 >= k2) goto _L8; else goto _L7
_L7:
        j1 = d;
        int k1;
        int i2;
        if (g)
        {
            byte byte0 = c[j1];
            byte byte2 = c[j1 + 1];
            byte byte4 = c[j1 + 2];
            j1 = c[j1 + 3] & 0xff | (byte0 << 24 | (byte2 & 0xff) << 16 | (byte4 & 0xff) << 8);
        } else
        {
            byte byte1 = c[j1];
            byte byte3 = c[j1 + 1];
            byte byte5 = c[j1 + 2];
            j1 = c[j1 + 3] << 24 | (byte1 & 0xff | (byte3 & 0xff) << 8 | (byte5 & 0xff) << 16);
        }
        d = d + 4;
        if (j1 <= 65535) goto _L10; else goto _L9
_L9:
        int l1;
        int j2;
        if (j1 > 0x10ffff)
        {
            ac = (new StringBuilder("(above ")).append(Integer.toHexString(0x10ffff)).append(") ").toString();
            k1 = j;
            i2 = d;
            k2 = i;
            throw new CharConversionException((new StringBuilder("Invalid UTF-32 character 0x")).append(Integer.toHexString(j1)).append(ac).append(" at char #").append((i1 - l) + k2).append(", byte #").append((k1 + i2) - 1).append(")").toString());
        }
        l1 = j1 - 0x10000;
        j1 = i1 + 1;
        ac[i1] = (char)(55296 + (l1 >> 10));
        j2 = l1 & 0x3ff | 0xdc00;
        l1 = j2;
        i1 = j1;
          goto _L11
_L6:
        i1 = e - d;
        if (i1 < 4 && !a(i1))
        {
            return -1;
        }
        i1 = l;
        continue; /* Loop/switch isn't completed */
_L11:
        if (j1 < k2) goto _L13; else goto _L12
_L12:
        h = (char)j2;
_L8:
        l = j1 - l;
        i = i + l;
        return l;
_L10:
        l1 = j1;
_L13:
        j1 = i1 + 1;
        ac[i1] = (char)l1;
        i1 = j1;
        if (d < e) goto _L14; else goto _L8
_L14:
        continue; /* Loop/switch isn't completed */
        if (true) goto _L16; else goto _L15
_L15:
    }
}
