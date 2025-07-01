// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.ssl;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;

// Referenced classes of package org.apache.http.ssl:
//            SSLInitializationException, SSLContextBuilder

public class SSLContexts
{

    public SSLContexts()
    {
    }

    public static SSLContext createDefault()
    {
        SSLContext sslcontext;
        try
        {
            sslcontext = SSLContext.getInstance("TLS");
            sslcontext.init(null, null, null);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new SSLInitializationException(nosuchalgorithmexception.getMessage(), nosuchalgorithmexception);
        }
        catch (KeyManagementException keymanagementexception)
        {
            throw new SSLInitializationException(keymanagementexception.getMessage(), keymanagementexception);
        }
        return sslcontext;
    }

    public static SSLContext createSystemDefault()
    {
        SSLContext sslcontext;
        try
        {
            sslcontext = SSLContext.getDefault();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return createDefault();
        }
        return sslcontext;
    }

    public static SSLContextBuilder custom()
    {
        return SSLContextBuilder.create();
    }
}
