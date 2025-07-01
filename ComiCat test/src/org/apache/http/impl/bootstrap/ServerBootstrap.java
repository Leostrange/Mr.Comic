// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.bootstrap;

import java.net.InetAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpServerConnectionFactory;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.protocol.HttpExpectationVerifier;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestHandler;
import org.apache.http.protocol.HttpRequestHandlerMapper;
import org.apache.http.protocol.HttpService;
import org.apache.http.protocol.ResponseConnControl;
import org.apache.http.protocol.ResponseContent;
import org.apache.http.protocol.ResponseDate;
import org.apache.http.protocol.ResponseServer;
import org.apache.http.protocol.UriHttpRequestHandlerMapper;

// Referenced classes of package org.apache.http.impl.bootstrap:
//            HttpServer, SSLServerSetupHandler

public class ServerBootstrap
{

    private ConnectionReuseStrategy connStrategy;
    private ConnectionConfig connectionConfig;
    private HttpConnectionFactory connectionFactory;
    private ExceptionLogger exceptionLogger;
    private HttpExpectationVerifier expectationVerifier;
    private Map handlerMap;
    private HttpRequestHandlerMapper handlerMapper;
    private HttpProcessor httpProcessor;
    private int listenerPort;
    private InetAddress localAddress;
    private LinkedList requestFirst;
    private LinkedList requestLast;
    private HttpResponseFactory responseFactory;
    private LinkedList responseFirst;
    private LinkedList responseLast;
    private String serverInfo;
    private ServerSocketFactory serverSocketFactory;
    private SocketConfig socketConfig;
    private SSLContext sslContext;
    private SSLServerSetupHandler sslSetupHandler;

    private ServerBootstrap()
    {
    }

    public static ServerBootstrap bootstrap()
    {
        return new ServerBootstrap();
    }

    public final ServerBootstrap addInterceptorFirst(HttpRequestInterceptor httprequestinterceptor)
    {
        if (httprequestinterceptor == null)
        {
            return this;
        }
        if (requestFirst == null)
        {
            requestFirst = new LinkedList();
        }
        requestFirst.addFirst(httprequestinterceptor);
        return this;
    }

    public final ServerBootstrap addInterceptorFirst(HttpResponseInterceptor httpresponseinterceptor)
    {
        if (httpresponseinterceptor == null)
        {
            return this;
        }
        if (responseFirst == null)
        {
            responseFirst = new LinkedList();
        }
        responseFirst.addFirst(httpresponseinterceptor);
        return this;
    }

    public final ServerBootstrap addInterceptorLast(HttpRequestInterceptor httprequestinterceptor)
    {
        if (httprequestinterceptor == null)
        {
            return this;
        }
        if (requestLast == null)
        {
            requestLast = new LinkedList();
        }
        requestLast.addLast(httprequestinterceptor);
        return this;
    }

    public final ServerBootstrap addInterceptorLast(HttpResponseInterceptor httpresponseinterceptor)
    {
        if (httpresponseinterceptor == null)
        {
            return this;
        }
        if (responseLast == null)
        {
            responseLast = new LinkedList();
        }
        responseLast.addLast(httpresponseinterceptor);
        return this;
    }

    public HttpServer create()
    {
        Object obj1 = httpProcessor;
        Object obj = obj1;
        if (obj1 == null)
        {
            HttpProcessorBuilder httpprocessorbuilder = HttpProcessorBuilder.create();
            if (requestFirst != null)
            {
                for (obj = requestFirst.iterator(); ((Iterator) (obj)).hasNext(); httpprocessorbuilder.addFirst((HttpRequestInterceptor)((Iterator) (obj)).next())) { }
            }
            if (responseFirst != null)
            {
                for (obj = responseFirst.iterator(); ((Iterator) (obj)).hasNext(); httpprocessorbuilder.addFirst((HttpResponseInterceptor)((Iterator) (obj)).next())) { }
            }
            obj1 = serverInfo;
            obj = obj1;
            if (obj1 == null)
            {
                obj = "Apache-HttpCore/1.1";
            }
            httpprocessorbuilder.addAll(new HttpResponseInterceptor[] {
                new ResponseDate(), new ResponseServer(((String) (obj))), new ResponseContent(), new ResponseConnControl()
            });
            if (requestLast != null)
            {
                for (obj = requestLast.iterator(); ((Iterator) (obj)).hasNext(); httpprocessorbuilder.addLast((HttpRequestInterceptor)((Iterator) (obj)).next())) { }
            }
            if (responseLast != null)
            {
                for (obj = responseLast.iterator(); ((Iterator) (obj)).hasNext(); httpprocessorbuilder.addLast((HttpResponseInterceptor)((Iterator) (obj)).next())) { }
            }
            obj = httpprocessorbuilder.build();
        }
        Object obj2 = handlerMapper;
        obj1 = obj2;
        if (obj2 == null)
        {
            obj2 = new UriHttpRequestHandlerMapper();
            obj1 = obj2;
            if (handlerMap != null)
            {
                Iterator iterator = handlerMap.entrySet().iterator();
                do
                {
                    obj1 = obj2;
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    obj1 = (java.util.Map.Entry)iterator.next();
                    ((UriHttpRequestHandlerMapper) (obj2)).register((String)((java.util.Map.Entry) (obj1)).getKey(), (HttpRequestHandler)((java.util.Map.Entry) (obj1)).getValue());
                } while (true);
            }
        }
        Object obj3 = connStrategy;
        obj2 = obj3;
        if (obj3 == null)
        {
            obj2 = DefaultConnectionReuseStrategy.INSTANCE;
        }
        Object obj4 = responseFactory;
        obj3 = obj4;
        if (obj4 == null)
        {
            obj3 = DefaultHttpResponseFactory.INSTANCE;
        }
        obj4 = new HttpService(((HttpProcessor) (obj)), ((ConnectionReuseStrategy) (obj2)), ((HttpResponseFactory) (obj3)), ((HttpRequestHandlerMapper) (obj1)), expectationVerifier);
        obj1 = serverSocketFactory;
        obj = obj1;
        InetAddress inetaddress;
        int i;
        if (obj1 == null)
        {
            if (sslContext != null)
            {
                obj = sslContext.getServerSocketFactory();
            } else
            {
                obj = ServerSocketFactory.getDefault();
            }
        }
        obj2 = connectionFactory;
        obj1 = obj2;
        if (obj2 == null)
        {
            if (connectionConfig != null)
            {
                obj1 = new DefaultBHttpServerConnectionFactory(connectionConfig);
            } else
            {
                obj1 = DefaultBHttpServerConnectionFactory.INSTANCE;
            }
        }
        obj3 = exceptionLogger;
        obj2 = obj3;
        if (obj3 == null)
        {
            obj2 = ExceptionLogger.NO_OP;
        }
        if (listenerPort > 0)
        {
            i = listenerPort;
        } else
        {
            i = 0;
        }
        inetaddress = localAddress;
        if (socketConfig != null)
        {
            obj3 = socketConfig;
        } else
        {
            obj3 = SocketConfig.DEFAULT;
        }
        return new HttpServer(i, inetaddress, ((SocketConfig) (obj3)), ((ServerSocketFactory) (obj)), ((HttpService) (obj4)), ((HttpConnectionFactory) (obj1)), sslSetupHandler, ((ExceptionLogger) (obj2)));
    }

    public final ServerBootstrap registerHandler(String s, HttpRequestHandler httprequesthandler)
    {
        if (s == null || httprequesthandler == null)
        {
            return this;
        }
        if (handlerMap == null)
        {
            handlerMap = new HashMap();
        }
        handlerMap.put(s, httprequesthandler);
        return this;
    }

    public final ServerBootstrap setConnectionConfig(ConnectionConfig connectionconfig)
    {
        connectionConfig = connectionconfig;
        return this;
    }

    public final ServerBootstrap setConnectionFactory(HttpConnectionFactory httpconnectionfactory)
    {
        connectionFactory = httpconnectionfactory;
        return this;
    }

    public final ServerBootstrap setConnectionReuseStrategy(ConnectionReuseStrategy connectionreusestrategy)
    {
        connStrategy = connectionreusestrategy;
        return this;
    }

    public final ServerBootstrap setExceptionLogger(ExceptionLogger exceptionlogger)
    {
        exceptionLogger = exceptionlogger;
        return this;
    }

    public final ServerBootstrap setExpectationVerifier(HttpExpectationVerifier httpexpectationverifier)
    {
        expectationVerifier = httpexpectationverifier;
        return this;
    }

    public final ServerBootstrap setHandlerMapper(HttpRequestHandlerMapper httprequesthandlermapper)
    {
        handlerMapper = httprequesthandlermapper;
        return this;
    }

    public final ServerBootstrap setHttpProcessor(HttpProcessor httpprocessor)
    {
        httpProcessor = httpprocessor;
        return this;
    }

    public final ServerBootstrap setListenerPort(int i)
    {
        listenerPort = i;
        return this;
    }

    public final ServerBootstrap setLocalAddress(InetAddress inetaddress)
    {
        localAddress = inetaddress;
        return this;
    }

    public final ServerBootstrap setResponseFactory(HttpResponseFactory httpresponsefactory)
    {
        responseFactory = httpresponsefactory;
        return this;
    }

    public final ServerBootstrap setServerInfo(String s)
    {
        serverInfo = s;
        return this;
    }

    public final ServerBootstrap setServerSocketFactory(ServerSocketFactory serversocketfactory)
    {
        serverSocketFactory = serversocketfactory;
        return this;
    }

    public final ServerBootstrap setSocketConfig(SocketConfig socketconfig)
    {
        socketConfig = socketconfig;
        return this;
    }

    public final ServerBootstrap setSslContext(SSLContext sslcontext)
    {
        sslContext = sslcontext;
        return this;
    }

    public final ServerBootstrap setSslSetupHandler(SSLServerSetupHandler sslserversetuphandler)
    {
        sslSetupHandler = sslserversetuphandler;
        return this;
    }
}
