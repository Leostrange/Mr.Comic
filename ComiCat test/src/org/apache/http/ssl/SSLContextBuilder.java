// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.ssl;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.Socket;
import java.net.URL;
import java.security.KeyStore;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedKeyManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.ssl:
//            PrivateKeyStrategy, TrustStrategy, PrivateKeyDetails

public class SSLContextBuilder
{
    static class KeyManagerDelegate extends X509ExtendedKeyManager
    {

        private final PrivateKeyStrategy aliasStrategy;
        private final X509ExtendedKeyManager keyManager;

        public String chooseClientAlias(String as[], Principal aprincipal[], Socket socket)
        {
            as = getClientAliasMap(as, aprincipal);
            return aliasStrategy.chooseAlias(as, socket);
        }

        public String chooseEngineClientAlias(String as[], Principal aprincipal[], SSLEngine sslengine)
        {
            as = getClientAliasMap(as, aprincipal);
            return aliasStrategy.chooseAlias(as, null);
        }

        public String chooseEngineServerAlias(String s, Principal aprincipal[], SSLEngine sslengine)
        {
            s = getServerAliasMap(s, aprincipal);
            return aliasStrategy.chooseAlias(s, null);
        }

        public String chooseServerAlias(String s, Principal aprincipal[], Socket socket)
        {
            s = getServerAliasMap(s, aprincipal);
            return aliasStrategy.chooseAlias(s, socket);
        }

        public X509Certificate[] getCertificateChain(String s)
        {
            return keyManager.getCertificateChain(s);
        }

        public Map getClientAliasMap(String as[], Principal aprincipal[])
        {
            HashMap hashmap = new HashMap();
            int k = as.length;
            for (int i = 0; i < k; i++)
            {
                String s = as[i];
                String as1[] = keyManager.getClientAliases(s, aprincipal);
                if (as1 == null)
                {
                    continue;
                }
                int l = as1.length;
                for (int j = 0; j < l; j++)
                {
                    String s1 = as1[j];
                    hashmap.put(s1, new PrivateKeyDetails(s, keyManager.getCertificateChain(s1)));
                }

            }

            return hashmap;
        }

        public String[] getClientAliases(String s, Principal aprincipal[])
        {
            return keyManager.getClientAliases(s, aprincipal);
        }

        public PrivateKey getPrivateKey(String s)
        {
            return keyManager.getPrivateKey(s);
        }

        public Map getServerAliasMap(String s, Principal aprincipal[])
        {
            HashMap hashmap = new HashMap();
            aprincipal = keyManager.getServerAliases(s, aprincipal);
            if (aprincipal != null)
            {
                int j = aprincipal.length;
                for (int i = 0; i < j; i++)
                {
                    Principal principal = aprincipal[i];
                    hashmap.put(principal, new PrivateKeyDetails(s, keyManager.getCertificateChain(principal)));
                }

            }
            return hashmap;
        }

        public String[] getServerAliases(String s, Principal aprincipal[])
        {
            return keyManager.getServerAliases(s, aprincipal);
        }

        KeyManagerDelegate(X509ExtendedKeyManager x509extendedkeymanager, PrivateKeyStrategy privatekeystrategy)
        {
            keyManager = x509extendedkeymanager;
            aliasStrategy = privatekeystrategy;
        }
    }

    static class TrustManagerDelegate
        implements X509TrustManager
    {

        private final X509TrustManager trustManager;
        private final TrustStrategy trustStrategy;

        public void checkClientTrusted(X509Certificate ax509certificate[], String s)
        {
            trustManager.checkClientTrusted(ax509certificate, s);
        }

        public void checkServerTrusted(X509Certificate ax509certificate[], String s)
        {
            if (!trustStrategy.isTrusted(ax509certificate, s))
            {
                trustManager.checkServerTrusted(ax509certificate, s);
            }
        }

        public X509Certificate[] getAcceptedIssuers()
        {
            return trustManager.getAcceptedIssuers();
        }

        TrustManagerDelegate(X509TrustManager x509trustmanager, TrustStrategy truststrategy)
        {
            trustManager = x509trustmanager;
            trustStrategy = truststrategy;
        }
    }


    static final String TLS = "TLS";
    private final Set keymanagers = new LinkedHashSet();
    private String protocol;
    private SecureRandom secureRandom;
    private final Set trustmanagers = new LinkedHashSet();

    public SSLContextBuilder()
    {
    }

    public static SSLContextBuilder create()
    {
        return new SSLContextBuilder();
    }

    public SSLContext build()
    {
        Object obj;
        if (protocol != null)
        {
            obj = protocol;
        } else
        {
            obj = "TLS";
        }
        obj = SSLContext.getInstance(((String) (obj)));
        initSSLContext(((SSLContext) (obj)), keymanagers, trustmanagers, secureRandom);
        return ((SSLContext) (obj));
    }

    protected void initSSLContext(SSLContext sslcontext, Collection collection, Collection collection1, SecureRandom securerandom)
    {
        if (!collection.isEmpty())
        {
            collection = (KeyManager[])collection.toArray(new KeyManager[collection.size()]);
        } else
        {
            collection = null;
        }
        if (!collection1.isEmpty())
        {
            collection1 = (TrustManager[])collection1.toArray(new TrustManager[collection1.size()]);
        } else
        {
            collection1 = null;
        }
        sslcontext.init(collection, collection1, securerandom);
    }

    public SSLContextBuilder loadKeyMaterial(File file, char ac[], char ac1[])
    {
        return loadKeyMaterial(file, ac, ac1, null);
    }

    public SSLContextBuilder loadKeyMaterial(File file, char ac[], char ac1[], PrivateKeyStrategy privatekeystrategy)
    {
        KeyStore keystore;
        Args.notNull(file, "Keystore file");
        keystore = KeyStore.getInstance(KeyStore.getDefaultType());
        file = new FileInputStream(file);
        keystore.load(file, ac);
        file.close();
        return loadKeyMaterial(keystore, ac1, privatekeystrategy);
        ac;
        file.close();
        throw ac;
    }

    public SSLContextBuilder loadKeyMaterial(URL url, char ac[], char ac1[])
    {
        return loadKeyMaterial(url, ac, ac1, null);
    }

    public SSLContextBuilder loadKeyMaterial(URL url, char ac[], char ac1[], PrivateKeyStrategy privatekeystrategy)
    {
        KeyStore keystore;
        Args.notNull(url, "Keystore URL");
        keystore = KeyStore.getInstance(KeyStore.getDefaultType());
        url = url.openStream();
        keystore.load(url, ac);
        url.close();
        return loadKeyMaterial(keystore, ac1, privatekeystrategy);
        ac;
        url.close();
        throw ac;
    }

    public SSLContextBuilder loadKeyMaterial(KeyStore keystore, char ac[])
    {
        return loadKeyMaterial(keystore, ac, ((PrivateKeyStrategy) (null)));
    }

    public SSLContextBuilder loadKeyMaterial(KeyStore keystore, char ac[], PrivateKeyStrategy privatekeystrategy)
    {
        boolean flag = false;
        KeyManagerFactory keymanagerfactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        keymanagerfactory.init(keystore, ac);
        keystore = keymanagerfactory.getKeyManagers();
        if (keystore != null)
        {
            if (privatekeystrategy != null)
            {
                for (int i = 0; i < keystore.length; i++)
                {
                    ac = keystore[i];
                    if (ac instanceof X509ExtendedKeyManager)
                    {
                        keystore[i] = new KeyManagerDelegate((X509ExtendedKeyManager)ac, privatekeystrategy);
                    }
                }

            }
            int k = keystore.length;
            for (int j = ((flag) ? 1 : 0); j < k; j++)
            {
                ac = keystore[j];
                keymanagers.add(ac);
            }

        }
        return this;
    }

    public SSLContextBuilder loadTrustMaterial(File file)
    {
        return loadTrustMaterial(file, ((char []) (null)));
    }

    public SSLContextBuilder loadTrustMaterial(File file, char ac[])
    {
        return loadTrustMaterial(file, ac, null);
    }

    public SSLContextBuilder loadTrustMaterial(File file, char ac[], TrustStrategy truststrategy)
    {
        KeyStore keystore;
        Args.notNull(file, "Truststore file");
        keystore = KeyStore.getInstance(KeyStore.getDefaultType());
        file = new FileInputStream(file);
        keystore.load(file, ac);
        file.close();
        return loadTrustMaterial(keystore, truststrategy);
        ac;
        file.close();
        throw ac;
    }

    public SSLContextBuilder loadTrustMaterial(URL url, char ac[])
    {
        return loadTrustMaterial(url, ac, null);
    }

    public SSLContextBuilder loadTrustMaterial(URL url, char ac[], TrustStrategy truststrategy)
    {
        KeyStore keystore;
        Args.notNull(url, "Truststore URL");
        keystore = KeyStore.getInstance(KeyStore.getDefaultType());
        url = url.openStream();
        keystore.load(url, ac);
        url.close();
        return loadTrustMaterial(keystore, truststrategy);
        ac;
        url.close();
        throw ac;
    }

    public SSLContextBuilder loadTrustMaterial(KeyStore keystore, TrustStrategy truststrategy)
    {
        boolean flag = false;
        TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustmanagerfactory.init(keystore);
        keystore = trustmanagerfactory.getTrustManagers();
        if (keystore != null)
        {
            if (truststrategy != null)
            {
                for (int i = 0; i < keystore.length; i++)
                {
                    Object obj = keystore[i];
                    if (obj instanceof X509TrustManager)
                    {
                        keystore[i] = new TrustManagerDelegate((X509TrustManager)obj, truststrategy);
                    }
                }

            }
            int k = keystore.length;
            for (int j = ((flag) ? 1 : 0); j < k; j++)
            {
                truststrategy = keystore[j];
                trustmanagers.add(truststrategy);
            }

        }
        return this;
    }

    public SSLContextBuilder loadTrustMaterial(TrustStrategy truststrategy)
    {
        return loadTrustMaterial(((KeyStore) (null)), truststrategy);
    }

    public SSLContextBuilder setSecureRandom(SecureRandom securerandom)
    {
        secureRandom = securerandom;
        return this;
    }

    public SSLContextBuilder useProtocol(String s)
    {
        protocol = s;
        return this;
    }
}
