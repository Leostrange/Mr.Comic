// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;

public class hz
{
    static final class a
    {

        final String a[];
        final String b[];

        public a(String as[], String as1[])
        {
            a = as;
            b = as1;
        }
    }

    public static final class b extends Exception
    {

        public b(String s, Throwable throwable)
        {
            super(s, throwable);
        }
    }

    static final class c extends SSLSocketFactory
    {

        private final SSLSocketFactory a;

        public final Socket createSocket(String s, int i)
        {
            s = a.createSocket(s, i);
            hz.a((SSLSocket)s);
            return s;
        }

        public final Socket createSocket(String s, int i, InetAddress inetaddress, int j)
        {
            s = a.createSocket(s, i, inetaddress, j);
            hz.a((SSLSocket)s);
            return s;
        }

        public final Socket createSocket(InetAddress inetaddress, int i)
        {
            inetaddress = a.createSocket(inetaddress, i);
            hz.a((SSLSocket)inetaddress);
            return inetaddress;
        }

        public final Socket createSocket(InetAddress inetaddress, int i, InetAddress inetaddress1, int j)
        {
            inetaddress = a.createSocket(inetaddress, i, inetaddress1, j);
            hz.a((SSLSocket)inetaddress);
            return inetaddress;
        }

        public final Socket createSocket(Socket socket, String s, int i, boolean flag)
        {
            socket = a.createSocket(socket, s, i, flag);
            hz.a((SSLSocket)socket);
            return socket;
        }

        public final String[] getDefaultCipherSuites()
        {
            return a.getDefaultCipherSuites();
        }

        public final String[] getSupportedCipherSuites()
        {
            return a.getSupportedCipherSuites();
        }

        public c(SSLSocketFactory sslsocketfactory)
        {
            a = sslsocketfactory;
        }
    }


    private static final X509TrustManager a;
    private static final SSLSocketFactory b;
    private static final String c[] = {
        "TLSv1.2"
    };
    private static final String d[] = {
        "TLSv1.0"
    };
    private static final String e[] = {
        "TLSv1"
    };
    private static a f;
    private static final HashSet g = new HashSet(Arrays.asList(new String[] {
        "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 
        "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA", "ECDHE-RSA-AES256-GCM-SHA384", 
        "ECDHE-RSA-AES256-SHA384", "ECDHE-RSA-AES256-SHA", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-AES128-SHA256", "ECDHE-RSA-AES128-SHA", "ECDHE-RSA-RC4-SHA", "DHE-RSA-AES256-GCM-SHA384", "DHE-RSA-AES256-SHA256", "DHE-RSA-AES256-SHA", "DHE-RSA-AES128-GCM-SHA256", 
        "DHE-RSA-AES128-SHA256", "DHE-RSA-AES128-SHA", "AES256-GCM-SHA384", "AES256-SHA256", "AES256-SHA", "AES128-GCM-SHA256", "AES128-SHA256", "AES128-SHA"
    }));

    public hz()
    {
    }

    private static KeyStore a(String s)
    {
        InputStream inputstream;
        KeyStore keystore;
        try
        {
            keystore = KeyStore.getInstance(KeyStore.getDefaultType());
            keystore.load(null, new char[0]);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw ik.a("Couldn't initialize KeyStore", s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw ik.a("Couldn't initialize KeyStore", s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw ik.a("Couldn't initialize KeyStore", s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw ik.a("Couldn't initialize KeyStore", s);
        }
        inputstream = hz.getResourceAsStream(s);
        if (inputstream == null)
        {
            throw new AssertionError((new StringBuilder("Couldn't find resource \"")).append(s).append("\"").toString());
        }
        a(keystore, inputstream);
        ij.c(inputstream);
        return keystore;
        Object obj;
        obj;
        throw ik.a((new StringBuilder("Error loading from \"")).append(s).append("\"").toString(), ((Throwable) (obj)));
        s;
        ij.c(inputstream);
        throw s;
        obj;
        throw ik.a((new StringBuilder("Error loading from \"")).append(s).append("\"").toString(), ((Throwable) (obj)));
        obj;
        throw ik.a((new StringBuilder("Error loading from \"")).append(s).append("\"").toString(), ((Throwable) (obj)));
    }

    private static SSLContext a(TrustManager atrustmanager[])
    {
        SSLContext sslcontext;
        try
        {
            sslcontext = SSLContext.getInstance("TLS");
        }
        // Misplaced declaration of an exception variable
        catch (TrustManager atrustmanager[])
        {
            throw ik.a("Couldn't create SSLContext", atrustmanager);
        }
        try
        {
            sslcontext.init(null, atrustmanager, null);
        }
        // Misplaced declaration of an exception variable
        catch (TrustManager atrustmanager[])
        {
            throw ik.a("Couldn't initialize SSLContext", atrustmanager);
        }
        return sslcontext;
    }

    private static X509TrustManager a(KeyStore keystore)
    {
        TrustManagerFactory trustmanagerfactory;
        try
        {
            trustmanagerfactory = TrustManagerFactory.getInstance("X509");
        }
        // Misplaced declaration of an exception variable
        catch (KeyStore keystore)
        {
            throw ik.a("Unable to create TrustManagerFactory", keystore);
        }
        try
        {
            trustmanagerfactory.init(keystore);
        }
        // Misplaced declaration of an exception variable
        catch (KeyStore keystore)
        {
            throw ik.a("Unable to initialize TrustManagerFactory with key store", keystore);
        }
        keystore = trustmanagerfactory.getTrustManagers();
        if (keystore.length != 1)
        {
            throw new AssertionError("More than 1 TrustManager created.");
        }
        if (!(keystore[0] instanceof X509TrustManager))
        {
            throw new AssertionError((new StringBuilder("TrustManager not of type X509: ")).append(keystore[0].getClass()).toString());
        } else
        {
            return (X509TrustManager)keystore[0];
        }
    }

    private static void a(KeyStore keystore, InputStream inputstream)
    {
        CertificateFactory certificatefactory;
        ArrayList arraylist;
        byte abyte0[];
        int i;
        try
        {
            certificatefactory = CertificateFactory.getInstance("X.509");
        }
        // Misplaced declaration of an exception variable
        catch (KeyStore keystore)
        {
            throw ik.a("Couldn't initialize X.509 CertificateFactory", keystore);
        }
        arraylist = new ArrayList();
        inputstream = new DataInputStream(inputstream);
        abyte0 = new byte[10240];
_L1:
        i = inputstream.readUnsignedShort();
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        if (i > 10240)
        {
            try
            {
                throw new b((new StringBuilder("Invalid length for certificate entry: ")).append(i).toString(), null);
            }
            // Misplaced declaration of an exception variable
            catch (KeyStore keystore)
            {
                throw new b((new StringBuilder("Error loading certificate: ")).append(keystore.getMessage()).toString(), keystore);
            }
        }
        inputstream.readFully(abyte0, 0, i);
        arraylist.add((X509Certificate)certificatefactory.generateCertificate(new ByteArrayInputStream(abyte0, 0, i)));
          goto _L1
        if (inputstream.read() >= 0)
        {
            throw new b("Found data after after zero-length header.", null);
        }
        for (inputstream = arraylist.iterator(); inputstream.hasNext();)
        {
            X509Certificate x509certificate = (X509Certificate)inputstream.next();
            String s = x509certificate.getSubjectX500Principal().getName();
            try
            {
                keystore.setCertificateEntry(s, x509certificate);
            }
            // Misplaced declaration of an exception variable
            catch (KeyStore keystore)
            {
                throw new b((new StringBuilder("Error loading certificate: ")).append(keystore.getMessage()).toString(), keystore);
            }
        }

        return;
    }

    public static void a(HttpsURLConnection httpsurlconnection)
    {
        httpsurlconnection.setSSLSocketFactory(b);
    }

    static void a(SSLSocket sslsocket)
    {
        String as[];
        int i;
        int j;
        as = sslsocket.getSupportedProtocols();
        j = as.length;
        i = 0;
_L7:
        if (i >= j) goto _L2; else goto _L1
_L1:
        String s = as[i];
        if (!s.equals("TLSv1.2")) goto _L4; else goto _L3
_L3:
        sslsocket.setEnabledProtocols(c);
_L6:
        sslsocket.setEnabledCipherSuites(a(sslsocket.getSupportedCipherSuites()));
        return;
_L4:
        if (s.equals("TLSv1.0"))
        {
            sslsocket.setEnabledProtocols(d);
        } else
        {
            if (!s.equals("TLSv1"))
            {
                continue; /* Loop/switch isn't completed */
            }
            sslsocket.setEnabledProtocols(e);
        }
        if (true) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L2:
        throw new SSLException("Socket doesn't support protocols \"TLSv1.2\", \"TLSv1.0\" or \"TLSv1\".");
    }

    private static String[] a(String as[])
    {
        Object obj = f;
        if (obj != null && Arrays.equals(((a) (obj)).a, as))
        {
            return ((a) (obj)).b;
        }
        obj = new ArrayList(g.size());
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            String s = as[i];
            if (g.contains(s))
            {
                ((ArrayList) (obj)).add(s);
            }
        }

        String as1[] = (String[])((ArrayList) (obj)).toArray(new String[((ArrayList) (obj)).size()]);
        f = new a(as, as1);
        return as1;
    }

    static 
    {
        a = a(a("/trusted-certs.raw"));
        b = new c(a(new TrustManager[] {
            a
        }).getSocketFactory());
    }
}
