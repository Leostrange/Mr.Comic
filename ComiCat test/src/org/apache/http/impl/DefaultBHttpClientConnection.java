// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

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
import org.apache.http.StatusLine;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.io.DefaultHttpRequestWriterFactory;
import org.apache.http.impl.io.DefaultHttpResponseParserFactory;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.HttpMessageWriterFactory;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.impl:
//            BHttpConnectionBase

public class DefaultBHttpClientConnection extends BHttpConnectionBase
    implements HttpClientConnection
{

    private final HttpMessageWriter requestWriter;
    private final HttpMessageParser responseParser;

    public DefaultBHttpClientConnection(int i)
    {
        this(i, i, null, null, null, null, null, null, null);
    }

    public DefaultBHttpClientConnection(int i, int j, CharsetDecoder charsetdecoder, CharsetEncoder charsetencoder, MessageConstraints messageconstraints, ContentLengthStrategy contentlengthstrategy, ContentLengthStrategy contentlengthstrategy1, 
            HttpMessageWriterFactory httpmessagewriterfactory, HttpMessageParserFactory httpmessageparserfactory)
    {
        super(i, j, charsetdecoder, charsetencoder, messageconstraints, contentlengthstrategy, contentlengthstrategy1);
        if (httpmessagewriterfactory == null)
        {
            httpmessagewriterfactory = DefaultHttpRequestWriterFactory.INSTANCE;
        }
        requestWriter = httpmessagewriterfactory.create(getSessionOutputBuffer());
        if (httpmessageparserfactory == null)
        {
            httpmessageparserfactory = DefaultHttpResponseParserFactory.INSTANCE;
        }
        responseParser = httpmessageparserfactory.create(getSessionInputBuffer(), messageconstraints);
    }

    public DefaultBHttpClientConnection(int i, CharsetDecoder charsetdecoder, CharsetEncoder charsetencoder, MessageConstraints messageconstraints)
    {
        this(i, i, charsetdecoder, charsetencoder, messageconstraints, null, null, null, null);
    }

    public void bind(Socket socket)
    {
        super.bind(socket);
    }

    public void flush()
    {
        ensureOpen();
        doFlush();
    }

    public boolean isResponseAvailable(int i)
    {
        ensureOpen();
        boolean flag;
        try
        {
            flag = awaitInput(i);
        }
        catch (SocketTimeoutException sockettimeoutexception)
        {
            return false;
        }
        return flag;
    }

    protected void onRequestSubmitted(HttpRequest httprequest)
    {
    }

    protected void onResponseReceived(HttpResponse httpresponse)
    {
    }

    public void receiveResponseEntity(HttpResponse httpresponse)
    {
        Args.notNull(httpresponse, "HTTP response");
        ensureOpen();
        httpresponse.setEntity(prepareInput(httpresponse));
    }

    public HttpResponse receiveResponseHeader()
    {
        ensureOpen();
        HttpResponse httpresponse = (HttpResponse)responseParser.parse();
        onResponseReceived(httpresponse);
        if (httpresponse.getStatusLine().getStatusCode() >= 200)
        {
            incrementResponseCount();
        }
        return httpresponse;
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpentityenclosingrequest)
    {
        Args.notNull(httpentityenclosingrequest, "HTTP request");
        ensureOpen();
        HttpEntity httpentity = httpentityenclosingrequest.getEntity();
        if (httpentity == null)
        {
            return;
        } else
        {
            httpentityenclosingrequest = prepareOutput(httpentityenclosingrequest);
            httpentity.writeTo(httpentityenclosingrequest);
            httpentityenclosingrequest.close();
            return;
        }
    }

    public void sendRequestHeader(HttpRequest httprequest)
    {
        Args.notNull(httprequest, "HTTP request");
        ensureOpen();
        requestWriter.write(httprequest);
        onRequestSubmitted(httprequest);
        incrementRequestCount();
    }
}
