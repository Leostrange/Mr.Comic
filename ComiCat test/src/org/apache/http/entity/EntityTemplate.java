// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.entity:
//            AbstractHttpEntity, ContentProducer

public class EntityTemplate extends AbstractHttpEntity
{

    private final ContentProducer contentproducer;

    public EntityTemplate(ContentProducer contentproducer1)
    {
        contentproducer = (ContentProducer)Args.notNull(contentproducer1, "Content producer");
    }

    public InputStream getContent()
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        writeTo(bytearrayoutputstream);
        return new ByteArrayInputStream(bytearrayoutputstream.toByteArray());
    }

    public long getContentLength()
    {
        return -1L;
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
        contentproducer.writeTo(outputstream);
    }
}
