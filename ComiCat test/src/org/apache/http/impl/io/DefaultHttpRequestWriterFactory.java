// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.HttpMessageWriterFactory;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.BasicLineFormatter;
import org.apache.http.message.LineFormatter;

// Referenced classes of package org.apache.http.impl.io:
//            DefaultHttpRequestWriter

public class DefaultHttpRequestWriterFactory
    implements HttpMessageWriterFactory
{

    public static final DefaultHttpRequestWriterFactory INSTANCE = new DefaultHttpRequestWriterFactory();
    private final LineFormatter lineFormatter;

    public DefaultHttpRequestWriterFactory()
    {
        this(null);
    }

    public DefaultHttpRequestWriterFactory(LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = BasicLineFormatter.INSTANCE;
        }
        lineFormatter = lineformatter;
    }

    public HttpMessageWriter create(SessionOutputBuffer sessionoutputbuffer)
    {
        return new DefaultHttpRequestWriter(sessionoutputbuffer, lineFormatter);
    }

}
