// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.util.HashMap;

public final class xs extends xq
{

    aau g;
    aas h;
    aat i;
    boolean j;

    public xs(String s, zl zl)
    {
        Object obj;
        String s1;
        String s2;
        char ac[];
        int k;
        int l;
        int i1;
        h = null;
        i = null;
        j = true;
        ac = s.toCharArray();
        s1 = null;
        s2 = null;
        obj = null;
        k = 0;
        i1 = 0;
        l = 0;
_L18:
        int j1 = ac[k];
        l;
        JVM INSTR tableswitch 0 5: default 88
    //                   0 162
    //                   1 207
    //                   2 873
    //                   3 88
    //                   4 88
    //                   5 310;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L5
_L1:
        j1 = ac.length;
        k = i1;
        i1 = j1;
        String s3 = s2;
        s2 = s1;
        s1 = s3;
_L16:
        j1 = i1 + 1;
        if (j1 < ac.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (obj == null || ((xm) (obj)).d == null)
        {
            throw new xp((new StringBuilder("Invalid binding URL: ")).append(s).toString());
        }
          goto _L6
_L2:
        if (j1 == 58)
        {
            String s4 = s.substring(i1, k);
            l = 1;
            s1 = s2;
            s2 = s4;
            j1 = k + 1;
            i1 = k;
            k = j1;
            continue; /* Loop/switch isn't completed */
        }
          goto _L7
_L3:
        if (j1 == 92)
        {
            String s5 = s1;
            i1 = k;
            k++;
            s1 = s2;
            s2 = s5;
            continue; /* Loop/switch isn't completed */
        }
        l = 2;
_L4:
        String s7;
        String s10;
        int k1;
        if (j1 == 91)
        {
            s.substring(i1, k).trim().length();
            obj = new xm(s1, s.substring(i1, k));
            l = 5;
            String s6 = s1;
            i1 = k;
            k++;
            s1 = s2;
            s2 = s6;
        } else
        {
            String s8 = s1;
            j1 = i1;
            s1 = s2;
            s2 = s8;
            i1 = k;
            k = j1;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (j1 == 61)
        {
            s2 = s.substring(i1, k).trim();
            j1 = k + 1;
            s7 = s1;
            s1 = s2;
            s2 = s7;
            i1 = k;
            k = j1;
            continue; /* Loop/switch isn't completed */
        }
        if (j1 != 44 && j1 != 93) goto _L7; else goto _L8
_L8:
        s10 = s.substring(i1, k).trim();
        s7 = s2;
        if (s2 == null)
        {
            s7 = "endpoint";
        }
        if (!s7.equals("endpoint")) goto _L10; else goto _L9
_L9:
        obj.d = s10.toString();
        s2 = ((xm) (obj)).d.toLowerCase();
        if (!s2.startsWith("\\pipe\\")) goto _L12; else goto _L11
_L11:
        s2 = (String)xm.a.get(s2.substring(6));
        if (s2 == null) goto _L12; else goto _L13
_L13:
        j1 = s2.indexOf(':');
        k1 = s2.indexOf('.', j1 + 1);
        obj.f = new xu(s2.substring(0, j1));
        obj.g = Integer.parseInt(s2.substring(j1 + 1, k1));
        obj.h = Integer.parseInt(s2.substring(k1 + 1));
_L14:
        s2 = s1;
        j1 = i1;
        s1 = null;
        i1 = k;
        k = j1;
        continue; /* Loop/switch isn't completed */
_L12:
        throw new xp((new StringBuilder("Bad endpoint: ")).append(((xm) (obj)).d).toString());
_L10:
        if (((xm) (obj)).e == null)
        {
            obj.e = new HashMap();
        }
        ((xm) (obj)).e.put(s7, s10);
        if (true) goto _L14; else goto _L6
_L6:
        a = ((xm) (obj));
        s1 = (new StringBuilder("smb://")).append(a.c).append("/IPC$/").append(a.d.substring(6)).toString();
        s2 = (String)a.a("server");
        if (s2 != null)
        {
            s = (new StringBuilder()).append("").append("&server=").append(s2).toString();
        } else
        {
            s = "";
        }
        s7 = (String)a.a("address");
        obj = s;
        if (s2 != null)
        {
            obj = (new StringBuilder()).append(s).append("&address=").append(s7).toString();
        }
        if (((String) (obj)).length() > 0)
        {
            s = (new StringBuilder()).append(s1).append("?").append(((String) (obj)).substring(1)).toString();
        } else
        {
            s = s1;
        }
        g = new aau(s, zl);
        return;
_L7:
        s7 = s1;
        j1 = i1;
        s1 = s2;
        s2 = s7;
        i1 = k;
        k = j1;
        if (true) goto _L16; else goto _L15
_L15:
        i1 = k;
        k = j1;
        String s9 = s2;
        s2 = s1;
        s1 = s9;
        if (true) goto _L18; else goto _L17
_L17:
    }

    public final void a()
    {
        d = 0;
        if (i != null)
        {
            i.close();
        }
    }

    protected final void a(byte abyte0[], int k, int l, boolean flag)
    {
        if (i != null && !i.a.b())
        {
            throw new IOException("DCERPC pipe is no longer open");
        }
        aau aau1;
        if (h == null)
        {
            aau1 = g;
            if (aau1.q == null)
            {
                if ((aau1.s & 0x100) == 256 || (aau1.s & 0x200) == 512)
                {
                    aau1.q = new abq(aau1);
                } else
                {
                    aau1.q = new aas(aau1, aau1.s & 0xffff00ff | 0x20);
                }
            }
            h = (aas)aau1.q;
        }
        if (i == null)
        {
            aau1 = g;
            if (aau1.r == null)
            {
                if ((aau1.s & 0x100) == 256 || (aau1.s & 0x200) == 512)
                {
                    aau1.r = new abr(aau1);
                } else
                {
                    aau1.r = new aat(aau1, aau1.s & 0xffff00ff | 0x20);
                }
            }
            i = (aat)aau1.r;
        }
        if (flag)
        {
            i.a(abyte0, k, l, 1);
            return;
        } else
        {
            i.write(abyte0, k, l);
            return;
        }
    }

    protected final void a(byte abyte0[], boolean flag)
    {
        boolean flag1 = true;
        if (abyte0.length < c)
        {
            throw new IllegalArgumentException("buffer too small");
        }
        int k;
        if (j && !flag)
        {
            k = h.read(abyte0, 0, 1024);
        } else
        {
            k = h.a(abyte0, 0, abyte0.length);
        }
        if (abyte0[0] != 5 && abyte0[1] != 0)
        {
            throw new IOException("Unexpected DCERPC PDU header");
        }
        short word0;
        if ((abyte0[3] & 0xff & 2) == 2)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        j = flag;
        word0 = abu.a(abyte0, 8);
        if (word0 > c)
        {
            throw new IOException((new StringBuilder("Unexpected fragment length: ")).append(word0).toString());
        }
        for (; k < word0; k += h.a(abyte0, k, word0 - k)) { }
    }
}
