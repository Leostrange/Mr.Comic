package org.apache.http.protocol;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpStatus;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.ProtocolException;
import org.apache.http.UnsupportedHttpVersionException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.EncodingUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
public class HttpService {
    private volatile ConnectionReuseStrategy connStrategy;
    private volatile HttpExpectationVerifier expectationVerifier;
    private volatile HttpRequestHandlerMapper handlerMapper;
    private volatile HttpParams params;
    private volatile HttpProcessor processor;
    private volatile HttpResponseFactory responseFactory;

    @Deprecated
    static class HttpRequestHandlerResolverAdapter implements HttpRequestHandlerMapper {
        private final HttpRequestHandlerResolver resolver;

        public HttpRequestHandlerResolverAdapter(HttpRequestHandlerResolver httpRequestHandlerResolver) {
            this.resolver = httpRequestHandlerResolver;
        }

        public HttpRequestHandler lookup(HttpRequest httpRequest) {
            return this.resolver.lookup(httpRequest.getRequestLine().getUri());
        }
    }

    @Deprecated
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory) {
        this.params = null;
        this.processor = null;
        this.handlerMapper = null;
        this.connStrategy = null;
        this.responseFactory = null;
        this.expectationVerifier = null;
        setHttpProcessor(httpProcessor);
        setConnReuseStrategy(connectionReuseStrategy);
        setResponseFactory(httpResponseFactory);
    }

    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerMapper httpRequestHandlerMapper) {
        this(httpProcessor, connectionReuseStrategy, httpResponseFactory, httpRequestHandlerMapper, (HttpExpectationVerifier) null);
    }

    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerMapper httpRequestHandlerMapper, HttpExpectationVerifier httpExpectationVerifier) {
        this.params = null;
        this.processor = null;
        this.handlerMapper = null;
        this.connStrategy = null;
        this.responseFactory = null;
        this.expectationVerifier = null;
        this.processor = (HttpProcessor) Args.notNull(httpProcessor, "HTTP processor");
        this.connStrategy = connectionReuseStrategy == null ? DefaultConnectionReuseStrategy.INSTANCE : connectionReuseStrategy;
        this.responseFactory = httpResponseFactory == null ? DefaultHttpResponseFactory.INSTANCE : httpResponseFactory;
        this.handlerMapper = httpRequestHandlerMapper;
        this.expectationVerifier = httpExpectationVerifier;
    }

    @Deprecated
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerResolver httpRequestHandlerResolver, HttpParams httpParams) {
        this(httpProcessor, connectionReuseStrategy, httpResponseFactory, (HttpRequestHandlerMapper) new HttpRequestHandlerResolverAdapter(httpRequestHandlerResolver), (HttpExpectationVerifier) null);
        this.params = httpParams;
    }

    @Deprecated
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerResolver httpRequestHandlerResolver, HttpExpectationVerifier httpExpectationVerifier, HttpParams httpParams) {
        this(httpProcessor, connectionReuseStrategy, httpResponseFactory, (HttpRequestHandlerMapper) new HttpRequestHandlerResolverAdapter(httpRequestHandlerResolver), httpExpectationVerifier);
        this.params = httpParams;
    }

    public HttpService(HttpProcessor httpProcessor, HttpRequestHandlerMapper httpRequestHandlerMapper) {
        this(httpProcessor, (ConnectionReuseStrategy) null, (HttpResponseFactory) null, httpRequestHandlerMapper, (HttpExpectationVerifier) null);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0014, code lost:
        r1 = r5.getStatusLine().getStatusCode();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean canResponseHaveBody(org.apache.http.HttpRequest r4, org.apache.http.HttpResponse r5) {
        /*
            r3 = this;
            r0 = 0
            if (r4 == 0) goto L_0x0014
            java.lang.String r1 = "HEAD"
            org.apache.http.RequestLine r2 = r4.getRequestLine()
            java.lang.String r2 = r2.getMethod()
            boolean r1 = r1.equalsIgnoreCase(r2)
            if (r1 == 0) goto L_0x0014
        L_0x0013:
            return r0
        L_0x0014:
            org.apache.http.StatusLine r1 = r5.getStatusLine()
            int r1 = r1.getStatusCode()
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 < r2) goto L_0x0013
            r2 = 204(0xcc, float:2.86E-43)
            if (r1 == r2) goto L_0x0013
            r2 = 304(0x130, float:4.26E-43)
            if (r1 == r2) goto L_0x0013
            r2 = 205(0xcd, float:2.87E-43)
            if (r1 == r2) goto L_0x0013
            r0 = 1
            goto L_0x0013
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.protocol.HttpService.canResponseHaveBody(org.apache.http.HttpRequest, org.apache.http.HttpResponse):boolean");
    }

    /* access modifiers changed from: protected */
    public void doService(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        HttpRequestHandler httpRequestHandler = null;
        if (this.handlerMapper != null) {
            httpRequestHandler = this.handlerMapper.lookup(httpRequest);
        }
        if (httpRequestHandler != null) {
            httpRequestHandler.handle(httpRequest, httpResponse, httpContext);
        } else {
            httpResponse.setStatusCode(HttpStatus.SC_NOT_IMPLEMENTED);
        }
    }

    @Deprecated
    public HttpParams getParams() {
        return this.params;
    }

    /* access modifiers changed from: protected */
    public void handleException(HttpException httpException, HttpResponse httpResponse) {
        if (httpException instanceof MethodNotSupportedException) {
            httpResponse.setStatusCode(HttpStatus.SC_NOT_IMPLEMENTED);
        } else if (httpException instanceof UnsupportedHttpVersionException) {
            httpResponse.setStatusCode(HttpStatus.SC_HTTP_VERSION_NOT_SUPPORTED);
        } else if (httpException instanceof ProtocolException) {
            httpResponse.setStatusCode(HttpStatus.SC_BAD_REQUEST);
        } else {
            httpResponse.setStatusCode(HttpStatus.SC_INTERNAL_SERVER_ERROR);
        }
        String message = httpException.getMessage();
        if (message == null) {
            message = httpException.toString();
        }
        ByteArrayEntity byteArrayEntity = new ByteArrayEntity(EncodingUtils.getAsciiBytes(message));
        byteArrayEntity.setContentType("text/plain; charset=US-ASCII");
        httpResponse.setEntity(byteArrayEntity);
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void handleRequest(org.apache.http.HttpServerConnection r10, org.apache.http.protocol.HttpContext r11) {
        /*
            r9 = this;
            r8 = 500(0x1f4, float:7.0E-43)
            r7 = 200(0xc8, float:2.8E-43)
            r3 = 0
            java.lang.String r1 = "http.connection"
            r11.setAttribute(r1, r10)
            org.apache.http.HttpRequest r2 = r10.receiveRequestHeader()     // Catch:{ HttpException -> 0x00a4 }
            boolean r1 = r2 instanceof org.apache.http.HttpEntityEnclosingRequest     // Catch:{ HttpException -> 0x00b3 }
            if (r1 == 0) goto L_0x0046
            r0 = r2
            org.apache.http.HttpEntityEnclosingRequest r0 = (org.apache.http.HttpEntityEnclosingRequest) r0     // Catch:{ HttpException -> 0x00b3 }
            r1 = r0
            boolean r1 = r1.expectContinue()     // Catch:{ HttpException -> 0x00b3 }
            if (r1 == 0) goto L_0x003f
            org.apache.http.HttpResponseFactory r1 = r9.responseFactory     // Catch:{ HttpException -> 0x00b3 }
            org.apache.http.HttpVersion r4 = org.apache.http.HttpVersion.HTTP_1_1     // Catch:{ HttpException -> 0x00b3 }
            r5 = 100
            org.apache.http.HttpResponse r1 = r1.newHttpResponse(r4, r5, r11)     // Catch:{ HttpException -> 0x00b3 }
            org.apache.http.protocol.HttpExpectationVerifier r4 = r9.expectationVerifier     // Catch:{ HttpException -> 0x00b3 }
            if (r4 == 0) goto L_0x002f
            org.apache.http.protocol.HttpExpectationVerifier r4 = r9.expectationVerifier     // Catch:{ HttpException -> 0x0094 }
            r4.verify(r2, r1, r11)     // Catch:{ HttpException -> 0x0094 }
        L_0x002f:
            org.apache.http.StatusLine r4 = r1.getStatusLine()     // Catch:{ HttpException -> 0x00b3 }
            int r4 = r4.getStatusCode()     // Catch:{ HttpException -> 0x00b3 }
            if (r4 >= r7) goto L_0x00b6
            r10.sendResponseHeader(r1)     // Catch:{ HttpException -> 0x00b3 }
            r10.flush()     // Catch:{ HttpException -> 0x00b3 }
        L_0x003f:
            r0 = r2
            org.apache.http.HttpEntityEnclosingRequest r0 = (org.apache.http.HttpEntityEnclosingRequest) r0     // Catch:{ HttpException -> 0x00b3 }
            r1 = r0
            r10.receiveRequestEntity(r1)     // Catch:{ HttpException -> 0x00b3 }
        L_0x0046:
            java.lang.String r1 = "http.request"
            r11.setAttribute(r1, r2)     // Catch:{ HttpException -> 0x00b3 }
            if (r3 != 0) goto L_0x005f
            org.apache.http.HttpResponseFactory r1 = r9.responseFactory     // Catch:{ HttpException -> 0x00b3 }
            org.apache.http.HttpVersion r3 = org.apache.http.HttpVersion.HTTP_1_1     // Catch:{ HttpException -> 0x00b3 }
            r4 = 200(0xc8, float:2.8E-43)
            org.apache.http.HttpResponse r3 = r1.newHttpResponse(r3, r4, r11)     // Catch:{ HttpException -> 0x00b3 }
            org.apache.http.protocol.HttpProcessor r1 = r9.processor     // Catch:{ HttpException -> 0x00b3 }
            r1.process(r2, r11)     // Catch:{ HttpException -> 0x00b3 }
            r9.doService(r2, r3, r11)     // Catch:{ HttpException -> 0x00b3 }
        L_0x005f:
            boolean r1 = r2 instanceof org.apache.http.HttpEntityEnclosingRequest     // Catch:{ HttpException -> 0x00b3 }
            if (r1 == 0) goto L_0x006e
            r0 = r2
            org.apache.http.HttpEntityEnclosingRequest r0 = (org.apache.http.HttpEntityEnclosingRequest) r0     // Catch:{ HttpException -> 0x00b3 }
            r1 = r0
            org.apache.http.HttpEntity r1 = r1.getEntity()     // Catch:{ HttpException -> 0x00b3 }
            org.apache.http.util.EntityUtils.consume(r1)     // Catch:{ HttpException -> 0x00b3 }
        L_0x006e:
            r1 = r3
        L_0x006f:
            java.lang.String r3 = "http.response"
            r11.setAttribute(r3, r1)
            org.apache.http.protocol.HttpProcessor r3 = r9.processor
            r3.process(r1, r11)
            r10.sendResponseHeader(r1)
            boolean r2 = r9.canResponseHaveBody(r2, r1)
            if (r2 == 0) goto L_0x0085
            r10.sendResponseEntity(r1)
        L_0x0085:
            r10.flush()
            org.apache.http.ConnectionReuseStrategy r2 = r9.connStrategy
            boolean r1 = r2.keepAlive(r1, r11)
            if (r1 != 0) goto L_0x0093
            r10.close()
        L_0x0093:
            return
        L_0x0094:
            r1 = move-exception
            org.apache.http.HttpResponseFactory r4 = r9.responseFactory     // Catch:{ HttpException -> 0x00b3 }
            org.apache.http.HttpVersion r5 = org.apache.http.HttpVersion.HTTP_1_0     // Catch:{ HttpException -> 0x00b3 }
            r6 = 500(0x1f4, float:7.0E-43)
            org.apache.http.HttpResponse r4 = r4.newHttpResponse(r5, r6, r11)     // Catch:{ HttpException -> 0x00b3 }
            r9.handleException(r1, r4)     // Catch:{ HttpException -> 0x00b3 }
            r1 = r4
            goto L_0x002f
        L_0x00a4:
            r1 = move-exception
            r2 = r3
            r3 = r1
        L_0x00a7:
            org.apache.http.HttpResponseFactory r1 = r9.responseFactory
            org.apache.http.HttpVersion r4 = org.apache.http.HttpVersion.HTTP_1_0
            org.apache.http.HttpResponse r1 = r1.newHttpResponse(r4, r8, r11)
            r9.handleException(r3, r1)
            goto L_0x006f
        L_0x00b3:
            r1 = move-exception
            r3 = r1
            goto L_0x00a7
        L_0x00b6:
            r3 = r1
            goto L_0x0046
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.protocol.HttpService.handleRequest(org.apache.http.HttpServerConnection, org.apache.http.protocol.HttpContext):void");
    }

    @Deprecated
    public void setConnReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        this.connStrategy = connectionReuseStrategy;
    }

    @Deprecated
    public void setExpectationVerifier(HttpExpectationVerifier httpExpectationVerifier) {
        this.expectationVerifier = httpExpectationVerifier;
    }

    @Deprecated
    public void setHandlerResolver(HttpRequestHandlerResolver httpRequestHandlerResolver) {
        this.handlerMapper = new HttpRequestHandlerResolverAdapter(httpRequestHandlerResolver);
    }

    @Deprecated
    public void setHttpProcessor(HttpProcessor httpProcessor) {
        Args.notNull(httpProcessor, "HTTP processor");
        this.processor = httpProcessor;
    }

    @Deprecated
    public void setParams(HttpParams httpParams) {
        this.params = httpParams;
    }

    @Deprecated
    public void setResponseFactory(HttpResponseFactory httpResponseFactory) {
        Args.notNull(httpResponseFactory, "Response factory");
        this.responseFactory = httpResponseFactory;
    }
}
