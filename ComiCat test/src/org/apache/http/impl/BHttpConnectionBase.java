// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.ConnectionClosedException;
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

// Referenced classes of package org.apache.http.impl:
//            HttpConnectionMetricsImpl

public class BHttpConnectionBase
    implements HttpConnection, HttpInetConnection
{

    private final HttpConnectionMetricsImpl connMetrics;
    private final SessionInputBufferImpl inbuffer;
    private final ContentLengthStrategy incomingContentStrategy;
    private final MessageConstraints messageConstraints;
    private final SessionOutputBufferImpl outbuffer;
    private final ContentLengthStrategy outgoingContentStrategy;
    private final AtomicReference socketHolder = new AtomicReference();

    protected BHttpConnectionBase(int i, int j, CharsetDecoder charsetdecoder, CharsetEncoder charsetencoder, MessageConstraints messageconstraints, ContentLengthStrategy contentlengthstrategy, ContentLengthStrategy contentlengthstrategy1)
    {
        Args.positive(i, "Buffer size");
        HttpTransportMetricsImpl httptransportmetricsimpl = new HttpTransportMetricsImpl();
        HttpTransportMetricsImpl httptransportmetricsimpl1 = new HttpTransportMetricsImpl();
        MessageConstraints messageconstraints1;
        if (messageconstraints != null)
        {
            messageconstraints1 = messageconstraints;
        } else
        {
            messageconstraints1 = MessageConstraints.DEFAULT;
        }
        inbuffer = new SessionInputBufferImpl(httptransportmetricsimpl, i, -1, messageconstraints1, charsetdecoder);
        outbuffer = new SessionOutputBufferImpl(httptransportmetricsimpl1, i, j, charsetencoder);
        messageConstraints = messageconstraints;
        connMetrics = new HttpConnectionMetricsImpl(httptransportmetricsimpl, httptransportmetricsimpl1);
        if (contentlengthstrategy == null)
        {
            contentlengthstrategy = LaxContentLengthStrategy.INSTANCE;
        }
        incomingContentStrategy = contentlengthstrategy;
        if (contentlengthstrategy1 == null)
        {
            contentlengthstrategy1 = StrictContentLengthStrategy.INSTANCE;
        }
        outgoingContentStrategy = contentlengthstrategy1;
    }

    private int fillInputBuffer(int i)
    {
        Socket socket;
        int j;
        socket = (Socket)socketHolder.get();
        j = socket.getSoTimeout();
        socket.setSoTimeout(i);
        i = inbuffer.fillBuffer();
        socket.setSoTimeout(j);
        return i;
        Exception exception;
        exception;
        socket.setSoTimeout(j);
        throw exception;
    }

    protected boolean awaitInput(int i)
    {
        if (inbuffer.hasBufferedData())
        {
            return true;
        } else
        {
            fillInputBuffer(i);
            return inbuffer.hasBufferedData();
        }
    }

    protected void bind(Socket socket)
    {
        Args.notNull(socket, "Socket");
        socketHolder.set(socket);
        inbuffer.bind(null);
        outbuffer.bind(null);
    }

    public void close()
    {
        Socket socket = (Socket)socketHolder.getAndSet(null);
        if (socket == null) goto _L2; else goto _L1
_L1:
        inbuffer.clear();
        outbuffer.flush();
        Exception exception;
        try
        {
            socket.shutdownOutput();
        }
        catch (IOException ioexception) { }
        try
        {
            socket.shutdownInput();
        }
        catch (IOException ioexception1) { }
_L4:
        socket.close();
_L2:
        return;
        exception;
        socket.close();
        throw exception;
        UnsupportedOperationException unsupportedoperationexception;
        unsupportedoperationexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected InputStream createInputStream(long l, SessionInputBuffer sessioninputbuffer)
    {
        if (l == -2L)
        {
            return new ChunkedInputStream(sessioninputbuffer, messageConstraints);
        }
        if (l == -1L)
        {
            return new IdentityInputStream(sessioninputbuffer);
        }
        if (l == 0L)
        {
            return EmptyInputStream.INSTANCE;
        } else
        {
            return new ContentLengthInputStream(sessioninputbuffer, l);
        }
    }

    protected OutputStream createOutputStream(long l, SessionOutputBuffer sessionoutputbuffer)
    {
        if (l == -2L)
        {
            return new ChunkedOutputStream(2048, sessionoutputbuffer);
        }
        if (l == -1L)
        {
            return new IdentityOutputStream(sessionoutputbuffer);
        } else
        {
            return new ContentLengthOutputStream(sessionoutputbuffer, l);
        }
    }

    protected void doFlush()
    {
        outbuffer.flush();
    }

    protected void ensureOpen()
    {
        Socket socket = (Socket)socketHolder.get();
        if (socket == null)
        {
            throw new ConnectionClosedException("Connection is closed");
        }
        if (!inbuffer.isBound())
        {
            inbuffer.bind(getSocketInputStream(socket));
        }
        if (!outbuffer.isBound())
        {
            outbuffer.bind(getSocketOutputStream(socket));
        }
    }

    public InetAddress getLocalAddress()
    {
        Socket socket = (Socket)socketHolder.get();
        if (socket != null)
        {
            return socket.getLocalAddress();
        } else
        {
            return null;
        }
    }

    public int getLocalPort()
    {
        Socket socket = (Socket)socketHolder.get();
        if (socket != null)
        {
            return socket.getLocalPort();
        } else
        {
            return -1;
        }
    }

    public HttpConnectionMetrics getMetrics()
    {
        return connMetrics;
    }

    public InetAddress getRemoteAddress()
    {
        Socket socket = (Socket)socketHolder.get();
        if (socket != null)
        {
            return socket.getInetAddress();
        } else
        {
            return null;
        }
    }

    public int getRemotePort()
    {
        Socket socket = (Socket)socketHolder.get();
        if (socket != null)
        {
            return socket.getPort();
        } else
        {
            return -1;
        }
    }

    protected SessionInputBuffer getSessionInputBuffer()
    {
        return inbuffer;
    }

    protected SessionOutputBuffer getSessionOutputBuffer()
    {
        return outbuffer;
    }

    protected Socket getSocket()
    {
        return (Socket)socketHolder.get();
    }

    protected InputStream getSocketInputStream(Socket socket)
    {
        return socket.getInputStream();
    }

    protected OutputStream getSocketOutputStream(Socket socket)
    {
        return socket.getOutputStream();
    }

    public int getSocketTimeout()
    {
        Socket socket = (Socket)socketHolder.get();
        if (socket != null)
        {
            int i;
            try
            {
                i = socket.getSoTimeout();
            }
            catch (SocketException socketexception)
            {
                return -1;
            }
            return i;
        } else
        {
            return -1;
        }
    }

    protected void incrementRequestCount()
    {
        connMetrics.incrementRequestCount();
    }

    protected void incrementResponseCount()
    {
        connMetrics.incrementResponseCount();
    }

    public boolean isOpen()
    {
        return socketHolder.get() != null;
    }

    public boolean isStale()
    {
        if (isOpen())
        {
            int i;
            try
            {
                i = fillInputBuffer(1);
            }
            catch (SocketTimeoutException sockettimeoutexception)
            {
                return false;
            }
            catch (IOException ioexception)
            {
                return true;
            }
            if (i >= 0)
            {
                return false;
            }
        }
        return true;
    }

    protected HttpEntity prepareInput(HttpMessage httpmessage)
    {
        BasicHttpEntity basichttpentity = new BasicHttpEntity();
        long l = incomingContentStrategy.determineLength(httpmessage);
        Object obj = createInputStream(l, inbuffer);
        if (l == -2L)
        {
            basichttpentity.setChunked(true);
            basichttpentity.setContentLength(-1L);
            basichttpentity.setContent(((InputStream) (obj)));
        } else
        if (l == -1L)
        {
            basichttpentity.setChunked(false);
            basichttpentity.setContentLength(-1L);
            basichttpentity.setContent(((InputStream) (obj)));
        } else
        {
            basichttpentity.setChunked(false);
            basichttpentity.setContentLength(l);
            basichttpentity.setContent(((InputStream) (obj)));
        }
        obj = httpmessage.getFirstHeader("Content-Type");
        if (obj != null)
        {
            basichttpentity.setContentType(((org.apache.http.Header) (obj)));
        }
        httpmessage = httpmessage.getFirstHeader("Content-Encoding");
        if (httpmessage != null)
        {
            basichttpentity.setContentEncoding(httpmessage);
        }
        return basichttpentity;
    }

    protected OutputStream prepareOutput(HttpMessage httpmessage)
    {
        return createOutputStream(outgoingContentStrategy.determineLength(httpmessage), outbuffer);
    }

    public void setSocketTimeout(int i)
    {
        Socket socket;
        socket = (Socket)socketHolder.get();
        if (socket == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        socket.setSoTimeout(i);
        return;
        SocketException socketexception;
        socketexception;
    }

    public void shutdown()
    {
        Exception exception;
        Socket socket = (Socket)socketHolder.getAndSet(null);
        if (socket != null)
        {
            try
            {
                socket.setSoLinger(true, 0);
            }
            catch (IOException ioexception)
            {
                socket.close();
                return;
            }
            finally
            {
                socket.close();
            }
            socket.close();
        }
        return;
        throw exception;
    }

    public String toString()
    {
        Object obj = (Socket)socketHolder.get();
        if (obj != null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            java.net.SocketAddress socketaddress = ((Socket) (obj)).getRemoteSocketAddress();
            obj = ((Socket) (obj)).getLocalSocketAddress();
            if (socketaddress != null && obj != null)
            {
                NetUtils.formatAddress(stringbuilder, ((java.net.SocketAddress) (obj)));
                stringbuilder.append("<->");
                NetUtils.formatAddress(stringbuilder, socketaddress);
            }
            return stringbuilder.toString();
        } else
        {
            return "[Not bound]";
        }
    }
}
