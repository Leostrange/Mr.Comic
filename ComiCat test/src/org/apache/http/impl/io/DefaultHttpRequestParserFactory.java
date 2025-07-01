// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import org.apache.http.HttpRequestFactory;
import org.apache.http.config.MessageConstraints;
import org.apache.http.impl.DefaultHttpRequestFactory;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.LineParser;

// Referenced classes of package org.apache.http.impl.io:
//            DefaultHttpRequestParser

public class DefaultHttpRequestParserFactory
    implements HttpMessageParserFactory
{

    public static final DefaultHttpRequestParserFactory INSTANCE = new DefaultHttpRequestParserFactory();
    private final LineParser lineParser;
    private final HttpRequestFactory requestFactory;

    public DefaultHttpRequestParserFactory()
    {
        this(null, null);
    }

    public DefaultHttpRequestParserFactory(LineParser lineparser, HttpRequestFactory httprequestfactory)
    {
        if (lineparser == null)
        {
            lineparser = BasicLineParser.INSTANCE;
        }
        lineParser = lineparser;
        if (httprequestfactory == null)
        {
            httprequestfactory = DefaultHttpRequestFactory.INSTANCE;
        }
        requestFactory = httprequestfactory;
    }

    public HttpMessageParser create(SessionInputBuffer sessioninputbuffer, MessageConstraints messageconstraints)
    {
        return new DefaultHttpRequestParser(sessioninputbuffer, lineParser, requestFactory, messageconstraints);
    }

}
