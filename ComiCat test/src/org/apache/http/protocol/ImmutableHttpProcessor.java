// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import java.util.List;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;

// Referenced classes of package org.apache.http.protocol:
//            HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList, HttpContext

public final class ImmutableHttpProcessor
    implements HttpProcessor
{

    private final HttpRequestInterceptor requestInterceptors[];
    private final HttpResponseInterceptor responseInterceptors[];

    public ImmutableHttpProcessor(List list, List list1)
    {
        if (list != null)
        {
            requestInterceptors = (HttpRequestInterceptor[])list.toArray(new HttpRequestInterceptor[list.size()]);
        } else
        {
            requestInterceptors = new HttpRequestInterceptor[0];
        }
        if (list1 != null)
        {
            responseInterceptors = (HttpResponseInterceptor[])list1.toArray(new HttpResponseInterceptor[list1.size()]);
            return;
        } else
        {
            responseInterceptors = new HttpResponseInterceptor[0];
            return;
        }
    }

    public ImmutableHttpProcessor(HttpRequestInterceptorList httprequestinterceptorlist, HttpResponseInterceptorList httpresponseinterceptorlist)
    {
        boolean flag = false;
        super();
        if (httprequestinterceptorlist != null)
        {
            int k = httprequestinterceptorlist.getRequestInterceptorCount();
            requestInterceptors = new HttpRequestInterceptor[k];
            for (int i = 0; i < k; i++)
            {
                requestInterceptors[i] = httprequestinterceptorlist.getRequestInterceptor(i);
            }

        } else
        {
            requestInterceptors = new HttpRequestInterceptor[0];
        }
        if (httpresponseinterceptorlist != null)
        {
            int l = httpresponseinterceptorlist.getResponseInterceptorCount();
            responseInterceptors = new HttpResponseInterceptor[l];
            for (int j = ((flag) ? 1 : 0); j < l; j++)
            {
                responseInterceptors[j] = httpresponseinterceptorlist.getResponseInterceptor(j);
            }

        } else
        {
            responseInterceptors = new HttpResponseInterceptor[0];
        }
    }

    public transient ImmutableHttpProcessor(HttpRequestInterceptor ahttprequestinterceptor[])
    {
        this(ahttprequestinterceptor, ((HttpResponseInterceptor []) (null)));
    }

    public ImmutableHttpProcessor(HttpRequestInterceptor ahttprequestinterceptor[], HttpResponseInterceptor ahttpresponseinterceptor[])
    {
        if (ahttprequestinterceptor != null)
        {
            int i = ahttprequestinterceptor.length;
            requestInterceptors = new HttpRequestInterceptor[i];
            System.arraycopy(ahttprequestinterceptor, 0, requestInterceptors, 0, i);
        } else
        {
            requestInterceptors = new HttpRequestInterceptor[0];
        }
        if (ahttpresponseinterceptor != null)
        {
            int j = ahttpresponseinterceptor.length;
            responseInterceptors = new HttpResponseInterceptor[j];
            System.arraycopy(ahttpresponseinterceptor, 0, responseInterceptors, 0, j);
            return;
        } else
        {
            responseInterceptors = new HttpResponseInterceptor[0];
            return;
        }
    }

    public transient ImmutableHttpProcessor(HttpResponseInterceptor ahttpresponseinterceptor[])
    {
        this(((HttpRequestInterceptor []) (null)), ahttpresponseinterceptor);
    }

    public final void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        HttpRequestInterceptor ahttprequestinterceptor[] = requestInterceptors;
        int j = ahttprequestinterceptor.length;
        for (int i = 0; i < j; i++)
        {
            ahttprequestinterceptor[i].process(httprequest, httpcontext);
        }

    }

    public final void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        HttpResponseInterceptor ahttpresponseinterceptor[] = responseInterceptors;
        int j = ahttpresponseinterceptor.length;
        for (int i = 0; i < j; i++)
        {
            ahttpresponseinterceptor[i].process(httpresponse, httpcontext);
        }

    }
}
