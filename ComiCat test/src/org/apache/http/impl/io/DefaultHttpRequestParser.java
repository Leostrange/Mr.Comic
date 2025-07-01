// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import org.apache.http.ConnectionClosedException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.config.MessageConstraints;
import org.apache.http.impl.DefaultHttpRequestFactory;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.io:
//            AbstractMessageParser

public class DefaultHttpRequestParser extends AbstractMessageParser
{

    private final CharArrayBuffer lineBuf;
    private final HttpRequestFactory requestFactory;

    public DefaultHttpRequestParser(SessionInputBuffer sessioninputbuffer)
    {
        this(sessioninputbuffer, null, null, MessageConstraints.DEFAULT);
    }

    public DefaultHttpRequestParser(SessionInputBuffer sessioninputbuffer, MessageConstraints messageconstraints)
    {
        this(sessioninputbuffer, null, null, messageconstraints);
    }

    public DefaultHttpRequestParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, HttpRequestFactory httprequestfactory, MessageConstraints messageconstraints)
    {
        super(sessioninputbuffer, lineparser, messageconstraints);
        if (httprequestfactory == null)
        {
            httprequestfactory = DefaultHttpRequestFactory.INSTANCE;
        }
        requestFactory = httprequestfactory;
        lineBuf = new CharArrayBuffer(128);
    }

    public DefaultHttpRequestParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, HttpRequestFactory httprequestfactory, HttpParams httpparams)
    {
        super(sessioninputbuffer, lineparser, httpparams);
        requestFactory = (HttpRequestFactory)Args.notNull(httprequestfactory, "Request factory");
        lineBuf = new CharArrayBuffer(128);
    }

    protected volatile HttpMessage parseHead(SessionInputBuffer sessioninputbuffer)
    {
        return parseHead(sessioninputbuffer);
    }

    protected HttpRequest parseHead(SessionInputBuffer sessioninputbuffer)
    {
        lineBuf.clear();
        if (sessioninputbuffer.readLine(lineBuf) == -1)
        {
            throw new ConnectionClosedException("Client closed connection");
        } else
        {
            sessioninputbuffer = new ParserCursor(0, lineBuf.length());
            sessioninputbuffer = lineParser.parseRequestLine(lineBuf, sessioninputbuffer);
            return requestFactory.newHttpRequest(sessioninputbuffer);
        }
    }
}
