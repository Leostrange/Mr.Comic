// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import org.apache.http.HeaderIterator;
import org.apache.http.HttpMessage;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.BasicLineFormatter;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

public abstract class AbstractMessageWriter
    implements HttpMessageWriter
{

    protected final CharArrayBuffer lineBuf;
    protected final LineFormatter lineFormatter;
    protected final SessionOutputBuffer sessionBuffer;

    public AbstractMessageWriter(SessionOutputBuffer sessionoutputbuffer, LineFormatter lineformatter)
    {
        sessionBuffer = (SessionOutputBuffer)Args.notNull(sessionoutputbuffer, "Session input buffer");
        if (lineformatter == null)
        {
            lineformatter = BasicLineFormatter.INSTANCE;
        }
        lineFormatter = lineformatter;
        lineBuf = new CharArrayBuffer(128);
    }

    public AbstractMessageWriter(SessionOutputBuffer sessionoutputbuffer, LineFormatter lineformatter, HttpParams httpparams)
    {
        Args.notNull(sessionoutputbuffer, "Session input buffer");
        sessionBuffer = sessionoutputbuffer;
        lineBuf = new CharArrayBuffer(128);
        if (lineformatter == null)
        {
            lineformatter = BasicLineFormatter.INSTANCE;
        }
        lineFormatter = lineformatter;
    }

    public void write(HttpMessage httpmessage)
    {
        Args.notNull(httpmessage, "HTTP message");
        writeHeadLine(httpmessage);
        org.apache.http.Header header;
        for (httpmessage = httpmessage.headerIterator(); httpmessage.hasNext(); sessionBuffer.writeLine(lineFormatter.formatHeader(lineBuf, header)))
        {
            header = httpmessage.nextHeader();
        }

        lineBuf.clear();
        sessionBuffer.writeLine(lineBuf);
    }

    protected abstract void writeHeadLine(HttpMessage httpmessage);
}
