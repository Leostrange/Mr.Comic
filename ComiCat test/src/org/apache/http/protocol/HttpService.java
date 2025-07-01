// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.HttpVersion;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.UnsupportedHttpVersionException;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.EncodingUtils;
import org.apache.http.util.EntityUtils;

// Referenced classes of package org.apache.http.protocol:
//            HttpProcessor, HttpRequestHandlerMapper, HttpRequestHandler, HttpContext, 
//            HttpExpectationVerifier, HttpRequestHandlerResolver

public class HttpService
{
    static class HttpRequestHandlerResolverAdapter
        implements HttpRequestHandlerMapper
    {

        private final HttpRequestHandlerResolver resolver;

        public HttpRequestHandler lookup(HttpRequest httprequest)
        {
            return resolver.lookup(httprequest.getRequestLine().getUri());
        }

        public HttpRequestHandlerResolverAdapter(HttpRequestHandlerResolver httprequesthandlerresolver)
        {
            resolver = httprequesthandlerresolver;
        }
    }


    private volatile ConnectionReuseStrategy connStrategy;
    private volatile HttpExpectationVerifier expectationVerifier;
    private volatile HttpRequestHandlerMapper handlerMapper;
    private volatile HttpParams params;
    private volatile HttpProcessor processor;
    private volatile HttpResponseFactory responseFactory;

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory)
    {
        params = null;
        processor = null;
        handlerMapper = null;
        connStrategy = null;
        responseFactory = null;
        expectationVerifier = null;
        setHttpProcessor(httpprocessor);
        setConnReuseStrategy(connectionreusestrategy);
        setResponseFactory(httpresponsefactory);
    }

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory, HttpRequestHandlerMapper httprequesthandlermapper)
    {
        this(httpprocessor, connectionreusestrategy, httpresponsefactory, httprequesthandlermapper, ((HttpExpectationVerifier) (null)));
    }

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory, HttpRequestHandlerMapper httprequesthandlermapper, HttpExpectationVerifier httpexpectationverifier)
    {
        params = null;
        processor = null;
        handlerMapper = null;
        connStrategy = null;
        responseFactory = null;
        expectationVerifier = null;
        processor = (HttpProcessor)Args.notNull(httpprocessor, "HTTP processor");
        if (connectionreusestrategy == null)
        {
            connectionreusestrategy = DefaultConnectionReuseStrategy.INSTANCE;
        }
        connStrategy = connectionreusestrategy;
        if (httpresponsefactory == null)
        {
            httpresponsefactory = DefaultHttpResponseFactory.INSTANCE;
        }
        responseFactory = httpresponsefactory;
        handlerMapper = httprequesthandlermapper;
        expectationVerifier = httpexpectationverifier;
    }

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory, HttpRequestHandlerResolver httprequesthandlerresolver, HttpParams httpparams)
    {
        this(httpprocessor, connectionreusestrategy, httpresponsefactory, ((HttpRequestHandlerMapper) (new HttpRequestHandlerResolverAdapter(httprequesthandlerresolver))), ((HttpExpectationVerifier) (null)));
        params = httpparams;
    }

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory, HttpRequestHandlerResolver httprequesthandlerresolver, HttpExpectationVerifier httpexpectationverifier, HttpParams httpparams)
    {
        this(httpprocessor, connectionreusestrategy, httpresponsefactory, ((HttpRequestHandlerMapper) (new HttpRequestHandlerResolverAdapter(httprequesthandlerresolver))), httpexpectationverifier);
        params = httpparams;
    }

    public HttpService(HttpProcessor httpprocessor, HttpRequestHandlerMapper httprequesthandlermapper)
    {
        this(httpprocessor, null, null, httprequesthandlermapper, ((HttpExpectationVerifier) (null)));
    }

    private boolean canResponseHaveBody(HttpRequest httprequest, HttpResponse httpresponse)
    {
        int i;
        if (httprequest == null || !"HEAD".equalsIgnoreCase(httprequest.getRequestLine().getMethod()))
        {
            if ((i = httpresponse.getStatusLine().getStatusCode()) >= 200 && i != 204 && i != 304 && i != 205)
            {
                return true;
            }
        }
        return false;
    }

    protected void doService(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
    {
        HttpRequestHandler httprequesthandler = null;
        if (handlerMapper != null)
        {
            httprequesthandler = handlerMapper.lookup(httprequest);
        }
        if (httprequesthandler != null)
        {
            httprequesthandler.handle(httprequest, httpresponse, httpcontext);
            return;
        } else
        {
            httpresponse.setStatusCode(501);
            return;
        }
    }

    public HttpParams getParams()
    {
        return params;
    }

    protected void handleException(HttpException httpexception, HttpResponse httpresponse)
    {
        String s;
        String s1;
        if (httpexception instanceof MethodNotSupportedException)
        {
            httpresponse.setStatusCode(501);
        } else
        if (httpexception instanceof UnsupportedHttpVersionException)
        {
            httpresponse.setStatusCode(505);
        } else
        if (httpexception instanceof ProtocolException)
        {
            httpresponse.setStatusCode(400);
        } else
        {
            httpresponse.setStatusCode(500);
        }
        s1 = httpexception.getMessage();
        s = s1;
        if (s1 == null)
        {
            s = httpexception.toString();
        }
        httpexception = new ByteArrayEntity(EncodingUtils.getAsciiBytes(s));
        httpexception.setContentType("text/plain; charset=US-ASCII");
        httpresponse.setEntity(httpexception);
    }

    public void handleRequest(HttpServerConnection httpserverconnection, HttpContext httpcontext)
    {
        HttpResponse httpresponse1;
        httpresponse1 = null;
        httpcontext.setAttribute("http.connection", httpserverconnection);
        HttpRequest httprequest = httpserverconnection.receiveRequestHeader();
        HttpResponse httpresponse = httpresponse1;
        if (!(httprequest instanceof HttpEntityEnclosingRequest)) goto _L2; else goto _L1
_L1:
        if (!((HttpEntityEnclosingRequest)httprequest).expectContinue()) goto _L4; else goto _L3
_L3:
        HttpResponse httpresponse2;
        HttpExpectationVerifier httpexpectationverifier;
        httpresponse2 = responseFactory.newHttpResponse(HttpVersion.HTTP_1_1, 100, httpcontext);
        httpexpectationverifier = expectationVerifier;
        httpresponse = httpresponse2;
        if (httpexpectationverifier == null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        expectationVerifier.verify(httprequest, httpresponse2, httpcontext);
        httpresponse = httpresponse2;
_L6:
        if (httpresponse.getStatusLine().getStatusCode() >= 200) goto _L2; else goto _L5
_L5:
        httpserverconnection.sendResponseHeader(httpresponse);
        httpserverconnection.flush();
_L4:
        httpserverconnection.receiveRequestEntity((HttpEntityEnclosingRequest)httprequest);
        httpresponse = httpresponse1;
_L2:
        httpcontext.setAttribute("http.request", httprequest);
        httpresponse1 = httpresponse;
        if (httpresponse != null)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        httpresponse1 = responseFactory.newHttpResponse(HttpVersion.HTTP_1_1, 200, httpcontext);
        processor.process(httprequest, httpcontext);
        doService(httprequest, httpresponse1, httpcontext);
        if (httprequest instanceof HttpEntityEnclosingRequest)
        {
            EntityUtils.consume(((HttpEntityEnclosingRequest)httprequest).getEntity());
        }
_L7:
        httpcontext.setAttribute("http.response", httpresponse1);
        processor.process(httpresponse1, httpcontext);
        httpserverconnection.sendResponseHeader(httpresponse1);
        if (canResponseHaveBody(httprequest, httpresponse1))
        {
            httpserverconnection.sendResponseEntity(httpresponse1);
        }
        httpserverconnection.flush();
        if (!connStrategy.keepAlive(httpresponse1, httpcontext))
        {
            httpserverconnection.close();
        }
        return;
        HttpException httpexception1;
        httpexception1;
        httpresponse = responseFactory.newHttpResponse(HttpVersion.HTTP_1_0, 500, httpcontext);
        handleException(httpexception1, httpresponse);
          goto _L6
        HttpException httpexception;
        httpexception;
        httprequest = null;
_L8:
        httpresponse1 = responseFactory.newHttpResponse(HttpVersion.HTTP_1_0, 500, httpcontext);
        handleException(httpexception, httpresponse1);
          goto _L7
        httpexception;
          goto _L8
    }

    public void setConnReuseStrategy(ConnectionReuseStrategy connectionreusestrategy)
    {
        Args.notNull(connectionreusestrategy, "Connection reuse strategy");
        connStrategy = connectionreusestrategy;
    }

    public void setExpectationVerifier(HttpExpectationVerifier httpexpectationverifier)
    {
        expectationVerifier = httpexpectationverifier;
    }

    public void setHandlerResolver(HttpRequestHandlerResolver httprequesthandlerresolver)
    {
        handlerMapper = new HttpRequestHandlerResolverAdapter(httprequesthandlerresolver);
    }

    public void setHttpProcessor(HttpProcessor httpprocessor)
    {
        Args.notNull(httpprocessor, "HTTP processor");
        processor = httpprocessor;
    }

    public void setParams(HttpParams httpparams)
    {
        params = httpparams;
    }

    public void setResponseFactory(HttpResponseFactory httpresponsefactory)
    {
        Args.notNull(httpresponsefactory, "Response factory");
        responseFactory = httpresponsefactory;
    }
}
