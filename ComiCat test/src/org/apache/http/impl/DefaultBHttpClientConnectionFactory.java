// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import java.net.Socket;
import org.apache.http.HttpConnection;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

// Referenced classes of package org.apache.http.impl:
//            DefaultBHttpClientConnection, ConnSupport

public class DefaultBHttpClientConnectionFactory
    implements HttpConnectionFactory
{

    public static final DefaultBHttpClientConnectionFactory INSTANCE = new DefaultBHttpClientConnectionFactory();
    private final ConnectionConfig cconfig;
    private final ContentLengthStrategy incomingContentStrategy;
    private final ContentLengthStrategy outgoingContentStrategy;
    private final HttpMessageWriterFactory requestWriterFactory;
    private final HttpMessageParserFactory responseParserFactory;

    public DefaultBHttpClientConnectionFactory()
    {
        this(null, null, null, null, null);
    }

    public DefaultBHttpClientConnectionFactory(ConnectionConfig connectionconfig)
    {
        this(connectionconfig, null, null, null, null);
    }

    public DefaultBHttpClientConnectionFactory(ConnectionConfig connectionconfig, ContentLengthStrategy contentlengthstrategy, ContentLengthStrategy contentlengthstrategy1, HttpMessageWriterFactory httpmessagewriterfactory, HttpMessageParserFactory httpmessageparserfactory)
    {
        if (connectionconfig == null)
        {
            connectionconfig = ConnectionConfig.DEFAULT;
        }
        cconfig = connectionconfig;
        incomingContentStrategy = contentlengthstrategy;
        outgoingContentStrategy = contentlengthstrategy1;
        requestWriterFactory = httpmessagewriterfactory;
        responseParserFactory = httpmessageparserfactory;
    }

    public DefaultBHttpClientConnectionFactory(ConnectionConfig connectionconfig, HttpMessageWriterFactory httpmessagewriterfactory, HttpMessageParserFactory httpmessageparserfactory)
    {
        this(connectionconfig, null, null, httpmessagewriterfactory, httpmessageparserfactory);
    }

    public volatile HttpConnection createConnection(Socket socket)
    {
        return createConnection(socket);
    }

    public DefaultBHttpClientConnection createConnection(Socket socket)
    {
        DefaultBHttpClientConnection defaultbhttpclientconnection = new DefaultBHttpClientConnection(cconfig.getBufferSize(), cconfig.getFragmentSizeHint(), ConnSupport.createDecoder(cconfig), ConnSupport.createEncoder(cconfig), cconfig.getMessageConstraints(), incomingContentStrategy, outgoingContentStrategy, requestWriterFactory, responseParserFactory);
        defaultbhttpclientconnection.bind(socket);
        return defaultbhttpclientconnection;
    }

}
