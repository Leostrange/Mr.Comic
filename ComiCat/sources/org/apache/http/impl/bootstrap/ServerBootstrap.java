package org.apache.http.impl.bootstrap;

import java.net.InetAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
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
import org.apache.http.impl.DefaultBHttpServerConnection;
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

public class ServerBootstrap {
    private ConnectionReuseStrategy connStrategy;
    private ConnectionConfig connectionConfig;
    private HttpConnectionFactory<? extends DefaultBHttpServerConnection> connectionFactory;
    private ExceptionLogger exceptionLogger;
    private HttpExpectationVerifier expectationVerifier;
    private Map<String, HttpRequestHandler> handlerMap;
    private HttpRequestHandlerMapper handlerMapper;
    private HttpProcessor httpProcessor;
    private int listenerPort;
    private InetAddress localAddress;
    private LinkedList<HttpRequestInterceptor> requestFirst;
    private LinkedList<HttpRequestInterceptor> requestLast;
    private HttpResponseFactory responseFactory;
    private LinkedList<HttpResponseInterceptor> responseFirst;
    private LinkedList<HttpResponseInterceptor> responseLast;
    private String serverInfo;
    private ServerSocketFactory serverSocketFactory;
    private SocketConfig socketConfig;
    private SSLContext sslContext;
    private SSLServerSetupHandler sslSetupHandler;

    private ServerBootstrap() {
    }

    public static ServerBootstrap bootstrap() {
        return new ServerBootstrap();
    }

    public final ServerBootstrap addInterceptorFirst(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor != null) {
            if (this.requestFirst == null) {
                this.requestFirst = new LinkedList<>();
            }
            this.requestFirst.addFirst(httpRequestInterceptor);
        }
        return this;
    }

    public final ServerBootstrap addInterceptorFirst(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor != null) {
            if (this.responseFirst == null) {
                this.responseFirst = new LinkedList<>();
            }
            this.responseFirst.addFirst(httpResponseInterceptor);
        }
        return this;
    }

    public final ServerBootstrap addInterceptorLast(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor != null) {
            if (this.requestLast == null) {
                this.requestLast = new LinkedList<>();
            }
            this.requestLast.addLast(httpRequestInterceptor);
        }
        return this;
    }

    public final ServerBootstrap addInterceptorLast(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor != null) {
            if (this.responseLast == null) {
                this.responseLast = new LinkedList<>();
            }
            this.responseLast.addLast(httpResponseInterceptor);
        }
        return this;
    }

    public HttpServer create() {
        HttpProcessor httpProcessor2 = this.httpProcessor;
        if (httpProcessor2 == null) {
            HttpProcessorBuilder create = HttpProcessorBuilder.create();
            if (this.requestFirst != null) {
                Iterator it = this.requestFirst.iterator();
                while (it.hasNext()) {
                    create.addFirst((HttpRequestInterceptor) it.next());
                }
            }
            if (this.responseFirst != null) {
                Iterator it2 = this.responseFirst.iterator();
                while (it2.hasNext()) {
                    create.addFirst((HttpResponseInterceptor) it2.next());
                }
            }
            String str = this.serverInfo;
            if (str == null) {
                str = "Apache-HttpCore/1.1";
            }
            create.addAll(new ResponseDate(), new ResponseServer(str), new ResponseContent(), new ResponseConnControl());
            if (this.requestLast != null) {
                Iterator it3 = this.requestLast.iterator();
                while (it3.hasNext()) {
                    create.addLast((HttpRequestInterceptor) it3.next());
                }
            }
            if (this.responseLast != null) {
                Iterator it4 = this.responseLast.iterator();
                while (it4.hasNext()) {
                    create.addLast((HttpResponseInterceptor) it4.next());
                }
            }
            httpProcessor2 = create.build();
        }
        HttpRequestHandlerMapper httpRequestHandlerMapper = this.handlerMapper;
        UriHttpRequestHandlerMapper uriHttpRequestHandlerMapper = httpRequestHandlerMapper;
        if (httpRequestHandlerMapper == null) {
            UriHttpRequestHandlerMapper uriHttpRequestHandlerMapper2 = new UriHttpRequestHandlerMapper();
            uriHttpRequestHandlerMapper = uriHttpRequestHandlerMapper2;
            if (this.handlerMap != null) {
                for (Map.Entry next : this.handlerMap.entrySet()) {
                    uriHttpRequestHandlerMapper2.register((String) next.getKey(), (HttpRequestHandler) next.getValue());
                }
                uriHttpRequestHandlerMapper = uriHttpRequestHandlerMapper2;
            }
        }
        ConnectionReuseStrategy connectionReuseStrategy = this.connStrategy;
        if (connectionReuseStrategy == null) {
            connectionReuseStrategy = DefaultConnectionReuseStrategy.INSTANCE;
        }
        HttpResponseFactory httpResponseFactory = this.responseFactory;
        if (httpResponseFactory == null) {
            httpResponseFactory = DefaultHttpResponseFactory.INSTANCE;
        }
        HttpService httpService = new HttpService(httpProcessor2, connectionReuseStrategy, httpResponseFactory, uriHttpRequestHandlerMapper, this.expectationVerifier);
        ServerSocketFactory serverSocketFactory2 = this.serverSocketFactory;
        if (serverSocketFactory2 == null) {
            serverSocketFactory2 = this.sslContext != null ? this.sslContext.getServerSocketFactory() : ServerSocketFactory.getDefault();
        }
        HttpConnectionFactory httpConnectionFactory = this.connectionFactory;
        if (httpConnectionFactory == null) {
            httpConnectionFactory = this.connectionConfig != null ? new DefaultBHttpServerConnectionFactory(this.connectionConfig) : DefaultBHttpServerConnectionFactory.INSTANCE;
        }
        ExceptionLogger exceptionLogger2 = this.exceptionLogger;
        if (exceptionLogger2 == null) {
            exceptionLogger2 = ExceptionLogger.NO_OP;
        }
        return new HttpServer(this.listenerPort > 0 ? this.listenerPort : 0, this.localAddress, this.socketConfig != null ? this.socketConfig : SocketConfig.DEFAULT, serverSocketFactory2, httpService, httpConnectionFactory, this.sslSetupHandler, exceptionLogger2);
    }

    public final ServerBootstrap registerHandler(String str, HttpRequestHandler httpRequestHandler) {
        if (!(str == null || httpRequestHandler == null)) {
            if (this.handlerMap == null) {
                this.handlerMap = new HashMap();
            }
            this.handlerMap.put(str, httpRequestHandler);
        }
        return this;
    }

    public final ServerBootstrap setConnectionConfig(ConnectionConfig connectionConfig2) {
        this.connectionConfig = connectionConfig2;
        return this;
    }

    public final ServerBootstrap setConnectionFactory(HttpConnectionFactory<? extends DefaultBHttpServerConnection> httpConnectionFactory) {
        this.connectionFactory = httpConnectionFactory;
        return this;
    }

    public final ServerBootstrap setConnectionReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        this.connStrategy = connectionReuseStrategy;
        return this;
    }

    public final ServerBootstrap setExceptionLogger(ExceptionLogger exceptionLogger2) {
        this.exceptionLogger = exceptionLogger2;
        return this;
    }

    public final ServerBootstrap setExpectationVerifier(HttpExpectationVerifier httpExpectationVerifier) {
        this.expectationVerifier = httpExpectationVerifier;
        return this;
    }

    public final ServerBootstrap setHandlerMapper(HttpRequestHandlerMapper httpRequestHandlerMapper) {
        this.handlerMapper = httpRequestHandlerMapper;
        return this;
    }

    public final ServerBootstrap setHttpProcessor(HttpProcessor httpProcessor2) {
        this.httpProcessor = httpProcessor2;
        return this;
    }

    public final ServerBootstrap setListenerPort(int i) {
        this.listenerPort = i;
        return this;
    }

    public final ServerBootstrap setLocalAddress(InetAddress inetAddress) {
        this.localAddress = inetAddress;
        return this;
    }

    public final ServerBootstrap setResponseFactory(HttpResponseFactory httpResponseFactory) {
        this.responseFactory = httpResponseFactory;
        return this;
    }

    public final ServerBootstrap setServerInfo(String str) {
        this.serverInfo = str;
        return this;
    }

    public final ServerBootstrap setServerSocketFactory(ServerSocketFactory serverSocketFactory2) {
        this.serverSocketFactory = serverSocketFactory2;
        return this;
    }

    public final ServerBootstrap setSocketConfig(SocketConfig socketConfig2) {
        this.socketConfig = socketConfig2;
        return this;
    }

    public final ServerBootstrap setSslContext(SSLContext sSLContext) {
        this.sslContext = sSLContext;
        return this;
    }

    public final ServerBootstrap setSslSetupHandler(SSLServerSetupHandler sSLServerSetupHandler) {
        this.sslSetupHandler = sSLServerSetupHandler;
        return this;
    }
}
