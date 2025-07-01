// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.ssl;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

// Referenced classes of package org.apache.http.ssl:
//            SSLContextBuilder, TrustStrategy

static class trustStrategy
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

    (X509TrustManager x509trustmanager, TrustStrategy truststrategy)
    {
        trustManager = x509trustmanager;
        trustStrategy = truststrategy;
    }
}
