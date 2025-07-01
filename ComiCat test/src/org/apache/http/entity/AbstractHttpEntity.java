// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public abstract class AbstractHttpEntity
    implements HttpEntity
{

    protected static final int OUTPUT_BUFFER_SIZE = 4096;
    protected boolean chunked;
    protected Header contentEncoding;
    protected Header contentType;

    protected AbstractHttpEntity()
    {
    }

    public void consumeContent()
    {
    }

    public Header getContentEncoding()
    {
        return contentEncoding;
    }

    public Header getContentType()
    {
        return contentType;
    }

    public boolean isChunked()
    {
        return chunked;
    }

    public void setChunked(boolean flag)
    {
        chunked = flag;
    }

    public void setContentEncoding(String s)
    {
        BasicHeader basicheader = null;
        if (s != null)
        {
            basicheader = new BasicHeader("Content-Encoding", s);
        }
        setContentEncoding(((Header) (basicheader)));
    }

    public void setContentEncoding(Header header)
    {
        contentEncoding = header;
    }

    public void setContentType(String s)
    {
        BasicHeader basicheader = null;
        if (s != null)
        {
            basicheader = new BasicHeader("Content-Type", s);
        }
        setContentType(((Header) (basicheader)));
    }

    public void setContentType(Header header)
    {
        contentType = header;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append('[');
        if (contentType != null)
        {
            stringbuilder.append("Content-Type: ");
            stringbuilder.append(contentType.getValue());
            stringbuilder.append(',');
        }
        if (contentEncoding != null)
        {
            stringbuilder.append("Content-Encoding: ");
            stringbuilder.append(contentEncoding.getValue());
            stringbuilder.append(',');
        }
        long l = getContentLength();
        if (l >= 0L)
        {
            stringbuilder.append("Content-Length: ");
            stringbuilder.append(l);
            stringbuilder.append(',');
        }
        stringbuilder.append("Chunked: ");
        stringbuilder.append(chunked);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }
}
