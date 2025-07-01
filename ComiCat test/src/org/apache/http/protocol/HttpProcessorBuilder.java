// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;

// Referenced classes of package org.apache.http.protocol:
//            ChainBuilder, ImmutableHttpProcessor, HttpProcessor

public class HttpProcessorBuilder
{

    private ChainBuilder requestChainBuilder;
    private ChainBuilder responseChainBuilder;

    HttpProcessorBuilder()
    {
    }

    public static HttpProcessorBuilder create()
    {
        return new HttpProcessorBuilder();
    }

    private ChainBuilder getRequestChainBuilder()
    {
        if (requestChainBuilder == null)
        {
            requestChainBuilder = new ChainBuilder();
        }
        return requestChainBuilder;
    }

    private ChainBuilder getResponseChainBuilder()
    {
        if (responseChainBuilder == null)
        {
            responseChainBuilder = new ChainBuilder();
        }
        return responseChainBuilder;
    }

    public HttpProcessorBuilder add(HttpRequestInterceptor httprequestinterceptor)
    {
        return addLast(httprequestinterceptor);
    }

    public HttpProcessorBuilder add(HttpResponseInterceptor httpresponseinterceptor)
    {
        return addLast(httpresponseinterceptor);
    }

    public transient HttpProcessorBuilder addAll(HttpRequestInterceptor ahttprequestinterceptor[])
    {
        return addAllLast(ahttprequestinterceptor);
    }

    public transient HttpProcessorBuilder addAll(HttpResponseInterceptor ahttpresponseinterceptor[])
    {
        return addAllLast(ahttpresponseinterceptor);
    }

    public transient HttpProcessorBuilder addAllFirst(HttpRequestInterceptor ahttprequestinterceptor[])
    {
        if (ahttprequestinterceptor == null)
        {
            return this;
        } else
        {
            getRequestChainBuilder().addAllFirst(ahttprequestinterceptor);
            return this;
        }
    }

    public transient HttpProcessorBuilder addAllFirst(HttpResponseInterceptor ahttpresponseinterceptor[])
    {
        if (ahttpresponseinterceptor == null)
        {
            return this;
        } else
        {
            getResponseChainBuilder().addAllFirst(ahttpresponseinterceptor);
            return this;
        }
    }

    public transient HttpProcessorBuilder addAllLast(HttpRequestInterceptor ahttprequestinterceptor[])
    {
        if (ahttprequestinterceptor == null)
        {
            return this;
        } else
        {
            getRequestChainBuilder().addAllLast(ahttprequestinterceptor);
            return this;
        }
    }

    public transient HttpProcessorBuilder addAllLast(HttpResponseInterceptor ahttpresponseinterceptor[])
    {
        if (ahttpresponseinterceptor == null)
        {
            return this;
        } else
        {
            getResponseChainBuilder().addAllLast(ahttpresponseinterceptor);
            return this;
        }
    }

    public HttpProcessorBuilder addFirst(HttpRequestInterceptor httprequestinterceptor)
    {
        if (httprequestinterceptor == null)
        {
            return this;
        } else
        {
            getRequestChainBuilder().addFirst(httprequestinterceptor);
            return this;
        }
    }

    public HttpProcessorBuilder addFirst(HttpResponseInterceptor httpresponseinterceptor)
    {
        if (httpresponseinterceptor == null)
        {
            return this;
        } else
        {
            getResponseChainBuilder().addFirst(httpresponseinterceptor);
            return this;
        }
    }

    public HttpProcessorBuilder addLast(HttpRequestInterceptor httprequestinterceptor)
    {
        if (httprequestinterceptor == null)
        {
            return this;
        } else
        {
            getRequestChainBuilder().addLast(httprequestinterceptor);
            return this;
        }
    }

    public HttpProcessorBuilder addLast(HttpResponseInterceptor httpresponseinterceptor)
    {
        if (httpresponseinterceptor == null)
        {
            return this;
        } else
        {
            getResponseChainBuilder().addLast(httpresponseinterceptor);
            return this;
        }
    }

    public HttpProcessor build()
    {
        java.util.LinkedList linkedlist1 = null;
        java.util.LinkedList linkedlist;
        if (requestChainBuilder != null)
        {
            linkedlist = requestChainBuilder.build();
        } else
        {
            linkedlist = null;
        }
        if (responseChainBuilder != null)
        {
            linkedlist1 = responseChainBuilder.build();
        }
        return new ImmutableHttpProcessor(linkedlist, linkedlist1);
    }
}
