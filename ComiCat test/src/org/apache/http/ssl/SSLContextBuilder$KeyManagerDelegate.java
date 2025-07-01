// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.ssl;

import java.net.Socket;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedKeyManager;

// Referenced classes of package org.apache.http.ssl:
//            SSLContextBuilder, PrivateKeyStrategy, PrivateKeyDetails

static class aliasStrategy extends X509ExtendedKeyManager
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

    (X509ExtendedKeyManager x509extendedkeymanager, PrivateKeyStrategy privatekeystrategy)
    {
        keyManager = x509extendedkeymanager;
        aliasStrategy = privatekeystrategy;
    }
}
