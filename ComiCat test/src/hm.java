// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.CharacterCodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public final class hm
{

    private static final Random a = new Random();

    public static hj a(hy.b b1)
    {
        String s;
        String s1;
        s = a(b1, "X-Dropbox-Request-Id");
        byte abyte0[] = c(b1);
        s1 = a(s, b1.a, abyte0);
        b1.a;
        JVM INSTR lookupswitch 5: default 76
    //                   400: 117
    //                   401: 127
    //                   429: 137
    //                   500: 242
    //                   503: 252;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return new hf(s, (new StringBuilder("unexpected HTTP status code: ")).append(b1.a).append(": ").append(s1).toString(), b1.a);
_L2:
        return new he(s, s1);
_L3:
        return new hp(s, s1);
_L4:
        List list;
        try
        {
            list = (List)b1.c.get("Retry-After");
        }
        // Misplaced declaration of an exception variable
        catch (hy.b b1)
        {
            return new hg(s, "Invalid value for HTTP header: \"Retry-After\"");
        }
        if (list == null) goto _L8; else goto _L7
_L7:
        if (!list.isEmpty()) goto _L9; else goto _L8
_L8:
        throw new hg(a(b1, "X-Dropbox-Request-Id"), (new StringBuilder("missing HTTP header \"")).append("Retry-After").append("\"").toString());
_L9:
        b1 = new ht(s, s1, Integer.parseInt((String)list.get(0)), TimeUnit.SECONDS);
        return b1;
_L5:
        return new hv(s, s1);
_L6:
        b1 = a(b1, "Retry-After");
        if (b1 == null) goto _L11; else goto _L10
_L10:
        if (b1.trim().isEmpty()) goto _L11; else goto _L12
_L12:
        b1 = new hu(s, s1, Integer.parseInt(b1), TimeUnit.SECONDS);
        return b1;
_L11:
        try
        {
            b1 = new hu(s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (hy.b b1)
        {
            return new hg(s, "Invalid value for HTTP header: \"Retry-After\"");
        }
        return b1;
    }

    public static hy.b a(hl hl1, String s, String s1, String s2, byte abyte0[], List list)
    {
        s2 = a(s1, s2);
        if (list == null)
        {
            s1 = new ArrayList();
        } else
        {
            s1 = new ArrayList(list);
        }
        s1.add(new hy.a("User-Agent", (new StringBuilder()).append(hl1.a).append(" ").append(s).append("/").append(hn.a).toString()));
        s1.add(new hy.a("Content-Length", Integer.toString(abyte0.length)));
        try
        {
            hl1 = hl1.c.a(s2, s1);
        }
        // Misplaced declaration of an exception variable
        catch (hl hl1)
        {
            throw new hr(hl1);
        }
        s = hl1.a();
        s.write(abyte0);
        s.close();
        s = hl1.c();
        hl1.b();
        return s;
        s1;
        s.close();
        throw s1;
        s;
        hl1.b();
        throw s;
    }

    private static String a(hy.b b1, String s)
    {
        b1 = (List)b1.c.get(s);
        if (b1 == null || b1.isEmpty())
        {
            return null;
        } else
        {
            return (String)b1.get(0);
        }
    }

    private static String a(String s)
    {
        try
        {
            s = URLEncoder.encode(s, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw ik.a("UTF-8 should always be supported", s);
        }
        return s;
    }

    private static String a(String s, int i, byte abyte0[])
    {
        try
        {
            abyte0 = il.a(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new hg(s, (new StringBuilder("Got non-UTF8 response body: ")).append(i).append(": ").append(abyte0.getMessage()).toString());
        }
        return abyte0;
    }

    private static String a(String s, String s1)
    {
        String s2;
        try
        {
            s2 = (new URI("https", s, (new StringBuilder("/")).append(s1).toString(), null)).toASCIIString();
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw ik.a((new StringBuilder("URI creation failed, host=")).append(il.a(s)).append(", path=").append(il.a(s1)).toString(), urisyntaxexception);
        }
        return s2;
    }

    public static String a(String s, String s1, String s2, String as[])
    {
        return (new StringBuilder()).append(a(s1, s2)).append("?").append(a(s, as)).toString();
    }

    private static String a(String s, String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s1 = "";
        if (s != null)
        {
            stringbuilder.append("locale=").append(s);
            s1 = "&";
        }
        if (as != null)
        {
            if (as.length % 2 != 0)
            {
                throw new IllegalArgumentException((new StringBuilder("'params.length' is ")).append(as.length).append("; expecting a multiple of two").toString());
            }
            for (int i = 0; i < as.length;)
            {
                String s2 = as[i];
                String s3 = as[i + 1];
                if (s2 == null)
                {
                    throw new IllegalArgumentException((new StringBuilder("params[")).append(i).append("] is null").toString());
                }
                s = s1;
                if (s3 != null)
                {
                    stringbuilder.append(s1);
                    s = "&";
                    stringbuilder.append(a(s2));
                    stringbuilder.append("=");
                    stringbuilder.append(a(s3));
                }
                i += 2;
                s1 = s;
            }

        }
        return stringbuilder.toString();
    }

    public static List a(List list, hl hl1)
    {
        if (hl1.b == null)
        {
            return list;
        } else
        {
            list.add(new hy.a("Dropbox-API-User-Locale", hl1.b));
            return list;
        }
    }

    public static List a(List list, String s)
    {
        if (s == null)
        {
            throw new NullPointerException("accessToken");
        }
        Object obj = list;
        if (list == null)
        {
            obj = new ArrayList();
        }
        ((List) (obj)).add(new hy.a("Authorization", (new StringBuilder("Bearer ")).append(s).toString()));
        return ((List) (obj));
    }

    public static String b(hy.b b1)
    {
        return a(b1, "X-Dropbox-Request-Id");
    }

    private static byte[] c(hy.b b1)
    {
        if (b1.b == null)
        {
            return new byte[0];
        }
        try
        {
            b1 = ij.b(b1.b);
        }
        // Misplaced declaration of an exception variable
        catch (hy.b b1)
        {
            throw new hr(b1);
        }
        return b1;
    }

}
