package org.apache.http.impl;

import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.io.DefaultHttpRequestWriterFactory;
import org.apache.http.impl.io.DefaultHttpResponseParserFactory;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.HttpMessageWriterFactory;
import org.apache.http.util.Args;

public class DefaultBHttpClientConnection extends BHttpConnectionBase implements HttpClientConnection {
    private final HttpMessageWriter<HttpRequest> requestWriter;
    private final HttpMessageParser<HttpResponse> responseParser;

    public DefaultBHttpClientConnection(int i) {
        this(i, i, (CharsetDecoder) null, (CharsetEncoder) null, (MessageConstraints) null, (ContentLengthStrategy) null, (ContentLengthStrategy) null, (HttpMessageWriterFactory<HttpRequest>) null, (HttpMessageParserFactory<HttpResponse>) null);
    }

    public DefaultBHttpClientConnection(int i, int i2, CharsetDecoder charsetDecoder, CharsetEncoder charsetEncoder, MessageConstraints messageConstraints, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2, HttpMessageWriterFactory<HttpRequest> httpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        super(i, i2, charsetDecoder, charsetEncoder, messageConstraints, contentLengthStrategy, contentLengthStrategy2);
        this.requestWriter = (httpMessageWriterFactory == null ? DefaultHttpRequestWriterFactory.INSTANCE : httpMessageWriterFactory).create(getSessionOutputBuffer());
        this.responseParser = (httpMessageParserFactory == null ? DefaultHttpResponseParserFactory.INSTANCE : httpMessageParserFactory).create(getSessionInputBuffer(), messageConstraints);
    }

    public DefaultBHttpClientConnection(int i, CharsetDecoder charsetDecoder, CharsetEncoder charsetEncoder, MessageConstraints messageConstraints) {
        this(i, i, charsetDecoder, charsetEncoder, messageConstraints, (ContentLengthStrategy) null, (ContentLengthStrategy) null, (HttpMessageWriterFactory<HttpRequest>) null, (HttpMessageParserFactory<HttpResponse>) null);
    }

    public void bind(Socket socket) {
        super.bind(socket);
    }

    public void flush() {
        ensureOpen();
        doFlush();
    }

    public boolean isResponseAvailable(int i) {
        ensureOpen();
        try {
            return awaitInput(i);
        } catch (SocketTimeoutException e) {
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void onRequestSubmitted(HttpRequest httpRequest) {
    }

    /* access modifiers changed from: protected */
    public void onResponseReceived(HttpResponse httpResponse) {
    }

    public void receiveResponseEntity(HttpResponse httpResponse) {
        Args.notNull(httpResponse, "HTTP response");
        ensureOpen();
        httpResponse.setEntity(prepareInput(httpResponse));
    }

    public HttpResponse receiveResponseHeader() {
        ensureOpen();
        HttpResponse parse = this.responseParser.parse();
        onResponseReceived(parse);
        if (parse.getStatusLine().getStatusCode() >= 200) {
            incrementResponseCount();
        }
        return parse;
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        Args.notNull(httpEntityEnclosingRequest, "HTTP request");
        ensureOpen();
        HttpEntity entity = httpEntityEnclosingRequest.getEntity();
        if (entity != null) {
            OutputStream prepareOutput = prepareOutput(httpEntityEnclosingRequest);
            entity.writeTo(prepareOutput);
            prepareOutput.close();
        }
    }

    public void sendRequestHeader(HttpRequest httpRequest) {
        Args.notNull(httpRequest, "HTTP request");
        ensureOpen();
        this.requestWriter.write(httpRequest);
        onRequestSubmitted(httpRequest);
        incrementRequestCount();
    }
}
