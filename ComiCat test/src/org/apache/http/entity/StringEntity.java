// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.entity:
//            AbstractHttpEntity, ContentType

public class StringEntity extends AbstractHttpEntity
    implements Cloneable
{

    protected final byte content[];

    public StringEntity(String s)
    {
        this(s, ContentType.DEFAULT_TEXT);
    }

    public StringEntity(String s, String s1)
    {
        this(s, ContentType.create(ContentType.TEXT_PLAIN.getMimeType(), s1));
    }

    public StringEntity(String s, String s1, String s2)
    {
        Args.notNull(s, "Source string");
        if (s1 == null)
        {
            s1 = "text/plain";
        }
        if (s2 == null)
        {
            s2 = "ISO-8859-1";
        }
        content = s.getBytes(s2);
        setContentType((new StringBuilder()).append(s1).append("; charset=").append(s2).toString());
    }

    public StringEntity(String s, Charset charset)
    {
        this(s, ContentType.create(ContentType.TEXT_PLAIN.getMimeType(), charset));
    }

    public StringEntity(String s, ContentType contenttype)
    {
        Args.notNull(s, "Source string");
        Charset charset;
        Charset charset1;
        if (contenttype != null)
        {
            charset = contenttype.getCharset();
        } else
        {
            charset = null;
        }
        charset1 = charset;
        if (charset == null)
        {
            charset1 = HTTP.DEF_CONTENT_CHARSET;
        }
        content = s.getBytes(charset1);
        if (contenttype != null)
        {
            setContentType(contenttype.toString());
        }
    }

    public Object clone()
    {
        return super.clone();
    }

    public InputStream getContent()
    {
        return new ByteArrayInputStream(content);
    }

    public long getContentLength()
    {
        return (long)content.length;
    }

    public boolean isRepeatable()
    {
        return true;
    }

    public boolean isStreaming()
    {
        return false;
    }

    public void writeTo(OutputStream outputstream)
    {
        Args.notNull(outputstream, "Output stream");
        outputstream.write(content);
        outputstream.flush();
    }
}
