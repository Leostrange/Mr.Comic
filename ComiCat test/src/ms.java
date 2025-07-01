// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class ms extends mf
{

    private static final String b[];
    private final mo c;
    private final SSLSocketFactory d;
    private final HostnameVerifier e;

    public ms()
    {
        this((byte)0);
    }

    private ms(byte byte0)
    {
        c = new mp();
        d = null;
        e = null;
    }

    protected final mi a(String s, String s1)
    {
        oh.a(a(s), "HTTP method %s not supported", new Object[] {
            s
        });
        s1 = new URL(s1);
        s1 = c.a(s1);
        s1.setRequestMethod(s);
        if (s1 instanceof HttpsURLConnection)
        {
            s = (HttpsURLConnection)s1;
            if (e != null)
            {
                s.setHostnameVerifier(e);
            }
            if (d != null)
            {
                s.setSSLSocketFactory(d);
            }
        }
        return new mq(s1);
    }

    public final boolean a(String s)
    {
        return Arrays.binarySearch(b, s) >= 0;
    }

    static 
    {
        String as[] = new String[7];
        as[0] = "DELETE";
        as[1] = "GET";
        as[2] = "HEAD";
        as[3] = "OPTIONS";
        as[4] = "POST";
        as[5] = "PUT";
        as[6] = "TRACE";
        b = as;
        Arrays.sort(as);
    }
}
