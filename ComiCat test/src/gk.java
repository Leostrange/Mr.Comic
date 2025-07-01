// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public abstract class gk
{
    static final class a extends HttpEntityWrapper
    {

        public final InputStream getContent()
        {
            return new GZIPInputStream(wrappedEntity.getContent());
        }

        public final long getContentLength()
        {
            return -1L;
        }

        public a(HttpEntity httpentity)
        {
            super(httpentity);
        }
    }

    public final class b extends DefaultHttpClient
    {

        final gk a;

        private SSLSocketFactory a()
        {
            a a1;
            try
            {
                a1 = new a(this, KeyStore.getInstance("BKS"));
                a1.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            }
            catch (Exception exception)
            {
                throw new AssertionError(exception);
            }
            return a1;
        }

        protected final ClientConnectionManager createClientConnectionManager()
        {
            if (gy.a())
            {
                return super.createClientConnectionManager();
            } else
            {
                SchemeRegistry schemeregistry = new SchemeRegistry();
                schemeregistry.register(new Scheme("https", a(), 443));
                return new SingleClientConnManager(getParams(), schemeregistry);
            }
        }

        public b()
        {
            a = gk.this;
            super();
            addResponseInterceptor(new _cls1());
        }
    }

    public final class b.a extends SSLSocketFactory
    {

        SSLContext a;
        final b b;

        public final Socket createSocket()
        {
            return a.getSocketFactory().createSocket();
        }

        public final Socket createSocket(Socket socket, String s, int i1, boolean flag)
        {
            return a.getSocketFactory().createSocket(socket, s, i1, flag);
        }

        public b.a(b b1, KeyStore keystore)
        {
            b = b1;
            super(keystore);
            a = SSLContext.getInstance("TLS");
            b1 = new _cls1(this, b1);
            a.init(null, new TrustManager[] {
                b1
            }, null);
        }
    }


    private static final String a = gk.getName();
    public static final String d;
    public static final String e;
    private int b;
    private String c;
    protected HttpClient f;
    protected HttpRequestBase g;
    protected final List h = new ArrayList(10);
    protected final List i = new ArrayList();
    private Bundle j;
    private String k;
    private String l;
    private String m;

    public gk(String s, String s1, String s2, Bundle bundle)
    {
        b = -1;
        c = null;
        j = bundle;
        k = s;
        l = s1;
        m = s2;
    }

    private List c()
    {
        for (Iterator iterator = h.iterator(); iterator.hasNext();)
        {
            NameValuePair namevaluepair = (NameValuePair)iterator.next();
            if (namevaluepair != null)
            {
                gz.a(a, "Parameter Added to request", (new StringBuilder("name=")).append(namevaluepair.getName()).append(" val=").append(namevaluepair.getValue()).toString());
            } else
            {
                gz.b(a, "Parameter Added to request was NULL");
            }
        }

        return h;
    }

    private void g()
    {
        ((HttpPost)g).getEntity().consumeContent();
    }

    private String h()
    {
        Object obj = a(j);
        gy.a();
        String s = a();
        try
        {
            obj = new URL("https", ((String) (obj)), 443, s);
        }
        catch (MalformedURLException malformedurlexception)
        {
            throw new AuthError("MalformedURLException", malformedurlexception, com.amazon.identity.auth.device.AuthError.b.k);
        }
        return ((URL) (obj)).toString();
    }

    protected abstract gp a(HttpResponse httpresponse);

    public abstract String a();

    public String a(Bundle bundle)
    {
        String s1;
        s1 = b();
        String s = s1;
        if (s1 == null)
        {
            gz.c(a, "No domain passed into Request, Attempting to get from options");
            s = s1;
            if (bundle != null)
            {
                s = bundle.getString("com.amazon.identity.ap.domain");
            }
        }
        s1 = s;
        if (s == null)
        {
            s1 = ".amazon.com";
            gz.c(a, "No domain in options");
        }
        static final class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[fh.a.values().length];
                try
                {
                    a[fh.a.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[fh.a.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls2.a[gy.b().ordinal()];
        JVM INSTR tableswitch 1 2: default 84
    //                   1 106
    //                   2 112;
           goto _L1 _L2 _L3
_L1:
        bundle = "www";
_L5:
        return (new StringBuilder()).append(bundle).append(s1).toString();
_L2:
        bundle = "";
        continue; /* Loop/switch isn't completed */
_L3:
        bundle = "";
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String b()
    {
        return c;
    }

    protected abstract void d();

    public final gp e()
    {
        Object obj;
        if (f == null)
        {
            f = new b();
            g = new HttpPost(h());
        }
        f.getParams().setParameter("http.useragent", d);
        d();
        h.add(new BasicNameValuePair("app_name", k));
        if (l != null)
        {
            h.add(new BasicNameValuePair("app_version", l));
        }
        if (!TextUtils.isEmpty(fi.a) && !fi.a.equals("unknown"))
        {
            h.add(new BasicNameValuePair("di.hw.name", fi.a));
        }
        if (!TextUtils.isEmpty(fi.b) && !fi.b.equals("unknown"))
        {
            h.add(new BasicNameValuePair("di.hw.version", fi.b));
        }
        h.add(new BasicNameValuePair("di.os.name", "Android"));
        if (!TextUtils.isEmpty(fi.c) && !fi.c.equals("unknown"))
        {
            h.add(new BasicNameValuePair("di.os.version", fi.c));
        }
        h.add(new BasicNameValuePair("di.sdk.version", m));
        obj = i;
        Object obj2 = new ArrayList();
        ((List) (obj2)).add(new BasicHeader("Accept-Encoding", "gzip, deflate"));
        ((List) (obj2)).add(new BasicHeader("Accept-Language", "en-us,en;q=0.5"));
        ((List) (obj2)).add(new BasicHeader("Accept", "application/xml,application/xhtml+xml,text/html,application/json;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"));
        ((List) (obj2)).add(new BasicHeader("Accept-Charset", "utf-8, iso-8859-1, utf-16, *;q=0.7"));
        ((List) (obj)).addAll(((java.util.Collection) (obj2)));
        int i1;
        int j1;
        try
        {
            obj = new UrlEncodedFormEntity(c());
            ((HttpPost)g).setEntity(((HttpEntity) (obj)));
            Header aheader[] = new Header[i.size()];
            i.toArray(aheader);
            if (aheader.length > 0)
            {
                g.setHeaders(aheader);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Header aheader[])
        {
            throw new AuthError(aheader.getMessage(), aheader, com.amazon.identity.auth.device.AuthError.b.k);
        }
        // Misplaced declaration of an exception variable
        catch (Header aheader[])
        {
            throw new AuthError("Received IO error when creating RequestUrlBuilder", aheader, com.amazon.identity.auth.device.AuthError.b.i);
        }
        aheader = null;
        gz.c(a, (new StringBuilder("Request url: ")).append(g.getURI()).toString());
        i1 = 0;
_L2:
        if (i1 > 2)
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = f();
        j1 = ((HttpResponse) (obj2)).getStatusLine().getStatusCode();
        boolean flag;
        if (j1 >= 500 && j1 < 600)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aheader = ((Header []) (obj2));
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        if (i1 == 2)
        {
            break MISSING_BLOCK_LABEL_552;
        }
        ((HttpResponse) (obj2)).getEntity().consumeContent();
        gz.d(a, (new StringBuilder("Received ")).append(((HttpResponse) (obj2)).getStatusLine().getStatusCode()).append(" error on request attempt ").append(i1 + 1).append(" of 3").toString());
        i1++;
        aheader = ((Header []) (obj2));
        if (true) goto _L2; else goto _L1
_L1:
        if (f != null)
        {
            f.getConnectionManager().closeIdleConnections(5L, TimeUnit.SECONDS);
        }
        if (g != null)
        {
            try
            {
                g();
            }
            catch (IOException ioexception)
            {
                gz.b(a, (new StringBuilder("IOException consuming httppost entity content ")).append(ioexception.toString()).toString());
            }
        }
        return a(aheader);
        Object obj1;
        obj1;
        gz.b(a, (new StringBuilder("Received communication error when executing token request:")).append(((ClientProtocolException) (obj1)).toString()).toString());
        throw new AuthError("Received communication error when executing token request", ((Throwable) (obj1)), com.amazon.identity.auth.device.AuthError.b.h);
        obj1;
        if (f != null)
        {
            f.getConnectionManager().closeIdleConnections(5L, TimeUnit.SECONDS);
        }
        if (g != null)
        {
            try
            {
                g();
            }
            catch (IOException ioexception1)
            {
                gz.b(a, (new StringBuilder("IOException consuming httppost entity content ")).append(ioexception1.toString()).toString());
            }
        }
        throw obj1;
        obj1;
        gz.b(a, (new StringBuilder("Received IO error when executing token request:")).append(((IOException) (obj1)).toString()).toString());
        throw new AuthError("Received communication error when executing token request", ((Throwable) (obj1)), com.amazon.identity.auth.device.AuthError.b.i);
    }

    public HttpResponse f()
    {
        if (b != -1)
        {
            HttpParams httpparams = g.getParams();
            HttpConnectionParams.setSoTimeout(httpparams, b);
            g.setParams(httpparams);
        }
        String s = (String)f.getParams().getParameter("http.useragent");
        gz.a(a, "Logging Request info.", (new StringBuilder("UserAgent = ")).append(s).toString());
        Header aheader[] = g.getAllHeaders();
        if (aheader != null)
        {
            gz.c(a, (new StringBuilder("Number of Headers : ")).append(aheader.length).toString());
            int j1 = aheader.length;
            for (int i1 = 0; i1 < j1; i1++)
            {
                Header header = aheader[i1];
                gz.a(a, (new StringBuilder("Header used for request: name=")).append(header.getName()).toString(), (new StringBuilder("val=")).append(header.getValue()).toString());
            }

        } else
        {
            gz.c(a, "No Headers");
        }
        return f.execute(g);
    }

    static 
    {
        d = (new StringBuilder("AmazonAuthenticationSDK/3.3.1/Android/")).append(android.os.Build.VERSION.RELEASE).append("/").append(Build.MODEL).toString();
        e = (new StringBuilder("AmazonWebView/AmazonAuthenticationSDK/3.3.1/Android/")).append(android.os.Build.VERSION.RELEASE).append("/").append(Build.MODEL).toString();
    }

    // Unreferenced inner class gk$1

/* anonymous class */
    final class _cls1
        implements HttpResponseInterceptor
    {

        final gk a;

        public final void process(HttpResponse httpresponse, HttpContext httpcontext)
        {
            httpcontext = httpresponse.getEntity().getContentEncoding();
            if (httpcontext == null) goto _L2; else goto _L1
_L1:
            int i1;
            httpcontext = httpcontext.getElements();
            i1 = 0;
_L7:
            if (i1 >= httpcontext.length) goto _L2; else goto _L3
_L3:
            if (!httpcontext[i1].getName().equalsIgnoreCase("gzip")) goto _L5; else goto _L4
_L4:
            httpresponse.setEntity(new a(httpresponse.getEntity()));
_L2:
            return;
_L5:
            i1++;
            if (true) goto _L7; else goto _L6
_L6:
        }

            
            {
                a = gk.this;
                super();
            }
    }


    // Unreferenced inner class gk$b$a$1

/* anonymous class */
    final class b.a._cls1
        implements X509TrustManager
    {

        final b a;
        final b.a b;

        public final void checkClientTrusted(X509Certificate ax509certificate[], String s)
        {
        }

        public final void checkServerTrusted(X509Certificate ax509certificate[], String s)
        {
        }

        public final X509Certificate[] getAcceptedIssuers()
        {
            return null;
        }

            
            {
                b = a1;
                a = b1;
                super();
            }
    }

}
