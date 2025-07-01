// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.entity:
//            HttpEntityWrapper

public class BufferedHttpEntity extends HttpEntityWrapper
{

    private final byte buffer[];

    public BufferedHttpEntity(HttpEntity httpentity)
    {
        super(httpentity);
        if (!httpentity.isRepeatable() || httpentity.getContentLength() < 0L)
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            httpentity.writeTo(bytearrayoutputstream);
            bytearrayoutputstream.flush();
            buffer = bytearrayoutputstream.toByteArray();
            return;
        } else
        {
            buffer = null;
            return;
        }
    }

    public InputStream getContent()
    {
        if (buffer != null)
        {
            return new ByteArrayInputStream(buffer);
        } else
        {
            return super.getContent();
        }
    }

    public long getContentLength()
    {
        if (buffer != null)
        {
            return (long)buffer.length;
        } else
        {
            return super.getContentLength();
        }
    }

    public boolean isChunked()
    {
        return buffer == null && super.isChunked();
    }

    public boolean isRepeatable()
    {
        return true;
    }

    public boolean isStreaming()
    {
        return buffer == null && super.isStreaming();
    }

    public void writeTo(OutputStream outputstream)
    {
        Args.notNull(outputstream, "Output stream");
        if (buffer != null)
        {
            outputstream.write(buffer);
            return;
        } else
        {
            super.writeTo(outputstream);
            return;
        }
    }
}
