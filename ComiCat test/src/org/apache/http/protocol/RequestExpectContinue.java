// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpContext

public class RequestExpectContinue
    implements HttpRequestInterceptor
{

    private final boolean activeByDefault;

    public RequestExpectContinue()
    {
        this(false);
    }

    public RequestExpectContinue(boolean flag)
    {
        activeByDefault = flag;
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        Args.notNull(httprequest, "HTTP request");
        if (!httprequest.containsHeader("Expect") && (httprequest instanceof HttpEntityEnclosingRequest))
        {
            httpcontext = httprequest.getRequestLine().getProtocolVersion();
            HttpEntity httpentity = ((HttpEntityEnclosingRequest)httprequest).getEntity();
            if (httpentity != null && httpentity.getContentLength() != 0L && !httpcontext.lessEquals(HttpVersion.HTTP_1_0) && httprequest.getParams().getBooleanParameter("http.protocol.expect-continue", activeByDefault))
            {
                httprequest.addHeader("Expect", "100-continue");
            }
        }
    }
}
