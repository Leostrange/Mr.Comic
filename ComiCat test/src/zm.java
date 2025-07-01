// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

abstract class zm extends acb
    implements aap, aca
{

    static abx e = abx.a();
    static final byte f[] = {
        -1, 83, 77, 66, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0
    };
    String A;
    zn B;
    zm C;
    byte g;
    byte h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    boolean t;
    boolean u;
    boolean v;
    long w;
    int x;
    boolean y;
    zl z;

    zm()
    {
        w = 1L;
        z = null;
        B = null;
        h = 24;
        o = aj;
        k = 0;
    }

    static void a(long l1, byte abyte0[], int i1)
    {
        abyte0[i1] = (byte)(int)l1;
        abyte0[i1 + 1] = (byte)(int)(l1 >> 8);
    }

    static void b(long l1, byte abyte0[], int i1)
    {
        abyte0[i1] = (byte)(int)l1;
        i1++;
        l1 >>= 8;
        abyte0[i1] = (byte)(int)l1;
        i1++;
        l1 >>= 8;
        abyte0[i1] = (byte)(int)l1;
        abyte0[i1 + 1] = (byte)(int)(l1 >> 8);
    }

    static int d(byte abyte0[], int i1)
    {
        return (abyte0[i1] & 0xff) + ((abyte0[i1 + 1] & 0xff) << 8);
    }

    static int e(byte abyte0[], int i1)
    {
        return (abyte0[i1] & 0xff) + ((abyte0[i1 + 1] & 0xff) << 8) + ((abyte0[i1 + 2] & 0xff) << 16) + ((abyte0[i1 + 3] & 0xff) << 24);
    }

    static long f(byte abyte0[], int i1)
    {
        return ((long)e(abyte0, i1) & 0xffffffffL) + ((long)e(abyte0, i1 + 4) << 32);
    }

    static long g(byte abyte0[], int i1)
    {
        int j1 = e(abyte0, i1);
        long l1 = e(abyte0, i1 + 4);
        return ((long)j1 & 0xffffffffL | l1 << 32) / 10000L - 0xa9730b66800L;
    }

    static long h(byte abyte0[], int i1)
    {
        return (long)e(abyte0, i1) * 1000L;
    }

    final int a(String s1, int i1)
    {
        int j1 = s1.length() + 1;
        if (t)
        {
            int k1 = s1.length() * 2 + 2;
            j1 = k1;
            if (i1 % 2 != 0)
            {
                j1 = k1 + 1;
            }
        }
        return j1;
    }

    final int a(String s1, byte abyte0[], int i1)
    {
        return a(s1, abyte0, i1, t);
    }

    final int a(String s1, byte abyte0[], int i1, boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        int j1 = i;
        int k1;
        if ((i1 - j1) % 2 != 0)
        {
            j1 = i1 + 1;
            abyte0[i1] = 0;
        } else
        {
            j1 = i1;
        }
        System.arraycopy(s1.getBytes("UTF-16LE"), 0, abyte0, j1, s1.length() * 2);
        k1 = s1.length() * 2 + j1;
        int l1 = k1 + 1;
        abyte0[k1] = 0;
        j1 = l1 + 1;
        abyte0[l1] = 0;
_L4:
        return j1 - i1;
_L2:
        s1 = s1.getBytes(am);
        System.arraycopy(s1, 0, abyte0, i1, s1.length);
        j1 = s1.length;
        k1 = i1 + j1;
        j1 = k1 + 1;
        abyte0[k1] = 0;
        continue; /* Loop/switch isn't completed */
_L5:
        j1 = k1;
        if (abx.a > 1)
        {
            s1.printStackTrace(e);
            j1 = k1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        s1;
        k1 = i1;
          goto _L5
        s1;
        k1 = j1;
          goto _L5
    }

    int a(byte abyte0[])
    {
        i = 4;
        c(abyte0);
        r = i(abyte0, 37);
        abyte0[36] = (byte)(r / 2 & 0xff);
        int i1 = r + 37;
        r = r / 2;
        s = j(abyte0, i1 + 2);
        int j1 = i1 + 1;
        abyte0[i1] = (byte)(s & 0xff);
        abyte0[j1] = (byte)(s >> 8 & 0xff);
        j = (j1 + 1 + s) - 4;
        if (B != null)
        {
            B.a(abyte0, i, j, this, C);
        }
        return j;
    }

    final String a(byte abyte0[], int i1, int j1, boolean flag)
    {
        int k1;
        int l1;
        boolean flag1;
        k1 = 128;
        flag1 = false;
        l1 = 0;
        if (!flag) goto _L2; else goto _L1
_L1:
        int i2;
        i2 = ((flag1) ? 1 : 0);
        l1 = i1;
        if ((i1 - i) % 2 != 0)
        {
            l1 = i1 + 1;
            i2 = ((flag1) ? 1 : 0);
        }
          goto _L3
_L5:
        i1 = i2 + 2;
        i2 = i1;
        if (i1 <= j1) goto _L3; else goto _L4
_L4:
        java.io.PrintStream printstream;
        if (abx.a <= 0)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        printstream = System.err;
        if (j1 < 128)
        {
            k1 = j1 + 8;
        }
        abw.a(printstream, abyte0, l1, k1);
        throw new RuntimeException("zero termination not found");
_L6:
        try
        {
            return new String(abyte0, l1, i2, "UTF-16LE");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            if (abx.a > 1)
            {
                abyte0.printStackTrace(e);
            }
            return null;
        }
_L2:
        do
        {
            if (abyte0[i1 + l1] == 0)
            {
                break MISSING_BLOCK_LABEL_203;
            }
            i2 = l1 + 1;
            l1 = i2;
        } while (i2 <= j1);
        if (abx.a <= 0)
        {
            break MISSING_BLOCK_LABEL_193;
        }
        printstream = System.err;
        if (j1 < 128)
        {
            k1 = j1 + 8;
        }
        abw.a(printstream, abyte0, i1, k1);
        throw new RuntimeException("zero termination not found");
        abyte0 = new String(abyte0, i1, l1, am);
        return abyte0;
_L3:
        if (abyte0[l1 + i2] == 0 && abyte0[l1 + i2 + 1] == 0) goto _L6; else goto _L5
    }

    int b(byte abyte0[])
    {
        int i1 = 37;
        i = 4;
        d(abyte0);
        r = abyte0[36];
        if (r != 0)
        {
            i1 = k(abyte0, 37);
            if (i1 != r * 2 && abx.a >= 5)
            {
                e.println((new StringBuilder("wordCount * 2=")).append(r * 2).append(" but readParameterWordsWireFormat returned ").append(i1).toString());
            }
            i1 = r * 2 + 37;
        }
        s = d(abyte0, i1);
        int j1 = i1 + 2;
        i1 = j1;
        if (s != 0)
        {
            i1 = l(abyte0, j1);
            if (i1 != s && abx.a >= 5)
            {
                e.println((new StringBuilder("byteCount=")).append(s).append(" but readBytesWireFormat returned ").append(i1).toString());
            }
            i1 = j1 + s;
        }
        j = i1 - 4;
        return j;
    }

    final String b(byte abyte0[], int i1, int j1, boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        int k1 = i1;
        if ((i1 - i) % 2 != 0)
        {
            k1 = i1 + 1;
        }
        i1 = 0;
          goto _L3
_L4:
        if (i1 > 255)
        {
            try
            {
                if (abx.a > 0)
                {
                    abw.a(System.err, abyte0, k1, 128);
                }
                throw new RuntimeException("zero termination not found");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[]) { }
            if (abx.a > 1)
            {
                abyte0.printStackTrace(e);
            }
            return null;
        }
        i1 += 2;
          goto _L3
_L5:
        return new String(abyte0, k1, i1, "UTF-16LE");
_L2:
        k1 = 0;
        for (; i1 >= j1 || abyte0[i1 + k1] == 0; k1++)
        {
            break MISSING_BLOCK_LABEL_149;
        }

        if (k1 <= 255)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        if (abx.a > 0)
        {
            abw.a(System.err, abyte0, i1, 128);
        }
        throw new RuntimeException("zero termination not found");
        abyte0 = new String(abyte0, i1, k1, am);
        return abyte0;
_L3:
        if (k1 + i1 + 1 >= j1 || abyte0[k1 + i1] == 0 && abyte0[k1 + i1 + 1] == 0) goto _L5; else goto _L4
    }

    final int c(byte abyte0[])
    {
        System.arraycopy(f, 0, abyte0, 4, f.length);
        abyte0[8] = g;
        abyte0[13] = h;
        a(m, abyte0, 14);
        a(n, abyte0, 28);
        a(o, abyte0, 30);
        a(p, abyte0, 32);
        a(q, abyte0, 34);
        return 32;
    }

    final int d(byte abyte0[])
    {
        g = abyte0[8];
        l = e(abyte0, 9);
        h = abyte0[13];
        m = d(abyte0, 14);
        n = d(abyte0, 28);
        o = d(abyte0, 30);
        p = d(abyte0, 32);
        q = d(abyte0, 34);
        return 32;
    }

    void e()
    {
        h = 24;
        m = 0;
        l = 0;
        u = false;
        B = null;
    }

    public boolean equals(Object obj)
    {
        return (obj instanceof zm) && ((zm)obj).q == q;
    }

    final boolean f()
    {
        return (h & 0x80) == 128;
    }

    public int hashCode()
    {
        return q;
    }

    abstract int i(byte abyte0[], int i1);

    abstract int j(byte abyte0[], int i1);

    abstract int k(byte abyte0[], int i1);

    abstract int l(byte abyte0[], int i1);

    public String toString()
    {
        g;
        JVM INSTR lookupswitch 24: default 208
    //                   -96: 543
    //                   -95: 550
    //                   -94: 501
    //                   0: 536
    //                   1: 494
    //                   4: 522
    //                   6: 487
    //                   7: 480
    //                   8: 410
    //                   16: 417
    //                   37: 424
    //                   38: 438
    //                   42: 473
    //                   43: 466
    //                   45: 508
    //                   46: 515
    //                   47: 529
    //                   50: 431
    //                   52: 445
    //                   113: 452
    //                   114: 389
    //                   115: 396
    //                   116: 459
    //                   117: 403;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25
_L3:
        break MISSING_BLOCK_LABEL_550;
_L1:
        String s1 = "UNKNOWN";
_L26:
        String s2;
        if (l == 0)
        {
            s2 = "0";
        } else
        {
            s2 = aaq.a(l);
        }
        return new String((new StringBuilder("command=")).append(s1).append(",received=").append(u).append(",errorCode=").append(s2).append(",flags=0x").append(abw.a(h & 0xff, 4)).append(",flags2=0x").append(abw.a(m, 4)).append(",signSeq=").append(x).append(",tid=").append(n).append(",pid=").append(o).append(",uid=").append(p).append(",mid=").append(q).append(",wordCount=").append(r).append(",byteCount=").append(s).toString());
_L22:
        s1 = "SMB_COM_NEGOTIATE";
          goto _L26
_L23:
        s1 = "SMB_COM_SESSION_SETUP_ANDX";
          goto _L26
_L25:
        s1 = "SMB_COM_TREE_CONNECT_ANDX";
          goto _L26
_L10:
        s1 = "SMB_COM_QUERY_INFORMATION";
          goto _L26
_L11:
        s1 = "SMB_COM_CHECK_DIRECTORY";
          goto _L26
_L12:
        s1 = "SMB_COM_TRANSACTION";
          goto _L26
_L19:
        s1 = "SMB_COM_TRANSACTION2";
          goto _L26
_L13:
        s1 = "SMB_COM_TRANSACTION_SECONDARY";
          goto _L26
_L20:
        s1 = "SMB_COM_FIND_CLOSE2";
          goto _L26
_L21:
        s1 = "SMB_COM_TREE_DISCONNECT";
          goto _L26
_L24:
        s1 = "SMB_COM_LOGOFF_ANDX";
          goto _L26
_L15:
        s1 = "SMB_COM_ECHO";
          goto _L26
_L14:
        s1 = "SMB_COM_MOVE";
          goto _L26
_L9:
        s1 = "SMB_COM_RENAME";
          goto _L26
_L8:
        s1 = "SMB_COM_DELETE";
          goto _L26
_L6:
        s1 = "SMB_COM_DELETE_DIRECTORY";
          goto _L26
_L4:
        s1 = "SMB_COM_NT_CREATE_ANDX";
          goto _L26
_L16:
        s1 = "SMB_COM_OPEN_ANDX";
          goto _L26
_L17:
        s1 = "SMB_COM_READ_ANDX";
          goto _L26
_L7:
        s1 = "SMB_COM_CLOSE";
          goto _L26
_L18:
        s1 = "SMB_COM_WRITE_ANDX";
          goto _L26
_L5:
        s1 = "SMB_COM_CREATE_DIRECTORY";
          goto _L26
_L2:
        s1 = "SMB_COM_NT_TRANSACT";
          goto _L26
        s1 = "SMB_COM_NT_TRANSACT_SECONDARY";
          goto _L26
    }

}
