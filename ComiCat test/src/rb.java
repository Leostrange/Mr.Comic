// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.PrintStream;
import java.util.Hashtable;
import java.util.Vector;

public abstract class rb
{
    final class a
    {

        byte a[];
        int b;
        int c;
        final rb d;

        private int a(int ai[])
        {
            int j1 = ai[0];
            byte abyte0[] = a;
            int i1 = j1 + 1;
            j1 = abyte0[j1] & 0xff;
            int l1 = j1;
            int i2 = i1;
            if ((j1 & 0x80) != 0)
            {
                int k1 = j1 & 0x7f;
                j1 = 0;
                do
                {
                    l1 = j1;
                    i2 = i1;
                    if (k1 <= 0)
                    {
                        break;
                    }
                    j1 = (j1 << 8) + (a[i1] & 0xff);
                    i1++;
                    k1--;
                } while (true);
            }
            ai[0] = i2;
            return l1;
        }

        final byte[] a()
        {
            int ai[] = new int[1];
            ai[0] = b + 1;
            int i1 = a(ai);
            int j1 = ai[0];
            ai = new byte[i1];
            System.arraycopy(a, j1, ai, 0, ai.length);
            return ai;
        }

        final a[] b()
        {
            int k1 = a[b];
            Object aobj[] = new int[1];
            aobj[0] = b + 1;
            int i1 = a(((int []) (aobj)));
            if (k1 == 5)
            {
                return new a[0];
            }
            k1 = aobj[0];
            Vector vector = new Vector();
            int l1;
            int i2;
            int j2;
            for (; i1 > 0; i1 = i1 - 1 - (j2 - l1) - i2)
            {
                l1 = k1 + 1;
                aobj[0] = l1;
                i2 = a(((int []) (aobj)));
                j2 = aobj[0];
                vector.addElement(d. new a(a, l1 - 1, (j2 - l1) + 1 + i2));
                k1 = j2 + i2;
            }

            aobj = new a[vector.size()];
            for (int j1 = 0; j1 < vector.size(); j1++)
            {
                aobj[j1] = (a)vector.elementAt(j1);
            }

            return ((a []) (aobj));
        }

        a(byte abyte0[])
        {
            this(abyte0, 0, abyte0.length);
        }

        private a(byte abyte0[], int i1, int j1)
        {
            d = rb.this;
            super();
            a = abyte0;
            b = i1;
            c = j1;
            if (i1 + j1 > abyte0.length)
            {
                throw new b();
            } else
            {
                return;
            }
        }
    }

    final class b extends Exception
    {

        final rb a;

        b()
        {
            a = rb.this;
            super();
        }
    }


    static byte d[][] = {
        si.a("Proc-Type: 4,ENCRYPTED"), si.a("DEK-Info: DES-EDE3-CBC,")
    };
    private static final byte g[] = si.a("\n");
    private static byte k[] = si.a(" ");
    private static final String n[] = {
        "PuTTY-User-Key-File-2: ", "Encryption: ", "Comment: ", "Public-Lines: "
    };
    private static final String o[] = {
        "Private-Lines: "
    };
    private static final String p[] = {
        "Private-MAC: "
    };
    int a;
    protected String b;
    qw c;
    protected boolean e;
    protected byte f[];
    private ql h;
    private qp i;
    private byte j[];
    private byte l[];
    private byte m[];

    public rb(qw qw1)
    {
        a = 0;
        b = "no comment";
        c = null;
        e = false;
        f = null;
        l = null;
        m = null;
        c = qw1;
    }

    private static byte a(byte byte0)
    {
        if (48 <= byte0 && byte0 <= 57)
        {
            return (byte)(byte0 - 48);
        } else
        {
            return (byte)((byte0 - 97) + 10);
        }
    }

    static int a(int i1)
    {
        int j1;
        int k1;
        boolean flag;
        j1 = 1;
        flag = true;
        k1 = i1;
        if (i1 > 127) goto _L2; else goto _L1
_L1:
        i1 = ((flag) ? 1 : 0);
_L4:
        return i1;
_L2:
        do
        {
            i1 = j1;
            if (k1 <= 0)
            {
                continue;
            }
            k1 >>>= 8;
            j1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    static int a(byte abyte0[], byte byte0, int i1, byte abyte1[])
    {
        abyte0[i1] = byte0;
        i1 = a(abyte0, i1 + 1, abyte1.length);
        System.arraycopy(abyte1, 0, abyte0, i1, abyte1.length);
        return i1 + abyte1.length;
    }

    static int a(byte abyte0[], int i1)
    {
        abyte0[0] = 48;
        return a(abyte0, 1, i1);
    }

    static int a(byte abyte0[], int i1, int j1)
    {
        int k1 = a(j1) - 1;
        if (k1 != 0) goto _L2; else goto _L1
_L1:
        k1 = i1 + 1;
        abyte0[i1] = (byte)j1;
_L4:
        return k1;
_L2:
        int i2 = i1 + 1;
        abyte0[i1] = (byte)(k1 | 0x80);
        int l1 = i2 + k1;
        i1 = k1;
        do
        {
            k1 = l1;
            if (i1 <= 0)
            {
                continue;
            }
            abyte0[(i2 + i1) - 1] = (byte)(j1 & 0xff);
            j1 >>>= 8;
            i1--;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    static int a(byte abyte0[], int i1, byte abyte1[])
    {
        abyte0[i1] = 2;
        i1 = a(abyte0, i1 + 1, abyte1.length);
        System.arraycopy(abyte1, 0, abyte0, i1, abyte1.length);
        return i1 + abyte1.length;
    }

    public static rb a(qw qw1, byte abyte0[])
    {
        byte abyte1[] = new byte[8];
        if (abyte0 == null || abyte0.length <= 11 || abyte0[0] != 0 || abyte0[1] != 0 || abyte0[2] != 0 || abyte0[3] != 7 && abyte0[3] != 19) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj2;
        obj = new qa(abyte0);
        ((qa) (obj)).b(abyte0.length);
        obj2 = new String(((qa) (obj)).g());
        obj.d = 0;
        if (!((String) (obj2)).equals("ssh-rsa")) goto _L4; else goto _L3
_L3:
        obj = rf.a(qw1, ((qa) (obj)));
_L6:
        return ((rb) (obj));
_L4:
        if (((String) (obj2)).equals("ssh-dss"))
        {
            return rc.a(qw1, ((qa) (obj)));
        }
        if (((String) (obj2)).equals("ecdsa-sha2-nistp256") || ((String) (obj2)).equals("ecdsa-sha2-nistp384") || ((String) (obj2)).equals("ecdsa-sha2-nistp512"))
        {
            return rd.a(qw1, ((qa) (obj)));
        } else
        {
            throw new qy((new StringBuilder("privatekey: invalid key ")).append(new String(abyte0, 4, 7)).toString());
        }
_L2:
        if (abyte0 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = b(qw1, abyte0);
        obj = obj2;
        if (obj2 != null) goto _L6; else goto _L5
_L5:
        if (abyte0 == null) goto _L8; else goto _L7
_L7:
        int i2 = abyte0.length;
          goto _L9
_L16:
        int i1;
        int j1 = i1;
        if (i1 >= i2) goto _L11; else goto _L10
_L10:
        if (abyte0[i1] != 66 || i1 + 3 >= i2 || abyte0[i1 + 1] != 69 || abyte0[i1 + 2] != 71 || abyte0[i1 + 3] != 73) goto _L13; else goto _L12
_L12:
        byte abyte2[];
        int k1;
        int l1;
        int j2;
        byte byte0;
        k1 = i1 + 6;
        if (k1 + 2 >= i2)
        {
            try
            {
                throw new qy((new StringBuilder("invalid privatekey: ")).append(abyte0).toString());
            }
            // Misplaced declaration of an exception variable
            catch (qw qw1) { }
            qa qa1;
            if (qw1 instanceof qy)
            {
                throw (qy)qw1;
            } else
            {
                throw new qy(qw1.toString(), qw1);
            }
        }
          goto _L14
_L55:
        if (abyte0[k1] == 82 && abyte0[k1 + 1] == 83 && abyte0[k1 + 2] == 65)
        {
            i1 = 2;
            j1 = l1;
        } else
        if (abyte0[k1] == 69 && abyte0[k1 + 1] == 67)
        {
            i1 = 3;
            j1 = l1;
        } else
        if (abyte0[k1] == 83 && abyte0[k1 + 1] == 83 && abyte0[k1 + 2] == 72)
        {
            i1 = 4;
            j1 = 1;
        } else
        {
            if (k1 + 6 >= i2 || abyte0[k1] != 80 || abyte0[k1 + 1] != 82 || abyte0[k1 + 2] != 73 || abyte0[k1 + 3] != 86 || abyte0[k1 + 4] != 65 || abyte0[k1 + 5] != 84 || abyte0[k1 + 6] != 69)
            {
                continue; /* Loop/switch isn't completed */
            }
            i1 = 4;
            j1 = 3;
            flag = false;
            k1 += 3;
        }
          goto _L15
_L57:
        throw new qy((new StringBuilder("invalid privatekey: ")).append(abyte0).toString());
_L13:
        if (abyte0[i1] != 65 || i1 + 7 >= i2 || abyte0[i1 + 1] != 69 || abyte0[i1 + 2] != 83 || abyte0[i1 + 3] != 45 || abyte0[i1 + 4] != 50 || abyte0[i1 + 5] != 53 || abyte0[i1 + 6] != 54 || abyte0[i1 + 7] != 45)
        {
            break MISSING_BLOCK_LABEL_560;
        }
        if (!ry.c(qw.a("aes256-cbc")))
        {
            break MISSING_BLOCK_LABEL_536;
        }
        obj2 = (ql)(ql)Class.forName(qw.a("aes256-cbc")).newInstance();
        abyte1 = new byte[((ql) (obj2)).a()];
        i1 += 8;
          goto _L16
        throw new qy((new StringBuilder("privatekey: aes256-cbc is not available ")).append(abyte0).toString());
        if (abyte0[i1] != 65 || i1 + 7 >= i2 || abyte0[i1 + 1] != 69 || abyte0[i1 + 2] != 83 || abyte0[i1 + 3] != 45 || abyte0[i1 + 4] != 49 || abyte0[i1 + 5] != 57 || abyte0[i1 + 6] != 50 || abyte0[i1 + 7] != 45)
        {
            break MISSING_BLOCK_LABEL_731;
        }
        if (!ry.c(qw.a("aes192-cbc")))
        {
            break MISSING_BLOCK_LABEL_707;
        }
        obj2 = (ql)(ql)Class.forName(qw.a("aes192-cbc")).newInstance();
        abyte1 = new byte[((ql) (obj2)).a()];
        i1 += 8;
          goto _L16
        throw new qy((new StringBuilder("privatekey: aes192-cbc is not available ")).append(abyte0).toString());
        if (abyte0[i1] != 65 || i1 + 7 >= i2 || abyte0[i1 + 1] != 69 || abyte0[i1 + 2] != 83 || abyte0[i1 + 3] != 45 || abyte0[i1 + 4] != 49 || abyte0[i1 + 5] != 50 || abyte0[i1 + 6] != 56 || abyte0[i1 + 7] != 45) goto _L18; else goto _L17
_L17:
        if (!ry.c(qw.a("aes128-cbc")))
        {
            break MISSING_BLOCK_LABEL_878;
        }
        obj2 = (ql)(ql)Class.forName(qw.a("aes128-cbc")).newInstance();
        abyte1 = new byte[((ql) (obj2)).a()];
        i1 += 8;
          goto _L16
        throw new qy((new StringBuilder("privatekey: aes128-cbc is not available ")).append(abyte0).toString());
_L20:
        if (j1 >= abyte1.length) goto _L16; else goto _L19
_L19:
        j2 = i1 + 1;
        byte0 = a(abyte0[i1]);
        i1 = j2 + 1;
        abyte1[j1] = (byte)((a(abyte0[j2]) & 0xf) + (byte0 << 4 & 0xf0));
        j1++;
          goto _L20
_L59:
        if (abyte0[i1] != 13)
        {
            break MISSING_BLOCK_LABEL_1003;
        }
        if (i1 + 1 >= abyte0.length || abyte0[i1 + 1] != 10)
        {
            break MISSING_BLOCK_LABEL_1003;
        }
        i1++;
          goto _L16
        if (abyte0[i1] != 10) goto _L22; else goto _L21
_L21:
        if (i1 + 1 >= abyte0.length) goto _L22; else goto _L23
_L23:
        if (abyte0[i1 + 1] != 10) goto _L25; else goto _L24
_L24:
        i1 += 2;
_L33:
        if (abyte0 == null) goto _L27; else goto _L26
_L26:
        if (k1 != 0) goto _L29; else goto _L28
_L28:
        throw new qy((new StringBuilder("invalid privatekey: ")).append(abyte0).toString());
_L25:
        if (abyte0[i1 + 1] != 13) goto _L31; else goto _L30
_L30:
        if (i1 + 2 >= abyte0.length || abyte0[i1 + 2] != 10) goto _L31; else goto _L32
_L32:
        i1 += 3;
          goto _L33
_L60:
        j2 = byte0;
        if (j1 >= abyte0.length) goto _L35; else goto _L34
_L34:
        j2 = byte0;
        if (abyte0[j1] == 10) goto _L35; else goto _L36
_L36:
        if (abyte0[j1] != 58) goto _L38; else goto _L37
_L37:
        j2 = 1;
          goto _L35
_L63:
        throw new qy((new StringBuilder("invalid privatekey: ")).append(abyte0).toString());
_L64:
        abyte2 = new byte[j1 - i1];
        System.arraycopy(abyte0, i1, abyte2, 0, abyte2.length);
        i1 = abyte2.length;
        j1 = 0;
          goto _L39
_L67:
        System.arraycopy(abyte2, j1 + 1, abyte2, j1 - j2, i1 - (j1 + 1));
          goto _L40
_L66:
        if (j1 + 0 <= 0) goto _L42; else goto _L41
_L41:
        obj1 = si.a(abyte2, j1 + 0);
_L52:
        si.b(abyte2);
_L53:
        if (obj1 == null) goto _L44; else goto _L43
_L43:
        if (obj1.length <= 4 || obj1[0] != 63 || obj1[1] != 111 || obj1[2] != -7 || obj1[3] != -21) goto _L44; else goto _L45
_L45:
        qa1 = new qa(((byte []) (obj1)));
        qa1.b();
        qa1.b();
        qa1.g();
        abyte2 = si.a(qa1.g());
        if (abyte2.equals("3des-cbc"))
        {
            qa1.b();
            qw1 = new byte[obj1.length - qa1.d];
            qa1.a(qw1, qw1.length);
            throw new qy((new StringBuilder("unknown privatekey format: ")).append(abyte0).toString());
        }
        if (!abyte2.equals("none")) goto _L44; else goto _L46
_L46:
        qa1.b();
        qa1.b();
        flag = false;
        abyte2 = new byte[obj1.length - qa1.d];
        qa1.a(abyte2, abyte2.length);
_L51:
        obj1 = null;
        if (k1 != 1) goto _L48; else goto _L47
_L47:
        obj1 = new rc(qw1);
_L50:
        if (obj1 != null)
        {
            obj1.e = flag;
            obj1.m = null;
            obj1.a = l1;
            obj1.b = "";
            obj1.h = ((ql) (obj2));
            if (!flag)
            {
                break; /* Loop/switch isn't completed */
            }
            obj1.e = true;
            obj1.l = abyte1;
            obj1.f = abyte2;
        }
        return ((rb) (obj1));
_L48:
        if (k1 == 2)
        {
            obj1 = new rf(qw1);
        } else
        if (k1 == 3)
        {
            obj1 = new rd(qw1);
        } else
        if (l1 == 3)
        {
            obj1 = new re(qw1);
        }
        if (true) goto _L50; else goto _L49
_L49:
        if (((rb) (obj1)).b(abyte2))
        {
            obj1.e = false;
            return ((rb) (obj1));
        } else
        {
            throw new qy((new StringBuilder("invalid privatekey: ")).append(abyte0).toString());
        }
_L44:
        abyte2 = ((byte []) (obj1));
        if (true) goto _L51; else goto _L42
_L42:
        obj1 = null;
          goto _L52
_L27:
        obj1 = null;
          goto _L53
_L11:
        i1 = j1;
          goto _L33
_L9:
        i1 = 0;
        while (i1 < i2 && (abyte0[i1] != 45 || i1 + 4 >= i2 || abyte0[i1 + 1] != 45 || abyte0[i1 + 2] != 45 || abyte0[i1 + 3] != 45 || abyte0[i1 + 4] != 45)) 
        {
            i1++;
        }
        k1 = 0;
        obj2 = null;
        flag = true;
        l1 = 0;
          goto _L16
_L8:
        i2 = 0;
          goto _L9
_L14:
        if (abyte0[k1] != 68 || abyte0[k1 + 1] != 83 || abyte0[k1 + 2] != 65) goto _L55; else goto _L54
_L54:
        i1 = 1;
        j1 = l1;
_L15:
        l1 = k1 + 3;
        k1 = i1;
        i1 = l1;
        l1 = j1;
          goto _L16
        if (k1 + 8 >= i2 || abyte0[k1] != 69 || abyte0[k1 + 1] != 78 || abyte0[k1 + 2] != 67 || abyte0[k1 + 3] != 82 || abyte0[k1 + 4] != 89 || abyte0[k1 + 5] != 80 || abyte0[k1 + 6] != 84 || abyte0[k1 + 7] != 69 || abyte0[k1 + 8] != 68) goto _L57; else goto _L56
_L56:
        i1 = 4;
        j1 = 3;
        k1 += 5;
          goto _L15
_L18:
        if (abyte0[i1] != 67 || i1 + 3 >= i2 || abyte0[i1 + 1] != 66 || abyte0[i1 + 2] != 67 || abyte0[i1 + 3] != 44) goto _L59; else goto _L58
_L58:
        i1 += 4;
        j1 = 0;
          goto _L20
_L31:
        byte0 = 0;
        j1 = i1 + 1;
          goto _L60
_L35:
        if (j2 != 0) goto _L22; else goto _L61
_L61:
        i1++;
        j1 = i1;
        if (l1 == 3) goto _L11; else goto _L62
_L62:
        flag = false;
          goto _L33
_L38:
        j1++;
          goto _L60
_L22:
        i1++;
          goto _L16
_L29:
        for (j1 = i1; j1 < i2 && abyte0[j1] != 45; j1++) { }
        if (i2 - j1 != 0 && j1 - i1 != 0) goto _L64; else goto _L63
_L39:
        if (j1 >= i1) goto _L66; else goto _L65
_L65:
        if (abyte2[j1] != 10)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (abyte2[j1 - 1] == 13)
        {
            i2 = 1;
        } else
        {
            i2 = 0;
        }
        if (i2 != 0)
        {
            j2 = 1;
        } else
        {
            j2 = 0;
        }
          goto _L67
_L40:
        j2 = i1;
        Object obj1;
        boolean flag;
        if (i2 != 0)
        {
            j2 = i1 - 1;
        }
        i1 = j2 - 1;
          goto _L39
        if (abyte2[j1] == 45) goto _L66; else goto _L68
_L68:
        j1++;
          goto _L39
    }

    private static boolean a(qa qa1, Hashtable hashtable)
    {
        String s;
        byte abyte0[];
        int i1;
        abyte0 = qa1.b;
        i1 = qa1.c;
        int j1 = i1;
        do
        {
            if (j1 >= abyte0.length || abyte0[j1] == 13)
            {
                break MISSING_BLOCK_LABEL_234;
            }
            if (abyte0[j1] == 58)
            {
                s = new String(abyte0, i1, j1 - i1);
                j1++;
                i1 = j1;
                if (j1 < abyte0.length)
                {
                    i1 = j1;
                    if (abyte0[j1] == 32)
                    {
                        i1 = j1 + 1;
                    }
                }
                break MISSING_BLOCK_LABEL_99;
            }
            j1++;
        } while (true);
_L6:
        int k1;
        if (s == null)
        {
            return false;
        }
        k1 = i1;
_L3:
        if (k1 >= abyte0.length)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        if (abyte0[k1] != 13) goto _L2; else goto _L1
_L1:
        String s1;
        s1 = new String(abyte0, i1, k1 - i1);
        k1++;
        i1 = k1;
        if (k1 < abyte0.length)
        {
            i1 = k1;
            if (abyte0[k1] == 10)
            {
                i1 = k1 + 1;
            }
        }
_L4:
        if (s1 != null)
        {
            hashtable.put(s, s1);
            qa1.c = i1;
        }
        return s != null && s1 != null;
_L2:
        k1++;
          goto _L3
        s1 = null;
          goto _L4
        s = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static byte[] a(qa qa1, int i1)
    {
        byte abyte1[];
        byte abyte3[];
        int j1;
        int k1;
        abyte3 = qa1.b;
        int l1 = qa1.c;
        abyte1 = null;
        j1 = l1;
        k1 = i1;
        i1 = l1;
_L7:
        if (k1 <= 0) goto _L2; else goto _L1
_L1:
        int i2;
        if (abyte3.length <= i1)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        i2 = i1 + 1;
        if (abyte3[i1] != 13) goto _L4; else goto _L3
_L3:
        if (abyte1 != null) goto _L6; else goto _L5
_L5:
        byte abyte0[];
        abyte0 = new byte[i2 - j1 - 1];
        System.arraycopy(abyte3, j1, abyte0, 0, i2 - j1 - 1);
        j1 = i2;
_L9:
        i1 = j1;
        if (abyte3[j1] == 10)
        {
            i1 = j1 + 1;
        }
        j1 = i1;
        k1--;
        abyte1 = abyte0;
          goto _L7
_L6:
        byte abyte2[];
        abyte2 = new byte[(abyte1.length + i2) - j1 - 1];
        System.arraycopy(abyte1, 0, abyte2, 0, abyte1.length);
        System.arraycopy(abyte3, j1, abyte2, abyte1.length, i2 - j1 - 1);
        i1 = 0;
_L10:
        j1 = i2;
        abyte0 = abyte2;
        if (i1 >= abyte1.length) goto _L9; else goto _L8
_L8:
        abyte1[i1] = 0;
        i1++;
          goto _L10
_L2:
        if (abyte1 != null)
        {
            qa1.c = j1;
        }
        return abyte1;
_L4:
        i1 = i2;
          goto _L1
        abyte0 = abyte1;
        j1 = i1;
          goto _L9
    }

    private static rb b(qw qw1, byte abyte0[])
    {
        qa qa1;
        Object obj;
        qa1 = new qa(abyte0);
        for (abyte0 = new Hashtable(); a(qa1, abyte0);) { }
        obj = (String)abyte0.get("PuTTY-User-Key-File-2");
        if (obj != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        byte abyte1[];
        byte abyte2[];
        abyte2 = a(qa1, Integer.parseInt((String)abyte0.get("Public-Lines")));
        while (a(qa1, abyte0)) ;
        byte abyte3[] = a(qa1, Integer.parseInt((String)abyte0.get("Private-Lines")));
        while (a(qa1, abyte0)) ;
        abyte1 = si.a(abyte3, abyte3.length);
        abyte2 = si.a(abyte2, abyte2.length);
        if (!((String) (obj)).equals("ssh-rsa"))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = new qa(abyte2);
        ((qa) (obj)).b(abyte2.length);
        abyte2 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte2, abyte2.length);
        abyte2 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte2, abyte2.length);
        abyte3 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte3, abyte3.length);
        qw1 = new rf(qw1, abyte3, abyte2, null);
_L6:
        byte abyte4[];
        byte abyte5[];
        byte abyte6[];
        boolean flag;
        if (!abyte0.get("Encryption").equals("none"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        qw1.e = flag;
        qw1.a = 2;
        qw1.b = (String)abyte0.get("Comment");
        if (!((rb) (qw1)).e)
        {
            break MISSING_BLOCK_LABEL_471;
        }
        if (!ry.c(qw.a("aes256-cbc"))) goto _L4; else goto _L3
_L3:
        try
        {
            qw1.h = (ql)(ql)Class.forName(qw.a("aes256-cbc")).newInstance();
            qw1.l = new byte[((rb) (qw1)).h.a()];
        }
        // Misplaced declaration of an exception variable
        catch (qw qw1)
        {
            throw new qy("The cipher 'aes256-cbc' is required, but it is not available.");
        }
        qw1.f = abyte1;
_L7:
        return qw1;
        if (!((String) (obj)).equals("ssh-dss")) goto _L1; else goto _L5
_L5:
        obj = new qa(abyte2);
        ((qa) (obj)).b(abyte2.length);
        abyte2 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte2, abyte2.length);
        abyte2 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte2, abyte2.length);
        abyte4 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte4, abyte4.length);
        abyte5 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte5, abyte5.length);
        abyte6 = new byte[((qa) (obj)).b()];
        ((qa) (obj)).a(abyte6, abyte6.length);
        qw1 = new rc(qw1, abyte2, abyte4, abyte5, abyte6, null);
          goto _L6
_L4:
        throw new qy("The cipher 'aes256-cbc' is required, but it is not available.");
        qw1.f = abyte1;
        qw1.b(abyte1);
          goto _L7
    }

    private byte[] d(byte abyte0[])
    {
        try
        {
            si.b(g());
            abyte0 = new byte[abyte0.length];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return null;
        }
        return abyte0;
    }

    private qp e()
    {
        try
        {
            i = (qp)(qp)Class.forName(qw.a("md5")).newInstance();
        }
        catch (Exception exception) { }
        return i;
    }

    private ql f()
    {
        try
        {
            h = (ql)(ql)Class.forName(qw.a("3des-cbc")).newInstance();
        }
        catch (Exception exception) { }
        return h;
    }

    private byte[] g()
    {
        boolean flag1;
        boolean flag2;
        flag1 = false;
        flag2 = false;
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        Object obj1;
        int j1;
        int k1;
        if (h == null)
        {
            h = f();
        }
        if (i == null)
        {
            i = e();
        }
        obj1 = new byte[h.b()];
        j1 = i.a();
        k1 = obj1.length / j1;
        Object obj;
        byte abyte0[];
        byte abyte1[];
        byte abyte2[];
        qp qp1;
        byte abyte3[];
        int i1;
        if (obj1.length % j1 == 0)
        {
            i1 = 0;
        } else
        {
            i1 = j1;
        }
        abyte1 = new byte[i1 + k1 * j1];
        obj = obj1;
        if (a != 0) goto _L2; else goto _L1
_L1:
        i1 = ((flag) ? 1 : 0);
_L4:
        obj = obj1;
        if (i1 + j1 > abyte1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = obj1;
        abyte2 = i.b();
        obj = obj1;
        System.arraycopy(abyte2, 0, abyte1, i1, abyte2.length);
        obj = obj1;
        i1 += abyte2.length;
        if (true) goto _L4; else goto _L3
_L3:
        obj = obj1;
        System.arraycopy(abyte1, 0, obj1, 0, obj1.length);
        obj = obj1;
_L11:
        this;
        JVM INSTR monitorexit ;
        return ((byte []) (obj));
_L2:
        obj = obj1;
        if (a != 1)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        i1 = ((flag1) ? 1 : 0);
_L6:
        obj = obj1;
        if (i1 + j1 > abyte1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = obj1;
        abyte2 = i.b();
        obj = obj1;
        System.arraycopy(abyte2, 0, abyte1, i1, abyte2.length);
        obj = obj1;
        i1 += abyte2.length;
        if (true) goto _L6; else goto _L5
_L5:
        obj = obj1;
        System.arraycopy(abyte1, 0, obj1, 0, obj1.length);
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        obj1;
        System.err.println(obj1);
        continue; /* Loop/switch isn't completed */
        obj;
        throw obj;
        obj = obj1;
        abyte1 = ((byte []) (obj1));
        if (a != 2) goto _L8; else goto _L7
_L7:
        obj = obj1;
        qp1 = (qp)(qp)Class.forName(qw.a("sha-1")).newInstance();
        obj = obj1;
        abyte3 = new byte[4];
        obj = obj1;
        abyte0 = new byte[40];
        i1 = ((flag2) ? 1 : 0);
_L9:
        abyte1 = abyte0;
        if (i1 >= 2)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte3[3] = (byte)i1;
        obj = abyte0;
        System.arraycopy(qp1.b(), 0, abyte0, i1 * 20, 20);
        i1++;
        if (true) goto _L9; else goto _L8
_L8:
        obj = abyte1;
        if (true) goto _L11; else goto _L10
_L10:
    }

    final void a(rb rb1)
    {
        m = rb1.m;
        a = rb1.a;
        b = rb1.b;
        h = rb1.h;
    }

    abstract byte[] a();

    public abstract byte[] a(byte abyte0[]);

    abstract boolean b(byte abyte0[]);

    public byte[] b()
    {
        return m;
    }

    public final boolean c()
    {
        return e;
    }

    public boolean c(byte abyte0[])
    {
        if (e) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (abyte0 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (e)
        {
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        byte abyte1[] = new byte[abyte0.length];
        System.arraycopy(abyte0, 0, abyte1, 0, abyte1.length);
        abyte0 = d(f);
        si.b(abyte1);
        if (b(abyte0))
        {
            e = false;
        }
        if (e)
        {
            return false;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void d()
    {
        si.b(j);
    }

    public void finalize()
    {
        d();
    }

}
