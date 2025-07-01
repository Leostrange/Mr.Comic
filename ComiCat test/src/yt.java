// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.Arrays;

public final class yt extends yq
{

    private static final int e;
    private static final String f = xj.b("jcifs.smb.client.domain", null);
    private static final String g = xj.b("jcifs.smb.client.username", null);
    private static final String h = xj.b("jcifs.smb.client.password", null);
    private static final String i;
    private static final int j = xj.a("jcifs.smb.lmCompatibility", 3);
    private static final SecureRandom k = new SecureRandom();
    public byte d[];
    private byte l[];
    private byte m[];
    private String n;
    private String o;
    private String p;
    private byte q[];

    public yt()
    {
        d = null;
        q = null;
        super.c = e;
        n = f;
        o = g;
        p = i;
    }

    public yt(ys ys1, String s, String s1, String s2, String s3, int i1)
    {
        d = null;
        q = null;
        String s4;
        int j1;
        if ((((yq) (ys1)).c & 1) != 0)
        {
            j1 = 1;
        } else
        {
            j1 = 2;
        }
        super.c = j1 | 0x200 | i1;
        s4 = s3;
        if (s3 == null)
        {
            s4 = i;
        }
        p = s4;
        n = s1;
        o = s2;
        j;
        JVM INSTR tableswitch 0 5: default 112
    //                   0 139
    //                   1 139
    //                   2 346
    //                   3 363
    //                   4 363
    //                   5 363;
           goto _L1 _L2 _L2 _L3 _L4 _L4 _L4
_L4:
        break MISSING_BLOCK_LABEL_363;
_L1:
        byte abyte0[];
        long l1;
        if (s == null)
        {
            s1 = null;
        } else
        {
            s1 = zl.a(s, ys1.d);
        }
        l = s1;
        m = a(ys1, s);
_L7:
        return;
_L2:
        if ((super.c & 0x80000) == 0) goto _L1; else goto _L5
_L5:
        s1 = new byte[24];
        k.nextBytes(s1);
        Arrays.fill(s1, 8, 24, (byte)0);
        s = zl.a(s);
        s2 = zl.a(s, ys1.d, s1);
        l = s1;
        m = s2;
        if ((super.c & 0x10) != 16) goto _L7; else goto _L6
_L6:
        s2 = new byte[16];
        System.arraycopy(ys1.d, 0, s2, 0, 8);
        System.arraycopy(s1, 0, s2, 8, 8);
        ys1 = new aby();
        ys1.update(s);
        ys1 = new abv(ys1.digest());
        ys1.update(s2);
        ys1 = ys1.digest();
        if ((super.c & 0x40000000) != 0)
        {
            d = new byte[16];
            k.nextBytes(d);
            s = new byte[16];
            (new abz(ys1)).a(d, 0, s, 0);
            q = s;
            return;
        } else
        {
            d = ys1;
            q = d;
            return;
        }
_L3:
        ys1 = a(ys1, s);
        l = ys1;
        m = ys1;
        return;
        s3 = zl.a(s1, s2, s);
        abyte0 = new byte[8];
        k.nextBytes(abyte0);
        if (s1 == null || s2 == null || s == null)
        {
            s = null;
        } else
        {
            s = zl.a(s1, s2, s, ys1.d, abyte0);
        }
        l = s;
        s = new byte[8];
        k.nextBytes(s);
        if (s3 == null)
        {
            ys1 = null;
        } else
        {
            l1 = System.currentTimeMillis();
            ys1 = zl.a(s3, ys1.d, s, (l1 + 0xa9730b66800L) * 10000L, ys1.e);
        }
        m = ys1;
        if ((super.c & 0x10) == 16)
        {
            ys1 = new abv(s3);
            ys1.update(m, 0, 16);
            ys1 = ys1.digest();
            if ((super.c & 0x40000000) != 0)
            {
                d = new byte[16];
                k.nextBytes(d);
                s = new byte[16];
                (new abz(ys1)).a(d, 0, s, 0);
                q = s;
                return;
            } else
            {
                d = ys1;
                q = d;
                return;
            }
        }
          goto _L7
    }

    private static byte[] a(ys ys1, String s)
    {
        if (ys1 == null || s == null)
        {
            return null;
        } else
        {
            return zl.b(s, ys1.d);
        }
    }

    public final byte[] a()
    {
        int i1;
        int j1;
        Object obj;
        byte abyte0[];
        byte abyte1[];
        String s;
        byte abyte2[];
        byte abyte3[];
        byte abyte4[];
        byte abyte5[];
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        try
        {
            k2 = super.c;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalStateException(((IOException) (obj)).getMessage());
        }
        if ((k2 & 1) != 0)
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
          goto _L1
_L29:
        obj = n;
        if (obj == null) goto _L3; else goto _L2
_L2:
        if (((String) (obj)).length() == 0) goto _L3; else goto _L4
_L4:
        if (k1 == 0) goto _L6; else goto _L5
_L5:
        obj = ((String) (obj)).getBytes("UTF-16LE");
          goto _L7
_L36:
        if (abyte0 == null) goto _L9; else goto _L8
_L8:
        i1 = abyte0.length;
_L39:
        obj = o;
        if (obj == null) goto _L11; else goto _L10
_L10:
        if (((String) (obj)).length() == 0) goto _L11; else goto _L12
_L12:
        if (k1 == 0) goto _L14; else goto _L13
_L13:
        obj = ((String) (obj)).getBytes("UTF-16LE");
          goto _L15
_L35:
        if (abyte2 == null)
        {
            break MISSING_BLOCK_LABEL_462;
        }
        j1 = abyte2.length;
_L40:
        obj = p;
        if (obj == null) goto _L17; else goto _L16
_L16:
        if (((String) (obj)).length() == 0) goto _L17; else goto _L18
_L18:
        if (k1 == 0) goto _L20; else goto _L19
_L19:
        obj = ((String) (obj)).getBytes("UTF-16LE");
_L30:
        if (obj == null) goto _L22; else goto _L21
_L21:
        k1 = obj.length;
_L31:
        abyte1 = l;
        if (abyte1 == null) goto _L24; else goto _L23
_L23:
        l1 = abyte1.length;
_L32:
        abyte3 = m;
        if (abyte3 == null) goto _L26; else goto _L25
_L25:
        i2 = abyte3.length;
_L33:
        abyte4 = q;
        if (abyte4 == null) goto _L28; else goto _L27
_L27:
        j2 = abyte4.length;
_L34:
        abyte5 = new byte[j2 + (i1 + 64 + j1 + k1 + l1 + i2)];
        System.arraycopy(a, 0, abyte5, 0, 8);
        a(abyte5, 8, 3);
        a(abyte5, 12, 64, abyte1);
        l1 += 64;
        a(abyte5, 20, l1, abyte3);
        l1 = i2 + l1;
        a(abyte5, 28, l1, abyte0);
        i1 = l1 + i1;
        a(abyte5, 36, i1, abyte2);
        i1 += j1;
        a(abyte5, 44, i1, ((byte []) (obj)));
        a(abyte5, 52, i1 + k1, abyte4);
        a(abyte5, 60, k2);
        return abyte5;
_L38:
        s = yq.b;
          goto _L29
_L6:
        obj = ((String) (obj)).getBytes(s);
          goto _L7
_L14:
        obj = ((String) (obj)).toUpperCase().getBytes(s);
          goto _L15
_L20:
        obj = ((String) (obj)).toUpperCase().getBytes(s);
          goto _L30
_L22:
        k1 = 0;
          goto _L31
_L24:
        l1 = 0;
          goto _L32
_L26:
        i2 = 0;
          goto _L33
_L28:
        j2 = 0;
          goto _L34
_L17:
        obj = null;
          goto _L30
_L11:
        abyte2 = null;
          goto _L35
_L3:
        abyte0 = null;
          goto _L36
_L1:
        if (k1 == 0) goto _L38; else goto _L37
_L37:
        s = null;
          goto _L29
_L7:
        abyte0 = ((byte []) (obj));
          goto _L36
_L15:
        abyte2 = ((byte []) (obj));
          goto _L35
_L9:
        i1 = 0;
          goto _L39
        j1 = 0;
          goto _L40
    }

    public final String toString()
    {
        Object obj2 = o;
        String s = n;
        String s1 = p;
        Object obj = l;
        Object obj1 = m;
        byte abyte0[] = q;
        obj2 = (new StringBuilder("Type3Message[domain=")).append(s).append(",user=").append(((String) (obj2))).append(",workstation=").append(s1).append(",lmResponse=");
        if (obj == null)
        {
            obj = "null";
        } else
        {
            obj = (new StringBuilder("<")).append(obj.length).append(" bytes>").toString();
        }
        obj2 = ((StringBuilder) (obj2)).append(((String) (obj))).append(",ntResponse=");
        if (obj1 == null)
        {
            obj = "null";
        } else
        {
            obj = (new StringBuilder("<")).append(obj1.length).append(" bytes>").toString();
        }
        obj1 = ((StringBuilder) (obj2)).append(((String) (obj))).append(",sessionKey=");
        if (abyte0 == null)
        {
            obj = "null";
        } else
        {
            obj = (new StringBuilder("<")).append(abyte0.length).append(" bytes>").toString();
        }
        return ((StringBuilder) (obj1)).append(((String) (obj))).append(",flags=0x").append(abw.a(super.c, 8)).append("]").toString();
    }

    static 
    {
        int i1 = 1;
        String s;
        if (!xj.a("jcifs.smb.client.useUnicode", true))
        {
            i1 = 2;
        }
        e = i1 | 0x200;
        try
        {
            s = yk.a().f();
        }
        catch (UnknownHostException unknownhostexception)
        {
            unknownhostexception = null;
        }
        i = s;
    }
}
