// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpContext

public class ResponseServer
    implements HttpResponseInterceptor
{

    private final String originServer;

    public ResponseServer()
    {
        this(null);
    }

    public ResponseServer(String s)
    {
        originServer = s;
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        Args.notNull(httpresponse, "HTTP response");
        if (!httpresponse.containsHeader("Server") && originServer != null)
        {
            httpresponse.addHeader("Server", originServer);
        }
    }
}
