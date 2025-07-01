// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.util.Vector;

public final class si
{

    static final byte a[] = b("", "UTF-8");
    private static final byte b[] = b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=", "UTF-8");
    private static String c[] = {
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", 
        "a", "b", "c", "d", "e", "f"
    };

    private static byte a(byte byte0)
    {
        if (byte0 != 61)
        {
            int i = 0;
            while (i < b.length) 
            {
                if (byte0 == b[i])
                {
                    return (byte)i;
                }
                i++;
            }
        }
        return 0;
    }

    static String a(String s, String as[])
    {
        String as1[] = a(s, ",");
        String s1 = null;
        int i = 0;
        while (i < as1.length) 
        {
label0:
            {
                for (int j = 0; j < as.length; j++)
                {
                    s = s1;
                    if (as1[i].equals(as[j]))
                    {
                        break label0;
                    }
                }

                if (s1 == null)
                {
                    s = as1[i];
                } else
                {
                    s = (new StringBuilder()).append(s1).append(",").append(as1[i]).toString();
                }
            }
            i++;
            s1 = s;
        }
        return s1;
    }

    static String a(qp qp1)
    {
        int i;
        StringBuffer stringbuffer;
        int j;
        try
        {
            qp1 = qp1.b();
            stringbuffer = new StringBuffer();
        }
        // Misplaced declaration of an exception variable
        catch (qp qp1)
        {
            return "???";
        }
        i = 0;
_L2:
        if (i >= qp1.length)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        j = qp1[i] & 0xff;
        stringbuffer.append(c[j >>> 4 & 0xf]);
        stringbuffer.append(c[j & 0xf]);
        if (i + 1 < qp1.length)
        {
            stringbuffer.append(":");
        }
        break MISSING_BLOCK_LABEL_88;
        qp1 = stringbuffer.toString();
        return qp1;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static String a(byte abyte0[])
    {
        return a(abyte0, 0, abyte0.length, "UTF-8");
    }

    static String a(byte abyte0[], int i, int j)
    {
        return a(abyte0, i, j, "UTF-8");
    }

    private static String a(byte abyte0[], int i, int j, String s)
    {
        try
        {
            s = new String(abyte0, i, j, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return new String(abyte0, i, j);
        }
        return s;
    }

    static Socket a(String s, int i, int j)
    {
        String s1;
        Exception aexception[];
        Thread thread;
        Socket asocket[];
        long l;
        if (j == 0)
        {
            try
            {
                s = new Socket(s, i);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new qy(s.toString(), s);
            }
            return s;
        }
        asocket = new Socket[1];
        aexception = new Exception[1];
        s1 = "";
        thread = new Thread(new Runnable(asocket, s, i, aexception) {

            final Socket a[];
            final String b;
            final int c;
            final Exception d[];

            public final void run()
            {
                a[0] = null;
                try
                {
                    a[0] = new Socket(b, c);
                    return;
                }
                catch (Exception exception)
                {
                    d[0] = exception;
                }
                if (a[0] != null && a[0].isConnected())
                {
                    try
                    {
                        a[0].close();
                    }
                    catch (Exception exception1) { }
                }
                a[0] = null;
            }

            
            {
                a = asocket;
                b = s;
                c = i;
                d = aexception;
                super();
            }
        });
        thread.setName((new StringBuilder("Opening Socket ")).append(s).toString());
        thread.start();
        l = j;
        thread.join(l);
        s = "timeout: ";
_L2:
        if (asocket[0] != null && asocket[0].isConnected())
        {
            return asocket[0];
        }
        s = (new StringBuilder()).append(s).append("socket is not established").toString();
        if (aexception[0] != null)
        {
            s = aexception[0].toString();
        }
        thread.interrupt();
        throw new qy(s, aexception[0]);
        s;
        s = s1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static boolean a(byte abyte0[], byte abyte1[])
    {
        int j = abyte0.length;
        if (j == abyte1.length) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= j)
                {
                    break label1;
                }
                if (abyte0[i] != abyte1[i])
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static byte[] a(String s)
    {
        return b(s, "UTF-8");
    }

    static byte[] a(byte abyte0[], int i)
    {
        int j = 0;
        byte abyte1[];
        int k;
        int l;
        try
        {
            abyte1 = new byte[i];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new qy("fromBase64: invalid base64 data", abyte0);
        }
        l = 0;
        k = j;
        if (l >= i + 0) goto _L2; else goto _L1
_L1:
        abyte1[j] = (byte)(a(abyte0[l]) << 2 | (a(abyte0[l + 1]) & 0x30) >>> 4);
        if (abyte0[l + 2] != 61) goto _L4; else goto _L3
_L3:
        k = j + 1;
_L2:
        abyte0 = new byte[k];
        System.arraycopy(abyte1, 0, abyte0, 0, k);
        return abyte0;
_L4:
        abyte1[j + 1] = (byte)((a(abyte0[l + 1]) & 0xf) << 4 | (a(abyte0[l + 2]) & 0x3c) >>> 2);
        if (abyte0[l + 3] != 61)
        {
            break; /* Loop/switch isn't completed */
        }
        k = j + 2;
        if (true) goto _L2; else goto _L5
_L5:
        abyte1[j + 2] = (byte)((a(abyte0[l + 2]) & 3) << 6 | a(abyte0[l + 3]) & 0x3f);
        l += 4;
        j += 3;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_9;
        }
    }

    static String[] a(String s, String s1)
    {
        boolean flag = false;
        if (s == null)
        {
            return null;
        }
        byte abyte0[] = b(s, "UTF-8");
        Vector vector = new Vector();
        int i = 0;
        do
        {
            int k = s.indexOf(s1, i);
            if (k < 0)
            {
                break;
            }
            vector.addElement(a(abyte0, i, k - i));
            i = k + 1;
        } while (true);
        vector.addElement(a(abyte0, i, abyte0.length - i));
        s = new String[vector.size()];
        for (int j = ((flag) ? 1 : 0); j < s.length; j++)
        {
            s[j] = (String)(String)vector.elementAt(j);
        }

        return s;
    }

    static String b(String s)
    {
        String s1 = s;
        try
        {
            if (s.startsWith("~"))
            {
                s1 = s.replace("~", System.getProperty("user.home"));
            }
        }
        catch (SecurityException securityexception)
        {
            return s;
        }
        return s1;
    }

    static void b(byte abyte0[])
    {
        if (abyte0 != null)
        {
            int i = 0;
            while (i < abyte0.length) 
            {
                abyte0[i] = 0;
                i++;
            }
        }
    }

    private static byte[] b(String s, String s1)
    {
        if (s == null)
        {
            return null;
        }
        try
        {
            s1 = s.getBytes(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return s.getBytes();
        }
        return s1;
    }

    static byte[] b(byte abyte0[], int i)
    {
        byte abyte1[];
        int j;
        int k;
        int l;
        abyte1 = new byte[i * 2];
        l = (i / 3) * 3 + 0;
        k = 0;
        int i1;
        for (j = 0; k < l; j = i1 + 1)
        {
            byte byte2 = abyte0[k];
            i1 = j + 1;
            abyte1[j] = b[byte2 >>> 2 & 0x3f];
            byte2 = abyte0[k];
            byte byte3 = abyte0[k + 1];
            j = i1 + 1;
            abyte1[i1] = b[(byte2 & 3) << 4 | byte3 >>> 4 & 0xf];
            byte2 = abyte0[k + 1];
            byte3 = abyte0[k + 2];
            i1 = j + 1;
            abyte1[j] = b[(byte2 & 0xf) << 2 | byte3 >>> 6 & 3];
            j = abyte0[k + 2];
            abyte1[i1] = b[j & 0x3f];
            k += 3;
        }

        l = (i + 0) - l;
        if (l != 1) goto _L2; else goto _L1
_L1:
        l = abyte0[k];
        i = j + 1;
        abyte1[j] = b[l >>> 2 & 0x3f];
        k = abyte0[k];
        j = i + 1;
        abyte1[i] = b[(k & 3) << 4 & 0x3f];
        k = j + 1;
        abyte1[j] = 61;
        i = k + 1;
        abyte1[k] = 61;
_L4:
        abyte0 = new byte[i];
        System.arraycopy(abyte1, 0, abyte0, 0, i);
        return abyte0;
_L2:
        i = j;
        if (l == 2)
        {
            byte byte0 = abyte0[k];
            i = j + 1;
            abyte1[j] = b[byte0 >>> 2 & 0x3f];
            byte0 = abyte0[k];
            byte byte1 = abyte0[k + 1];
            j = i + 1;
            abyte1[i] = b[(byte0 & 3) << 4 | byte1 >>> 4 & 0xf];
            i = abyte0[k + 1];
            k = j + 1;
            abyte1[j] = b[(i & 0xf) << 2 & 0x3f];
            i = k + 1;
            abyte1[k] = 61;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
