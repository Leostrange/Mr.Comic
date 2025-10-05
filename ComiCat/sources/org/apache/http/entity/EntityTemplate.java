package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.util.Args;

public class EntityTemplate extends AbstractHttpEntity {
    private final ContentProducer contentproducer;

    public EntityTemplate(ContentProducer contentProducer) {
        this.contentproducer = (ContentProducer) Args.notNull(contentProducer, "Content producer");
    }

    public InputStream getContent() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeTo(byteArrayOutputStream);
        return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
    }

    public long getContentLength() {
        return -1;
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) {
        Args.notNull(outputStream, "Output stream");
        this.contentproducer.writeTo(outputStream);
    }
}
