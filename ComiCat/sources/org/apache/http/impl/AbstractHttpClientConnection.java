package org.apache.http.impl;

import java.io.IOException;
import java.net.SocketTimeoutException;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.impl.entity.EntityDeserializer;
import org.apache.http.impl.entity.EntitySerializer;
import org.apache.http.impl.entity.LaxContentLengthStrategy;
import org.apache.http.impl.entity.StrictContentLengthStrategy;
import org.apache.http.impl.io.DefaultHttpResponseParser;
import org.apache.http.impl.io.HttpRequestWriter;
import org.apache.http.io.EofSensor;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
public abstract class AbstractHttpClientConnection implements HttpClientConnection {
    private final EntityDeserializer entitydeserializer = createEntityDeserializer();
    private final EntitySerializer entityserializer = createEntitySerializer();
    private EofSensor eofSensor = null;
    private SessionInputBuffer inbuffer = null;
    private HttpConnectionMetricsImpl metrics = null;
    private SessionOutputBuffer outbuffer = null;
    private HttpMessageWriter<HttpRequest> requestWriter = null;
    private HttpMessageParser<HttpResponse> responseParser = null;

    /* access modifiers changed from: protected */
    public abstract void assertOpen();

    /* access modifiers changed from: protected */
    public HttpConnectionMetricsImpl createConnectionMetrics(HttpTransportMetrics httpTransportMetrics, HttpTransportMetrics httpTransportMetrics2) {
        return new HttpConnectionMetricsImpl(httpTransportMetrics, httpTransportMetrics2);
    }

    /* access modifiers changed from: protected */
    public EntityDeserializer createEntityDeserializer() {
        return new EntityDeserializer(new LaxContentLengthStrategy());
    }

    /* access modifiers changed from: protected */
    public EntitySerializer createEntitySerializer() {
        return new EntitySerializer(new StrictContentLengthStrategy());
    }

    /* access modifiers changed from: protected */
    public HttpResponseFactory createHttpResponseFactory() {
        return DefaultHttpResponseFactory.INSTANCE;
    }

    /* access modifiers changed from: protected */
    public HttpMessageWriter<HttpRequest> createRequestWriter(SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        return new HttpRequestWriter(sessionOutputBuffer, (LineFormatter) null, httpParams);
    }

    /* access modifiers changed from: protected */
    public HttpMessageParser<HttpResponse> createResponseParser(SessionInputBuffer sessionInputBuffer, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        return new DefaultHttpResponseParser(sessionInputBuffer, (LineParser) null, httpResponseFactory, httpParams);
    }

    /* access modifiers changed from: protected */
    public void doFlush() {
        this.outbuffer.flush();
    }

    public void flush() {
        assertOpen();
        doFlush();
    }

    public HttpConnectionMetrics getMetrics() {
        return this.metrics;
    }

    /* access modifiers changed from: protected */
    public void init(SessionInputBuffer sessionInputBuffer, SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        this.inbuffer = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Input session buffer");
        this.outbuffer = (SessionOutputBuffer) Args.notNull(sessionOutputBuffer, "Output session buffer");
        if (sessionInputBuffer instanceof EofSensor) {
            this.eofSensor = (EofSensor) sessionInputBuffer;
        }
        this.responseParser = createResponseParser(sessionInputBuffer, createHttpResponseFactory(), httpParams);
        this.requestWriter = createRequestWriter(sessionOutputBuffer, httpParams);
        this.metrics = createConnectionMetrics(sessionInputBuffer.getMetrics(), sessionOutputBuffer.getMetrics());
    }

    /* access modifiers changed from: protected */
    public boolean isEof() {
        return this.eofSensor != null && this.eofSensor.isEof();
    }

    public boolean isResponseAvailable(int i) {
        assertOpen();
        try {
            return this.inbuffer.isDataAvailable(i);
        } catch (SocketTimeoutException e) {
            return false;
        }
    }

    public boolean isStale() {
        if (!isOpen() || isEof()) {
            return true;
        }
        try {
            this.inbuffer.isDataAvailable(1);
            return isEof();
        } catch (SocketTimeoutException e) {
            return false;
        } catch (IOException e2) {
            return true;
        }
    }

    public void receiveResponseEntity(HttpResponse httpResponse) {
        Args.notNull(httpResponse, "HTTP response");
        assertOpen();
        httpResponse.setEntity(this.entitydeserializer.deserialize(this.inbuffer, httpResponse));
    }

    public HttpResponse receiveResponseHeader() {
        assertOpen();
        HttpResponse parse = this.responseParser.parse();
        if (parse.getStatusLine().getStatusCode() >= 200) {
            this.metrics.incrementResponseCount();
        }
        return parse;
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        Args.notNull(httpEntityEnclosingRequest, "HTTP request");
        assertOpen();
        if (httpEntityEnclosingRequest.getEntity() != null) {
            this.entityserializer.serialize(this.outbuffer, httpEntityEnclosingRequest, httpEntityEnclosingRequest.getEntity());
        }
    }

    public void sendRequestHeader(HttpRequest httpRequest) {
        Args.notNull(httpRequest, "HTTP request");
        assertOpen();
        this.requestWriter.write(httpRequest);
        this.metrics.incrementRequestCount();
    }
}
