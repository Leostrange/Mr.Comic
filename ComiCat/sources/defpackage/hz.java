package defpackage;

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
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* renamed from: hz  reason: default package */
/* compiled from: SSLConfig */
public class hz {
    private static final X509TrustManager a = a(a("/trusted-certs.raw"));
    private static final SSLSocketFactory b = new c(a(new TrustManager[]{a}).getSocketFactory());
    private static final String[] c = {"TLSv1.2"};
    private static final String[] d = {"TLSv1.0"};
    private static final String[] e = {"TLSv1"};
    private static a f;
    private static final HashSet<String> g = new HashSet<>(Arrays.asList(new String[]{"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA", "ECDHE-RSA-AES256-GCM-SHA384", "ECDHE-RSA-AES256-SHA384", "ECDHE-RSA-AES256-SHA", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-AES128-SHA256", "ECDHE-RSA-AES128-SHA", "ECDHE-RSA-RC4-SHA", "DHE-RSA-AES256-GCM-SHA384", "DHE-RSA-AES256-SHA256", "DHE-RSA-AES256-SHA", "DHE-RSA-AES128-GCM-SHA256", "DHE-RSA-AES128-SHA256", "DHE-RSA-AES128-SHA", "AES256-GCM-SHA384", "AES256-SHA256", "AES256-SHA", "AES128-GCM-SHA256", "AES128-SHA256", "AES128-SHA"}));

    /* renamed from: hz$a */
    /* compiled from: SSLConfig */
    static final class a {
        final String[] a;
        final String[] b;

        public a(String[] strArr, String[] strArr2) {
            this.a = strArr;
            this.b = strArr2;
        }
    }

    /* renamed from: hz$b */
    /* compiled from: SSLConfig */
    public static final class b extends Exception {
        public b(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: hz$c */
    /* compiled from: SSLConfig */
    static final class c extends SSLSocketFactory {
        private final SSLSocketFactory a;

        public c(SSLSocketFactory sSLSocketFactory) {
            this.a = sSLSocketFactory;
        }

        public final Socket createSocket(String str, int i) {
            Socket createSocket = this.a.createSocket(str, i);
            hz.a((SSLSocket) createSocket);
            return createSocket;
        }

        public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
            Socket createSocket = this.a.createSocket(str, i, inetAddress, i2);
            hz.a((SSLSocket) createSocket);
            return createSocket;
        }

        public final Socket createSocket(InetAddress inetAddress, int i) {
            Socket createSocket = this.a.createSocket(inetAddress, i);
            hz.a((SSLSocket) createSocket);
            return createSocket;
        }

        public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
            Socket createSocket = this.a.createSocket(inetAddress, i, inetAddress2, i2);
            hz.a((SSLSocket) createSocket);
            return createSocket;
        }

        public final Socket createSocket(Socket socket, String str, int i, boolean z) {
            Socket createSocket = this.a.createSocket(socket, str, i, z);
            hz.a((SSLSocket) createSocket);
            return createSocket;
        }

        public final String[] getDefaultCipherSuites() {
            return this.a.getDefaultCipherSuites();
        }

        public final String[] getSupportedCipherSuites() {
            return this.a.getSupportedCipherSuites();
        }
    }

    private static KeyStore a(String str) {
        try {
            KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
            instance.load((InputStream) null, new char[0]);
            InputStream resourceAsStream = hz.class.getResourceAsStream(str);
            if (resourceAsStream == null) {
                throw new AssertionError("Couldn't find resource \"" + str + "\"");
            }
            try {
                a(instance, resourceAsStream);
                ij.c(resourceAsStream);
                return instance;
            } catch (KeyStoreException e2) {
                throw ik.a("Error loading from \"" + str + "\"", e2);
            } catch (b e3) {
                throw ik.a("Error loading from \"" + str + "\"", e3);
            } catch (IOException e4) {
                throw ik.a("Error loading from \"" + str + "\"", e4);
            } catch (Throwable th) {
                ij.c(resourceAsStream);
                throw th;
            }
        } catch (KeyStoreException e5) {
            throw ik.a("Couldn't initialize KeyStore", e5);
        } catch (CertificateException e6) {
            throw ik.a("Couldn't initialize KeyStore", e6);
        } catch (NoSuchAlgorithmException e7) {
            throw ik.a("Couldn't initialize KeyStore", e7);
        } catch (IOException e8) {
            throw ik.a("Couldn't initialize KeyStore", e8);
        }
    }

    private static SSLContext a(TrustManager[] trustManagerArr) {
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            try {
                instance.init((KeyManager[]) null, trustManagerArr, (SecureRandom) null);
                return instance;
            } catch (KeyManagementException e2) {
                throw ik.a("Couldn't initialize SSLContext", e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw ik.a("Couldn't create SSLContext", e3);
        }
    }

    private static X509TrustManager a(KeyStore keyStore) {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
            try {
                instance.init(keyStore);
                TrustManager[] trustManagers = instance.getTrustManagers();
                if (trustManagers.length != 1) {
                    throw new AssertionError("More than 1 TrustManager created.");
                } else if (trustManagers[0] instanceof X509TrustManager) {
                    return (X509TrustManager) trustManagers[0];
                } else {
                    throw new AssertionError("TrustManager not of type X509: " + trustManagers[0].getClass());
                }
            } catch (KeyStoreException e2) {
                throw ik.a("Unable to initialize TrustManagerFactory with key store", e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw ik.a("Unable to create TrustManagerFactory", e3);
        }
    }

    private static void a(KeyStore keyStore, InputStream inputStream) {
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            try {
                ArrayList<X509Certificate> arrayList = new ArrayList<>();
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                byte[] bArr = new byte[10240];
                while (true) {
                    int readUnsignedShort = dataInputStream.readUnsignedShort();
                    if (readUnsignedShort != 0) {
                        if (readUnsignedShort > 10240) {
                            throw new b("Invalid length for certificate entry: " + readUnsignedShort, (Throwable) null);
                        }
                        dataInputStream.readFully(bArr, 0, readUnsignedShort);
                        arrayList.add((X509Certificate) instance.generateCertificate(new ByteArrayInputStream(bArr, 0, readUnsignedShort)));
                    } else if (dataInputStream.read() >= 0) {
                        throw new b("Found data after after zero-length header.", (Throwable) null);
                    } else {
                        for (X509Certificate x509Certificate : arrayList) {
                            try {
                                keyStore.setCertificateEntry(x509Certificate.getSubjectX500Principal().getName(), x509Certificate);
                            } catch (KeyStoreException e2) {
                                throw new b("Error loading certificate: " + e2.getMessage(), e2);
                            }
                        }
                        return;
                    }
                }
            } catch (CertificateException e3) {
                throw new b("Error loading certificate: " + e3.getMessage(), e3);
            }
        } catch (CertificateException e4) {
            throw ik.a("Couldn't initialize X.509 CertificateFactory", e4);
        }
    }

    public static void a(HttpsURLConnection httpsURLConnection) {
        httpsURLConnection.setSSLSocketFactory(b);
    }

    static /* synthetic */ void a(SSLSocket sSLSocket) {
        String[] supportedProtocols = sSLSocket.getSupportedProtocols();
        int length = supportedProtocols.length;
        int i = 0;
        while (i < length) {
            String str = supportedProtocols[i];
            if (str.equals("TLSv1.2")) {
                sSLSocket.setEnabledProtocols(c);
            } else if (str.equals("TLSv1.0")) {
                sSLSocket.setEnabledProtocols(d);
            } else if (str.equals("TLSv1")) {
                sSLSocket.setEnabledProtocols(e);
            } else {
                i++;
            }
            sSLSocket.setEnabledCipherSuites(a(sSLSocket.getSupportedCipherSuites()));
            return;
        }
        throw new SSLException("Socket doesn't support protocols \"TLSv1.2\", \"TLSv1.0\" or \"TLSv1\".");
    }

    private static String[] a(String[] strArr) {
        a aVar = f;
        if (aVar != null && Arrays.equals(aVar.a, strArr)) {
            return aVar.b;
        }
        ArrayList arrayList = new ArrayList(g.size());
        for (String str : strArr) {
            if (g.contains(str)) {
                arrayList.add(str);
            }
        }
        String[] strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
        f = new a(strArr, strArr2);
        return strArr2;
    }
}
