// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Iterator;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;

public class ia extends hy
{
    public static final class a
    {

        public static final a a;
        final Proxy b;
        final long c;
        final long d;

        static 
        {
            a a1 = new a((byte)0);
            a = new a(a1.a, a1.b, a1.c, (byte)0);
        }

        private a(Proxy proxy, long l, long l1)
        {
            b = proxy;
            c = l;
            d = l1;
        }

        private a(Proxy proxy, long l, long l1, byte byte0)
        {
            this(proxy, l, l1);
        }
    }

    public static final class a.a
    {

        Proxy a;
        long b;
        long c;

        private a.a()
        {
            this(Proxy.NO_PROXY, hy.a, hy.b);
        }

        a.a(byte byte0)
        {
            this();
        }

        private a.a(Proxy proxy, long l, long l1)
        {
            a = proxy;
            b = l;
            c = l1;
        }
    }

    final class b extends hy.c
    {

        final ia a;
        private final OutputStream b;
        private HttpURLConnection c;

        public final OutputStream a()
        {
            return b;
        }

        public final void b()
        {
            if (c == null)
            {
                return;
            }
            if (c.getDoOutput())
            {
                try
                {
                    ij.a(c.getOutputStream());
                }
                catch (IOException ioexception) { }
            }
            c = null;
        }

        public final hy.b c()
        {
            if (c == null)
            {
                throw new IllegalStateException("Can't finish().  Uploader already closed.");
            }
            hy.b b1 = ia.b(c);
            c = null;
            return b1;
            Exception exception;
            exception;
            c = null;
            throw exception;
        }

        public b(HttpURLConnection httpurlconnection)
        {
            a = ia.this;
            super();
            c = httpurlconnection;
            b = ia.a(httpurlconnection);
            httpurlconnection.connect();
        }
    }


    public static final ia c;
    private static final Logger d = Logger.getLogger(ia.getCanonicalName());
    private static volatile boolean e = false;
    private final a f;

    private ia(a a1)
    {
        f = a1;
    }

    static OutputStream a(HttpURLConnection httpurlconnection)
    {
        httpurlconnection.setDoOutput(true);
        return httpurlconnection.getOutputStream();
    }

    static hy.b b(HttpURLConnection httpurlconnection)
    {
        int i = httpurlconnection.getResponseCode();
        java.io.InputStream inputstream;
        if (i >= 400 || i == -1)
        {
            inputstream = httpurlconnection.getErrorStream();
        } else
        {
            inputstream = httpurlconnection.getInputStream();
        }
        return new hy.b(i, inputstream, httpurlconnection.getHeaderFields());
    }

    public final hy.c a(String s, Iterable iterable)
    {
        s = (HttpURLConnection)(new URL(s)).openConnection(f.b);
        s.setConnectTimeout((int)f.c);
        s.setReadTimeout((int)f.d);
        s.setUseCaches(false);
        s.setAllowUserInteraction(false);
        if (!(s instanceof HttpsURLConnection)) goto _L2; else goto _L1
_L1:
        hz.a((HttpsURLConnection)s);
_L4:
        hy.a a1;
        for (iterable = iterable.iterator(); iterable.hasNext(); s.addRequestProperty(a1.a, a1.b))
        {
            a1 = (hy.a)iterable.next();
        }

        break; /* Loop/switch isn't completed */
_L2:
        if (!e)
        {
            e = true;
            d.warning("Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor.");
        }
        if (true) goto _L4; else goto _L3
_L3:
        s.setRequestMethod("POST");
        return new b(s);
    }

    static 
    {
        c = new ia(a.a);
    }
}
