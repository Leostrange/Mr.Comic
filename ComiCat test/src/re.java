// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.math.BigInteger;
import java.util.Vector;

public final class re extends rb
{

    private static final byte g[] = {
        42, -122, 72, -122, -9, 13, 1, 1, 1
    };
    private static final byte h[] = {
        42, -122, 72, -50, 56, 4, 1
    };
    private static final byte i[] = {
        42, -122, 72, -122, -9, 13, 1, 5, 13
    };
    private static final byte j[] = {
        42, -122, 72, -122, -9, 13, 1, 5, 12
    };
    private static final byte k[] = {
        96, -122, 72, 1, 101, 3, 4, 1, 2
    };
    private static final byte l[] = {
        96, -122, 72, 1, 101, 3, 4, 1, 22
    };
    private static final byte m[] = {
        96, -122, 72, 1, 101, 3, 4, 1, 42
    };
    private static final byte n[] = {
        42, -122, 72, -122, -9, 13, 1, 5, 3
    };
    private static final byte p[] = si.a("-----BEGIN DSA PRIVATE KEY-----");
    private static final byte q[] = si.a("-----END DSA PRIVATE KEY-----");
    private rb o;

    public re(qw qw1)
    {
        super(qw1);
        o = null;
    }

    private static ql d(byte abyte0[])
    {
        if (!si.a(abyte0, k)) goto _L2; else goto _L1
_L1:
        abyte0 = "aes128-cbc";
_L3:
        return (ql)(ql)Class.forName(qw.a(abyte0)).newInstance();
_L2:
        if (!si.a(abyte0, l))
        {
            break MISSING_BLOCK_LABEL_46;
        }
        abyte0 = "aes192-cbc";
          goto _L3
        if (si.a(abyte0, m))
        {
            abyte0 = "aes256-cbc";
        } else
        {
            abyte0 = null;
        }
          goto _L3
        abyte0;
        qw.b();
        return null;
    }

    final byte[] a()
    {
        return null;
    }

    public final byte[] a(byte abyte0[])
    {
        return o.a(abyte0);
    }

    final boolean b(byte abyte0[])
    {
        Object obj;
        byte byte0;
        Object aobj[];
        Object aobj1[];
        byte abyte1[];
        int i1;
        try
        {
            obj = new Vector();
            abyte0 = (new rb.a(this, abyte0)).b();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return false;
        }
        byte0 = abyte0[1];
        abyte0 = abyte0[2];
        aobj1 = byte0.b();
        aobj = aobj1[0].a();
        aobj1 = aobj1[1].b();
        if (aobj1.length <= 0) goto _L2; else goto _L1
_L1:
        i1 = 0;
_L3:
        if (i1 >= aobj1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        ((Vector) (obj)).addElement(aobj1[i1].a());
        i1++;
        if (true) goto _L3; else goto _L2
_L2:
        abyte0 = abyte0.a();
        if (!si.a(((byte []) (aobj)), g)) goto _L5; else goto _L4
_L4:
        obj = new rf(c);
        ((rb) (obj)).a(this);
        if (((rb) (obj)).b(abyte0))
        {
            o = ((rb) (obj));
        }
_L7:
        return o != null;
_L5:
        if (!si.a(((byte []) (aobj)), h)) goto _L7; else goto _L6
_L6:
        abyte0 = new rb.a(this, abyte0);
        if (((Vector) (obj)).size() != 0)
        {
            break MISSING_BLOCK_LABEL_362;
        }
        aobj = abyte0.b();
        abyte0 = aobj[1].a();
        aobj = aobj[0].b();
        i1 = 0;
_L9:
        if (i1 >= aobj.length)
        {
            break; /* Loop/switch isn't completed */
        }
        ((Vector) (obj)).addElement(aobj[i1].a());
        i1++;
        if (true) goto _L9; else goto _L8
_L8:
        ((Vector) (obj)).addElement(abyte0);
_L10:
        abyte0 = (byte[])(byte[])((Vector) (obj)).elementAt(0);
        aobj = (byte[])(byte[])((Vector) (obj)).elementAt(1);
        aobj1 = (byte[])(byte[])((Vector) (obj)).elementAt(2);
        obj = (byte[])(byte[])((Vector) (obj)).elementAt(3);
        abyte1 = (new BigInteger(((byte []) (aobj1)))).modPow(new BigInteger(((byte []) (obj))), new BigInteger(abyte0)).toByteArray();
        abyte0 = (new rc(c, abyte0, ((byte []) (aobj)), ((byte []) (aobj1)), abyte1, ((byte []) (obj)))).a();
        obj = new rc(c);
        ((rb) (obj)).a(this);
        if (((rb) (obj)).b(abyte0))
        {
            o = ((rb) (obj));
        }
          goto _L7
        ((Vector) (obj)).addElement(abyte0.a());
          goto _L10
    }

    public final byte[] b()
    {
        return o.b();
    }

    public final boolean c(byte abyte0[])
    {
        if (!c())
        {
            return true;
        }
        if (abyte0 == null)
        {
            return !c();
        }
        byte abyte1[];
        Object aobj[];
        abyte0 = (new rb.a(this, f)).b();
        abyte1 = abyte0[1].a();
        aobj = abyte0[0].b();
        abyte0 = aobj[0].a();
        rb.a a1 = aobj[1];
        if (!si.a(abyte0, i))
        {
            break MISSING_BLOCK_LABEL_162;
        }
        abyte0 = a1.b();
        byte byte0;
        byte0 = abyte0[0];
        abyte0 = abyte0[1];
        byte0 = byte0.b();
        byte0[0].a();
        byte0 = byte0[1].b();
        byte0[0].a();
        Integer.parseInt((new BigInteger(byte0[1].a())).toString());
        abyte0 = abyte0.b();
        byte0 = abyte0[0].a();
        abyte0[1].a();
        if (d(byte0) == null)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_180;
        boolean flag = si.a(abyte0, n);
        return !flag ? false : false;
        abyte0 = ((rk)(rk)Class.forName(qw.a("pbkdf")).newInstance()).a();
_L2:
        if (abyte0 == null)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
        abyte0;
        abyte0 = null;
        if (true) goto _L2; else goto _L1
_L1:
        si.b(abyte0);
        if (!b(new byte[abyte1.length]))
        {
            break MISSING_BLOCK_LABEL_238;
        }
        e = false;
        return true;
        abyte0;
_L4:
        return false;
        abyte0;
        if (true) goto _L4; else goto _L3
_L3:
    }

}
