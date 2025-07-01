// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Principal;
import java.util.Arrays;
import java.util.Random;

public final class zl
    implements Serializable, Principal
{

    static String a;
    static String b;
    static String c;
    public static final zl d = new zl("", "", "");
    static final zl e = new zl("", "", "");
    static final zl f = new zl("?", "GUEST", "");
    static final zl g = new zl(null);
    private static final int p = xj.a("jcifs.smb.lmCompatibility", 3);
    private static final Random q = new Random();
    private static abx r = abx.a();
    private static final byte s[] = {
        75, 71, 83, 33, 64, 35, 36, 37
    };
    String h;
    String i;
    String j;
    byte k[];
    byte l[];
    boolean m;
    byte n[];
    byte o[];

    public zl(String s1)
    {
        m = false;
        n = null;
        o = null;
        j = null;
        i = null;
        h = null;
        if (s1 == null) goto _L2; else goto _L1
_L1:
        String s2 = b(s1);
        s1 = s2;
_L8:
        int i1;
        int j1;
        int l1;
        l1 = s1.length();
        j1 = 0;
        i1 = 0;
_L4:
        int k1;
        char c1;
        if (i1 >= l1)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        c1 = s1.charAt(i1);
        if (c1 != ';')
        {
            break; /* Loop/switch isn't completed */
        }
        h = s1.substring(0, i1);
        k1 = i1 + 1;
_L6:
        i1++;
        j1 = k1;
        if (true) goto _L4; else goto _L3
_L3:
        k1 = j1;
        if (c1 != ':') goto _L6; else goto _L5
_L5:
        j = s1.substring(i1 + 1);
        i = s1.substring(j1, i1);
_L2:
        a();
        if (h == null)
        {
            h = a;
        }
        if (i == null)
        {
            i = b;
        }
        if (j == null)
        {
            j = c;
        }
        return;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public zl(String s1, String s2, String s3)
    {
        String s4;
        String s5;
        m = false;
        n = null;
        o = null;
        s4 = s1;
        s5 = s2;
        if (s2 == null) goto _L2; else goto _L1
_L1:
        int i1 = s2.indexOf('@');
        if (i1 <= 0) goto _L4; else goto _L3
_L3:
        s4 = s2.substring(i1 + 1);
        s5 = s2.substring(0, i1);
_L2:
        h = s4;
        i = s5;
        j = s3;
        a();
        if (s4 == null)
        {
            h = a;
        }
        if (s5 == null)
        {
            i = b;
        }
        if (s3 == null)
        {
            j = c;
        }
        return;
_L4:
        int j1 = s2.indexOf('\\');
        s4 = s1;
        s5 = s2;
        if (j1 > 0)
        {
            s4 = s2.substring(0, j1);
            s5 = s2.substring(j1 + 1);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    static void a()
    {
        if (a != null)
        {
            return;
        } else
        {
            a = xj.b("jcifs.smb.client.domain", "?");
            b = xj.b("jcifs.smb.client.username", "GUEST");
            c = xj.b("jcifs.smb.client.password", "");
            return;
        }
    }

    public static byte[] a(String s1)
    {
        if (s1 == null)
        {
            throw new RuntimeException("Password parameter is required");
        }
        try
        {
            aby aby1 = new aby();
            aby1.update(s1.getBytes("UTF-16LE"));
            s1 = aby1.digest();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new RuntimeException(s1.getMessage());
        }
        return s1;
    }

    public static byte[] a(String s1, String s2, String s3)
    {
        try
        {
            aby aby1 = new aby();
            aby1.update(s3.getBytes("UTF-16LE"));
            s3 = new abv(aby1.digest());
            s3.update(s2.toUpperCase().getBytes("UTF-16LE"));
            s3.update(s1.getBytes("UTF-16LE"));
            s1 = s3.digest();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new RuntimeException(s1.getMessage());
        }
        return s1;
    }

    public static byte[] a(String s1, String s2, String s3, byte abyte0[], byte abyte1[])
    {
        byte abyte2[];
        try
        {
            abyte2 = new byte[24];
            aby aby1 = new aby();
            aby1.update(s3.getBytes("UTF-16LE"));
            s3 = new abv(aby1.digest());
            s3.update(s2.toUpperCase().getBytes("UTF-16LE"));
            s3.update(s1.toUpperCase().getBytes("UTF-16LE"));
            s1 = new abv(s3.digest());
            s1.update(abyte0);
            s1.update(abyte1);
            s1.digest(abyte2, 0, 16);
            System.arraycopy(abyte1, 0, abyte2, 16, 8);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            if (abx.a > 0)
            {
                s1.printStackTrace(r);
            }
            return null;
        }
        return abyte2;
    }

    public static byte[] a(String s1, byte abyte0[])
    {
        int i1 = 14;
        byte abyte1[] = new byte[14];
        byte abyte2[] = new byte[21];
        byte abyte3[] = new byte[24];
        int j1;
        try
        {
            s1 = s1.toUpperCase().getBytes(zm.am);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new RuntimeException("Try setting jcifs.encoding=US-ASCII", s1);
        }
        j1 = s1.length;
        if (j1 <= 14)
        {
            i1 = j1;
        }
        System.arraycopy(s1, 0, abyte1, 0, i1);
        b(abyte1, s, abyte2);
        b(abyte2, abyte0, abyte3);
        return abyte3;
    }

    public static byte[] a(byte abyte0[], byte abyte1[], byte abyte2[])
    {
        byte abyte3[] = new byte[8];
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte1);
            messagedigest.update(abyte2, 0, 8);
            System.arraycopy(messagedigest.digest(), 0, abyte3, 0, 8);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            if (abx.a > 0)
            {
                abyte0.printStackTrace(r);
            }
            throw new RuntimeException("MD5", abyte0);
        }
        abyte1 = new byte[21];
        System.arraycopy(abyte0, 0, abyte1, 0, 16);
        abyte0 = new byte[24];
        b(abyte1, abyte3, abyte0);
        return abyte0;
    }

    public static byte[] a(byte abyte0[], byte abyte1[], byte abyte2[], long l1, byte abyte3[])
    {
        byte abyte4[];
        int i1;
        if (abyte3 != null)
        {
            i1 = abyte3.length;
        } else
        {
            i1 = 0;
        }
        abyte4 = new byte[i1 + 28 + 4];
        abu.a(257, abyte4, 0);
        abu.a(0, abyte4, 4);
        abu.a((int)(l1 & 0xffffffffL), abyte4, 8);
        abu.a((int)(l1 >> 32 & 0xffffffffL), abyte4, 12);
        System.arraycopy(abyte2, 0, abyte4, 16, 8);
        abu.a(0, abyte4, 24);
        if (abyte3 != null)
        {
            System.arraycopy(abyte3, 0, abyte4, 28, i1);
        }
        abu.a(0, abyte4, i1 + 28);
        i1 = abyte4.length;
        abyte0 = new abv(abyte0);
        abyte0.update(abyte1);
        abyte0.update(abyte4, 0, i1);
        abyte0 = abyte0.digest();
        abyte1 = new byte[abyte0.length + abyte4.length];
        System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
        System.arraycopy(abyte4, 0, abyte1, abyte0.length, abyte4.length);
        return abyte1;
    }

    private static String b(String s1)
    {
        byte abyte0[];
        char ac[];
        int i1;
        int j1;
        int k1;
        int l1;
        abyte0 = new byte[1];
        if (s1 == null)
        {
            return null;
        }
        l1 = s1.length();
        ac = new char[l1];
        j1 = 0;
        k1 = 0;
        i1 = 0;
_L2:
        if (i1 >= l1)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        switch (j1)
        {
        default:
            break;

        case 0: // '\0'
            break; /* Loop/switch isn't completed */

        case 1: // '\001'
            break;
        }
        break MISSING_BLOCK_LABEL_102;
_L3:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        char c1 = s1.charAt(i1);
        if (c1 == '%')
        {
            j1 = 1;
        } else
        {
            ac[k1] = c1;
            k1++;
        }
          goto _L3
        abyte0[0] = (byte)(Integer.parseInt(s1.substring(i1, i1 + 2), 16) & 0xff);
        ac[k1] = (new String(abyte0, 0, 1, "ASCII")).charAt(0);
        i1++;
        k1++;
        j1 = 0;
          goto _L3
        return new String(ac, 0, k1);
    }

    private static void b(byte abyte0[], byte abyte1[], byte abyte2[])
    {
        byte abyte3[] = new byte[7];
        byte abyte4[] = new byte[8];
        for (int i1 = 0; i1 < abyte0.length / 7; i1++)
        {
            System.arraycopy(abyte0, i1 * 7, abyte3, 0, 7);
            abt abt1 = new abt(abyte3);
            abt.a(abyte1, abt1.b);
            abt.a(abt1.b, abt1.b, abt1.a);
            abt.a(abt1.b, abyte4);
            System.arraycopy(abyte4, 0, abyte2, i1 * 8, 8);
        }

    }

    public static byte[] b(String s1, byte abyte0[])
    {
        aby aby1 = null;
        byte abyte1[] = new byte[21];
        byte abyte2[] = new byte[24];
        try
        {
            s1 = s1.getBytes("UTF-16LE");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            s1 = aby1;
            if (abx.a > 0)
            {
                unsupportedencodingexception.printStackTrace(r);
                s1 = aby1;
            }
        }
        aby1 = new aby();
        aby1.update(s1);
        try
        {
            aby1.digest(abyte1, 0, 16);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            if (abx.a > 0)
            {
                s1.printStackTrace(r);
            }
        }
        b(abyte1, abyte0, abyte2);
        return abyte2;
    }

    public final byte[] a(byte abyte0[])
    {
        if (m)
        {
            return k;
        }
        switch (p)
        {
        default:
            return a(j, abyte0);

        case 0: // '\0'
        case 1: // '\001'
            return a(j, abyte0);

        case 2: // '\002'
            return b(j, abyte0);

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            break;
        }
        if (n == null)
        {
            n = new byte[8];
            q.nextBytes(n);
        }
        return a(h, i, j, abyte0, n);
    }

    public final byte[] b(byte abyte0[])
    {
        if (m)
        {
            return l;
        }
        switch (p)
        {
        default:
            return b(j, abyte0);

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            return b(j, abyte0);

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            return new byte[0];
        }
    }

    public final byte[] c(byte abyte0[])
    {
        p;
        JVM INSTR tableswitch 0 5: default 40
    //                   0 42
    //                   1 42
    //                   2 42
    //                   3 312
    //                   4 312
    //                   5 312;
           goto _L1 _L2 _L2 _L2 _L3 _L3 _L3
_L1:
        return null;
_L2:
        byte abyte1[] = new byte[40];
        if (m) goto _L5; else goto _L4
_L4:
        Object obj;
        obj = new aby();
        ((aby) (obj)).update(j.getBytes("UTF-16LE"));
        p;
        JVM INSTR tableswitch 0 5: default 323
    //                   0 149
    //                   1 149
    //                   2 149
    //                   3 181
    //                   4 181
    //                   5 181;
           goto _L6 _L7 _L7 _L7 _L8 _L8 _L8
_L6:
        ((aby) (obj)).update(((aby) (obj)).digest());
        ((aby) (obj)).digest(abyte1, 0, 16);
_L5:
        System.arraycopy(b(abyte0), 0, abyte1, 16, 24);
        return abyte1;
_L7:
        try
        {
            ((aby) (obj)).update(((aby) (obj)).digest());
            ((aby) (obj)).digest(abyte1, 0, 16);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new aaq("", abyte0);
        }
          goto _L5
_L8:
        if (n == null)
        {
            n = new byte[8];
            q.nextBytes(n);
        }
        obj = new abv(((aby) (obj)).digest());
        ((abv) (obj)).update(i.toUpperCase().getBytes("UTF-16LE"));
        ((abv) (obj)).update(h.toUpperCase().getBytes("UTF-16LE"));
        byte abyte2[] = ((abv) (obj)).digest();
        obj = new abv(abyte2);
        ((abv) (obj)).update(abyte0);
        ((abv) (obj)).update(n);
        abv abv1 = new abv(abyte2);
        abv1.update(((abv) (obj)).digest());
        abv1.digest(abyte1, 0, 16);
          goto _L5
_L3:
        throw new aaq("NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)");
    }

    public final boolean equals(Object obj)
    {
        if (!(obj instanceof zl)) goto _L2; else goto _L1
_L1:
        obj = (zl)obj;
        if (!((zl) (obj)).h.toUpperCase().equals(h.toUpperCase()) || !((zl) (obj)).i.toUpperCase().equals(i.toUpperCase())) goto _L2; else goto _L3
_L3:
        if (!m || !((zl) (obj)).m) goto _L5; else goto _L4
_L4:
        if (!Arrays.equals(k, ((zl) (obj)).k) || !Arrays.equals(l, ((zl) (obj)).l)) goto _L7; else goto _L6
_L6:
        return true;
_L7:
        return false;
_L5:
        if (!m && j.equals(((zl) (obj)).j)) goto _L6; else goto _L2
_L2:
        return false;
    }

    public final String getName()
    {
        boolean flag;
        if (h.length() > 0 && !h.equals("?"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return (new StringBuilder()).append(h).append("\\").append(i).toString();
        } else
        {
            return i;
        }
    }

    public final int hashCode()
    {
        return getName().toUpperCase().hashCode();
    }

    public final String toString()
    {
        return getName();
    }

}
