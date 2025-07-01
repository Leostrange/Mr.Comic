// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.RequestLine;

// Referenced classes of package org.apache.http.protocol:
//            HttpRequestHandlerMapper, HttpService, HttpRequestHandlerResolver, HttpRequestHandler

static class resolver
    implements HttpRequestHandlerMapper
{

    private final HttpRequestHandlerResolver resolver;

    public HttpRequestHandler lookup(HttpRequest httprequest)
    {
        return resolver.lookup(httprequest.getRequestLine().getUri());
    }

    public (HttpRequestHandlerResolver httprequesthandlerresolver)
    {
        resolver = httprequesthandlerresolver;
    }
}
