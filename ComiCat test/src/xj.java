// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;

public class xj
{

    public static int a;
    public static String b;
    private static Properties c;
    private static abx d;

    xj()
    {
    }

    public static int a(String s, int i)
    {
        s = c.getProperty(s);
        int j = i;
        if (s != null)
        {
            try
            {
                j = Integer.parseInt(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                j = i;
                if (abx.a > 0)
                {
                    s.printStackTrace(d);
                    return i;
                }
            }
        }
        return j;
    }

    public static long a(String s, long l)
    {
        s = c.getProperty(s);
        long l1 = l;
        if (s != null)
        {
            try
            {
                l1 = Long.parseLong(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                l1 = l;
                if (abx.a > 0)
                {
                    s.printStackTrace(d);
                    return l;
                }
            }
        }
        return l1;
    }

    public static Object a(String s, String s1)
    {
        return c.setProperty(s, s1);
    }

    public static String a(String s)
    {
        return c.getProperty(s);
    }

    public static InetAddress a()
    {
        String s;
        s = c.getProperty("jcifs.smb.client.laddr");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        InetAddress inetaddress = InetAddress.getByName(s);
        return inetaddress;
        UnknownHostException unknownhostexception;
        unknownhostexception;
        if (abx.a > 0)
        {
            d.println((new StringBuilder("Ignoring jcifs.smb.client.laddr address: ")).append(s).toString());
            unknownhostexception.printStackTrace(d);
        }
        return null;
    }

    public static InetAddress a(String s, InetAddress inetaddress)
    {
        String s1 = c.getProperty(s);
        s = inetaddress;
        if (s1 != null)
        {
            try
            {
                s = InetAddress.getByName(s1);
            }
            catch (UnknownHostException unknownhostexception)
            {
                s = inetaddress;
                if (abx.a > 0)
                {
                    d.println(s1);
                    unknownhostexception.printStackTrace(d);
                    return inetaddress;
                }
            }
        }
        return s;
    }

    public static boolean a(String s, boolean flag)
    {
        s = c.getProperty(s);
        if (s != null)
        {
            flag = s.toLowerCase().equals("true");
        }
        return flag;
    }

    public static InetAddress[] a(String s, String s1, InetAddress ainetaddress[])
    {
        s = c.getProperty(s);
        if (s == null) goto _L2; else goto _L1
_L1:
        InetAddress ainetaddress1[];
        int i;
        int j;
        s1 = new StringTokenizer(s, s1);
        j = s1.countTokens();
        ainetaddress1 = new InetAddress[j];
        i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        s = s1.nextToken();
        ainetaddress1[i] = InetAddress.getByName(s);
        i++;
        if (true) goto _L4; else goto _L3
        s1;
        if (abx.a > 0)
        {
            d.println(s);
            s1.printStackTrace(d);
        }
_L2:
        return ainetaddress;
_L3:
        return ainetaddress1;
    }

    public static String b(String s, String s1)
    {
        return c.getProperty(s, s1);
    }

    static 
    {
        a = 0;
        c = new Properties();
        b = "Cp850";
        d = abx.a();
        Object obj = System.getProperty("jcifs.properties");
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (((String) (obj)).length() <= 1) goto _L2; else goto _L3
_L3:
        obj = new FileInputStream(((String) (obj)));
_L7:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        c.load(((java.io.InputStream) (obj)));
        c.putAll((Map)System.getProperties().clone());
_L5:
        SecurityException securityexception;
        int i;
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                if (abx.a > 0)
                {
                    ((IOException) (obj)).printStackTrace(d);
                }
            }
        }
        i = a("jcifs.util.loglevel", -1);
        if (i != -1)
        {
            abx.a(i);
        }
        try
        {
            "".getBytes(b);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (abx.a >= 2)
            {
                d.println((new StringBuilder("WARNING: The default OEM encoding ")).append(b).append(" does not appear to be supported by this JRE. The default encoding will be US-ASCII.").toString());
            }
            b = "US-ASCII";
        }
        if (abx.a < 4)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        c.store(d, "JCIFS PROPERTIES");
        return;
        securityexception;
        if (abx.a <= 1) goto _L5; else goto _L4
_L4:
        d.println("SecurityException: jcifs will ignore System properties");
          goto _L5
        obj;
        return;
_L2:
        obj = null;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
