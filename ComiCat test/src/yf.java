// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

public final class yf
{

    static final String a = xj.b("jcifs.encoding", System.getProperty("file.encoding"));
    private static final String f = xj.a("jcifs.netbios.scope");
    public String b;
    public String c;
    public int d;
    int e;

    yf()
    {
    }

    public yf(String s, int i, String s1)
    {
        String s2 = s;
        if (s.length() > 15)
        {
            s2 = s.substring(0, 15);
        }
        b = s2.toUpperCase();
        d = i;
        if (s1 == null || s1.length() <= 0)
        {
            s1 = f;
        }
        c = s1;
        e = 0;
    }

    private int b(byte abyte0[], int i)
    {
        if (c == null)
        {
            abyte0[i] = 0;
            return 1;
        }
        int j = i + 1;
        abyte0[i] = 46;
        int k;
        int l;
        try
        {
            System.arraycopy(c.getBytes(a), 0, abyte0, j, c.length());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception) { }
        i = j + c.length();
        abyte0[i] = 0;
        k = (i + 1) - 2;
        l = c.length();
        j = k;
        i = 0;
        do
        {
            if (abyte0[j] == 46)
            {
                abyte0[j] = (byte)i;
                i = 0;
            } else
            {
                i++;
            }
            if (j <= k - l)
            {
                return c.length() + 2;
            }
            j--;
        } while (true);
    }

    private int c(byte abyte0[], int i)
    {
        int j;
        i++;
        j = abyte0[45] & 0xff;
        if (j == 0)
        {
            c = null;
            return 1;
        }
        StringBuffer stringbuffer = new StringBuffer(new String(abyte0, 46, j, a));
        i = j + 46;
_L2:
        int k;
        j = i + 1;
        k = abyte0[i] & 0xff;
        if (k == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        i = j;
        stringbuffer.append('.').append(new String(abyte0, j, k, a));
        i = j + k;
        if (true) goto _L2; else goto _L1
_L1:
        i = j;
        c = stringbuffer.toString();
        i = j;
_L4:
        return i - 45;
        abyte0;
        if (true) goto _L4; else goto _L3
_L3:
    }

    final int a(byte abyte0[])
    {
        byte abyte1[] = new byte[33];
        int i = 0;
        int j = 15;
        for (; i < 15; i++)
        {
            abyte1[i] = (byte)((abyte0[i * 2 + 1 + 12] & 0xff) - 65 << 4);
            abyte1[i] = (byte)(abyte1[i] | (byte)((abyte0[i * 2 + 2 + 12] & 0xff) - 65 & 0xf));
            if (abyte1[i] != 32)
            {
                j = i + 1;
            }
        }

        try
        {
            b = new String(abyte1, 0, j, a);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception) { }
        d = (abyte0[43] & 0xff) - 65 << 4;
        d = d | (abyte0[44] & 0xff) - 65 & 0xf;
        return c(abyte0, 45) + 33;
    }

    final int a(byte abyte0[], int i)
    {
        abyte0[i] = 32;
        byte abyte1[] = b.getBytes(a);
        int j = 0;
_L2:
        int k = j;
        if (j >= abyte1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte0[j * 2 + 1 + i] = (byte)(((abyte1[j] & 0xf0) >> 4) + 65);
        abyte0[j * 2 + 2 + i] = (byte)((abyte1[j] & 0xf) + 65);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        do
        {
            while (k >= 15) 
            {
                try
                {
                    abyte0[i + 31] = (byte)(((d & 0xf0) >> 4) + 65);
                    abyte0[i + 31 + 1] = (byte)((d & 0xf) + 65);
                }
                catch (UnsupportedEncodingException unsupportedencodingexception) { }
                return b(abyte0, i + 33) + 33;
            }
            abyte0[k * 2 + 1 + i] = 67;
            abyte0[k * 2 + 2 + i] = 65;
            k++;
        } while (true);
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof yf) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        obj = (yf)obj;
        if (c != null || ((yf) (obj)).c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!b.equals(((yf) (obj)).b) || d != ((yf) (obj)).d) goto _L1; else goto _L3
_L3:
        return true;
        if (!b.equals(((yf) (obj)).b) || d != ((yf) (obj)).d || !c.equals(((yf) (obj)).c)) goto _L1; else goto _L4
_L4:
        return true;
    }

    public final int hashCode()
    {
        int j = b.hashCode() + d * 0x1003f + e * 0x1003f;
        int i = j;
        if (c != null)
        {
            i = j;
            if (c.length() != 0)
            {
                i = j + c.hashCode();
            }
        }
        return i;
    }

    public final String toString()
    {
        String s;
        StringBuffer stringbuffer;
        stringbuffer = new StringBuffer();
        s = b;
        if (s != null) goto _L2; else goto _L1
_L1:
        Object obj = "null";
_L4:
        stringbuffer.append(((String) (obj))).append("<").append(abw.a(d, 2)).append(">");
        if (c != null)
        {
            stringbuffer.append(".").append(c);
        }
        return stringbuffer.toString();
_L2:
        obj = s;
        if (s.charAt(0) == '\001')
        {
            obj = s.toCharArray();
            obj[0] = '.';
            obj[1] = '.';
            obj[14] = '.';
            obj = new String(((char []) (obj)));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
