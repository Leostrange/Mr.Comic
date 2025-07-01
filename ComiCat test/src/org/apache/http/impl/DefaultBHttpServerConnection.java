// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpServerConnection;
import org.apache.http.StatusLine;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.entity.DisallowIdentityContentLengthStrategy;
import org.apache.http.impl.io.DefaultHttpRequestParserFactory;
import org.apache.http.impl.io.DefaultHttpResponseWriterFactory;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.HttpMessageWriterFactory;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.impl:
//            BHttpConnectionBase

public class DefaultBHttpServerConnection extends BHttpConnectionBase
    implements HttpServerConnection
{

    private final HttpMessageParser requestParser;
    private final HttpMessageWriter responseWriter;

    public DefaultBHttpServerConnection(int i)
    {
        this(i, i, null, null, null, null, null, null, null);
    }

    public DefaultBHttpServerConnection(int i, int j, CharsetDecoder charsetdecoder, CharsetEncoder charsetencoder, MessageConstraints messageconstraints, ContentLengthStrategy contentlengthstrategy, ContentLengthStrategy contentlengthstrategy1, 
            HttpMessageParserFactory httpmessageparserfactory, HttpMessageWriterFactory httpmessagewriterfactory)
    {
        if (contentlengthstrategy == null)
        {
            contentlengthstrategy = DisallowIdentityContentLengthStrategy.INSTANCE;
        }
        super(i, j, charsetdecoder, charsetencoder, messageconstraints, contentlengthstrategy, contentlengthstrategy1);
        if (httpmessageparserfactory == null)
        {
            httpmessageparserfactory = DefaultHttpRequestParserFactory.INSTANCE;
        }
        requestParser = httpmessageparserfactory.create(getSessionInputBuffer(), messageconstraints);
        if (httpmessagewriterfactory == null)
        {
            httpmessagewriterfactory = DefaultHttpResponseWriterFactory.INSTANCE;
        }
        responseWriter = httpmessagewriterfactory.create(getSessionOutputBuffer());
    }

    public DefaultBHttpServerConnection(int i, CharsetDecoder charsetdecoder, CharsetEncoder charsetencoder, MessageConstraints messageconstraints)
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

    protected void onRequestReceived(HttpRequest httprequest)
    {
    }

    protected void onResponseSubmitted(HttpResponse httpresponse)
    {
    }

    public void receiveRequestEntity(HttpEntityEnclosingRequest httpentityenclosingrequest)
    {
        Args.notNull(httpentityenclosingrequest, "HTTP request");
        ensureOpen();
        httpentityenclosingrequest.setEntity(prepareInput(httpentityenclosingrequest));
    }

    public HttpRequest receiveRequestHeader()
    {
        ensureOpen();
        HttpRequest httprequest = (HttpRequest)requestParser.parse();
        onRequestReceived(httprequest);
        incrementRequestCount();
        return httprequest;
    }

    public void sendResponseEntity(HttpResponse httpresponse)
    {
        Args.notNull(httpresponse, "HTTP response");
        ensureOpen();
        HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity == null)
        {
            return;
        } else
        {
            httpresponse = prepareOutput(httpresponse);
            httpentity.writeTo(httpresponse);
            httpresponse.close();
            return;
        }
    }

    public void sendResponseHeader(HttpResponse httpresponse)
    {
        Args.notNull(httpresponse, "HTTP response");
        ensureOpen();
        responseWriter.write(httpresponse);
        onResponseSubmitted(httpresponse);
        if (httpresponse.getStatusLine().getStatusCode() >= 200)
        {
            incrementResponseCount();
        }
    }
}
