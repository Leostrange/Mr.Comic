// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.entity;

import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpMessage;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.io.ChunkedOutputStream;
import org.apache.http.impl.io.ContentLengthOutputStream;
import org.apache.http.impl.io.IdentityOutputStream;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

public class EntitySerializer
{

    private final ContentLengthStrategy lenStrategy;

    public EntitySerializer(ContentLengthStrategy contentlengthstrategy)
    {
        lenStrategy = (ContentLengthStrategy)Args.notNull(contentlengthstrategy, "Content length strategy");
    }

    protected OutputStream doSerialize(SessionOutputBuffer sessionoutputbuffer, HttpMessage httpmessage)
    {
        long l = lenStrategy.determineLength(httpmessage);
        if (l == -2L)
        {
            return new ChunkedOutputStream(sessionoutputbuffer);
        }
        if (l == -1L)
        {
            return new IdentityOutputStream(sessionoutputbuffer);
        } else
        {
            return new ContentLengthOutputStream(sessionoutputbuffer, l);
        }
    }

    public void serialize(SessionOutputBuffer sessionoutputbuffer, HttpMessage httpmessage, HttpEntity httpentity)
    {
        Args.notNull(sessionoutputbuffer, "Session output buffer");
        Args.notNull(httpmessage, "HTTP message");
        Args.notNull(httpentity, "HTTP entity");
        sessionoutputbuffer = doSerialize(sessionoutputbuffer, httpmessage);
        httpentity.writeTo(sessionoutputbuffer);
        sessionoutputbuffer.close();
    }
}
