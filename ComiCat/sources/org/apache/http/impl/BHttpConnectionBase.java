package org.apache.http.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntity;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpMessage;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.entity.LaxContentLengthStrategy;
import org.apache.http.impl.entity.StrictContentLengthStrategy;
import org.apache.http.impl.io.ChunkedInputStream;
import org.apache.http.impl.io.ChunkedOutputStream;
import org.apache.http.impl.io.ContentLengthInputStream;
import org.apache.http.impl.io.ContentLengthOutputStream;
import org.apache.http.impl.io.EmptyInputStream;
import org.apache.http.impl.io.HttpTransportMetricsImpl;
import org.apache.http.impl.io.IdentityInputStream;
import org.apache.http.impl.io.IdentityOutputStream;
import org.apache.http.impl.io.SessionInputBufferImpl;
import org.apache.http.impl.io.SessionOutputBufferImpl;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.NetUtils;

public class BHttpConnectionBase implements HttpConnection, HttpInetConnection {
    private final HttpConnectionMetricsImpl connMetrics;
    private final SessionInputBufferImpl inbuffer;
    private final ContentLengthStrategy incomingContentStrategy;
    private final MessageConstraints messageConstraints;
    private final SessionOutputBufferImpl outbuffer;
    private final ContentLengthStrategy outgoingContentStrategy;
    private final AtomicReference<Socket> socketHolder;

    protected BHttpConnectionBase(int i, int i2, CharsetDecoder charsetDecoder, CharsetEncoder charsetEncoder, MessageConstraints messageConstraints2, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2) {
        Args.positive(i, "Buffer size");
        HttpTransportMetricsImpl httpTransportMetricsImpl = new HttpTransportMetricsImpl();
        HttpTransportMetricsImpl httpTransportMetricsImpl2 = new HttpTransportMetricsImpl();
        this.inbuffer = new SessionInputBufferImpl(httpTransportMetricsImpl, i, -1, messageConstraints2 != null ? messageConstraints2 : MessageConstraints.DEFAULT, charsetDecoder);
        this.outbuffer = new SessionOutputBufferImpl(httpTransportMetricsImpl2, i, i2, charsetEncoder);
        this.messageConstraints = messageConstraints2;
        this.connMetrics = new HttpConnectionMetricsImpl(httpTransportMetricsImpl, httpTransportMetricsImpl2);
        this.incomingContentStrategy = contentLengthStrategy == null ? LaxContentLengthStrategy.INSTANCE : contentLengthStrategy;
        this.outgoingContentStrategy = contentLengthStrategy2 == null ? StrictContentLengthStrategy.INSTANCE : contentLengthStrategy2;
        this.socketHolder = new AtomicReference<>();
    }

    /* JADX INFO: finally extract failed */
    private int fillInputBuffer(int i) {
        Socket socket = this.socketHolder.get();
        int soTimeout = socket.getSoTimeout();
        try {
            socket.setSoTimeout(i);
            int fillBuffer = this.inbuffer.fillBuffer();
            socket.setSoTimeout(soTimeout);
            return fillBuffer;
        } catch (Throwable th) {
            socket.setSoTimeout(soTimeout);
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public boolean awaitInput(int i) {
        if (this.inbuffer.hasBufferedData()) {
            return true;
        }
        fillInputBuffer(i);
        return this.inbuffer.hasBufferedData();
    }

    /* access modifiers changed from: protected */
    public void bind(Socket socket) {
        Args.notNull(socket, "Socket");
        this.socketHolder.set(socket);
        this.inbuffer.bind((InputStream) null);
        this.outbuffer.bind((OutputStream) null);
    }

    public void close() {
        Socket andSet = this.socketHolder.getAndSet((Object) null);
        if (andSet != null) {
            try {
                this.inbuffer.clear();
                this.outbuffer.flush();
                try {
                    andSet.shutdownOutput();
                } catch (IOException e) {
                }
                try {
                    andSet.shutdownInput();
                } catch (IOException | UnsupportedOperationException e2) {
                }
            } finally {
                andSet.close();
            }
        }
    }

    /* access modifiers changed from: protected */
    public InputStream createInputStream(long j, SessionInputBuffer sessionInputBuffer) {
        return j == -2 ? new ChunkedInputStream(sessionInputBuffer, this.messageConstraints) : j == -1 ? new IdentityInputStream(sessionInputBuffer) : j == 0 ? EmptyInputStream.INSTANCE : new ContentLengthInputStream(sessionInputBuffer, j);
    }

    /* access modifiers changed from: protected */
    public OutputStream createOutputStream(long j, SessionOutputBuffer sessionOutputBuffer) {
        return j == -2 ? new ChunkedOutputStream(2048, sessionOutputBuffer) : j == -1 ? new IdentityOutputStream(sessionOutputBuffer) : new ContentLengthOutputStream(sessionOutputBuffer, j);
    }

    /* access modifiers changed from: protected */
    public void doFlush() {
        this.outbuffer.flush();
    }

    /* access modifiers changed from: protected */
    public void ensureOpen() {
        Socket socket = this.socketHolder.get();
        if (socket == null) {
            throw new ConnectionClosedException("Connection is closed");
        }
        if (!this.inbuffer.isBound()) {
            this.inbuffer.bind(getSocketInputStream(socket));
        }
        if (!this.outbuffer.isBound()) {
            this.outbuffer.bind(getSocketOutputStream(socket));
        }
    }

    public InetAddress getLocalAddress() {
        Socket socket = this.socketHolder.get();
        if (socket != null) {
            return socket.getLocalAddress();
        }
        return null;
    }

    public int getLocalPort() {
        Socket socket = this.socketHolder.get();
        if (socket != null) {
            return socket.getLocalPort();
        }
        return -1;
    }

    public HttpConnectionMetrics getMetrics() {
        return this.connMetrics;
    }

    public InetAddress getRemoteAddress() {
        Socket socket = this.socketHolder.get();
        if (socket != null) {
            return socket.getInetAddress();
        }
        return null;
    }

    public int getRemotePort() {
        Socket socket = this.socketHolder.get();
        if (socket != null) {
            return socket.getPort();
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public SessionInputBuffer getSessionInputBuffer() {
        return this.inbuffer;
    }

    /* access modifiers changed from: protected */
    public SessionOutputBuffer getSessionOutputBuffer() {
        return this.outbuffer;
    }

    /* access modifiers changed from: protected */
    public Socket getSocket() {
        return this.socketHolder.get();
    }

    /* access modifiers changed from: protected */
    public InputStream getSocketInputStream(Socket socket) {
        return socket.getInputStream();
    }

    /* access modifiers changed from: protected */
    public OutputStream getSocketOutputStream(Socket socket) {
        return socket.getOutputStream();
    }

    public int getSocketTimeout() {
        Socket socket = this.socketHolder.get();
        if (socket == null) {
            return -1;
        }
        try {
            return socket.getSoTimeout();
        } catch (SocketException e) {
            return -1;
        }
    }

    /* access modifiers changed from: protected */
    public void incrementRequestCount() {
        this.connMetrics.incrementRequestCount();
    }

    /* access modifiers changed from: protected */
    public void incrementResponseCount() {
        this.connMetrics.incrementResponseCount();
    }

    public boolean isOpen() {
        return this.socketHolder.get() != null;
    }

    public boolean isStale() {
        if (!isOpen()) {
            return true;
        }
        try {
            return fillInputBuffer(1) < 0;
        } catch (SocketTimeoutException e) {
            return false;
        } catch (IOException e2) {
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public HttpEntity prepareInput(HttpMessage httpMessage) {
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        long determineLength = this.incomingContentStrategy.determineLength(httpMessage);
        InputStream createInputStream = createInputStream(determineLength, this.inbuffer);
        if (determineLength == -2) {
            basicHttpEntity.setChunked(true);
            basicHttpEntity.setContentLength(-1);
            basicHttpEntity.setContent(createInputStream);
        } else if (determineLength == -1) {
            basicHttpEntity.setChunked(false);
            basicHttpEntity.setContentLength(-1);
            basicHttpEntity.setContent(createInputStream);
        } else {
            basicHttpEntity.setChunked(false);
            basicHttpEntity.setContentLength(determineLength);
            basicHttpEntity.setContent(createInputStream);
        }
        Header firstHeader = httpMessage.getFirstHeader("Content-Type");
        if (firstHeader != null) {
            basicHttpEntity.setContentType(firstHeader);
        }
        Header firstHeader2 = httpMessage.getFirstHeader("Content-Encoding");
        if (firstHeader2 != null) {
            basicHttpEntity.setContentEncoding(firstHeader2);
        }
        return basicHttpEntity;
    }

    /* access modifiers changed from: protected */
    public OutputStream prepareOutput(HttpMessage httpMessage) {
        return createOutputStream(this.outgoingContentStrategy.determineLength(httpMessage), this.outbuffer);
    }

    public void setSocketTimeout(int i) {
        Socket socket = this.socketHolder.get();
        if (socket != null) {
            try {
                socket.setSoTimeout(i);
            } catch (SocketException e) {
            }
        }
    }

    public void shutdown() {
        Socket andSet = this.socketHolder.getAndSet((Object) null);
        if (andSet != null) {
            try {
                andSet.setSoLinger(true, 0);
            } catch (IOException e) {
            } finally {
                andSet.close();
            }
        }
    }

    public String toString() {
        Socket socket = this.socketHolder.get();
        if (socket == null) {
            return "[Not bound]";
        }
        StringBuilder sb = new StringBuilder();
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        SocketAddress localSocketAddress = socket.getLocalSocketAddress();
        if (!(remoteSocketAddress == null || localSocketAddress == null)) {
            NetUtils.formatAddress(sb, localSocketAddress);
            sb.append("<->");
            NetUtils.formatAddress(sb, remoteSocketAddress);
        }
        return sb.toString();
    }
}
