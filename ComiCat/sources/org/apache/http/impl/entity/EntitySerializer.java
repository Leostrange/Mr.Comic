package org.apache.http.impl.entity;

import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpMessage;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.io.ChunkedOutputStream;
import org.apache.http.impl.io.ContentLengthOutputStream;
import org.apache.http.impl.io.IdentityOutputStream;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
@Deprecated
public class EntitySerializer {
    private final ContentLengthStrategy lenStrategy;

    public EntitySerializer(ContentLengthStrategy contentLengthStrategy) {
        this.lenStrategy = (ContentLengthStrategy) Args.notNull(contentLengthStrategy, "Content length strategy");
    }

    /* access modifiers changed from: protected */
    public OutputStream doSerialize(SessionOutputBuffer sessionOutputBuffer, HttpMessage httpMessage) {
        long determineLength = this.lenStrategy.determineLength(httpMessage);
        return determineLength == -2 ? new ChunkedOutputStream(sessionOutputBuffer) : determineLength == -1 ? new IdentityOutputStream(sessionOutputBuffer) : new ContentLengthOutputStream(sessionOutputBuffer, determineLength);
    }

    public void serialize(SessionOutputBuffer sessionOutputBuffer, HttpMessage httpMessage, HttpEntity httpEntity) {
        Args.notNull(sessionOutputBuffer, "Session output buffer");
        Args.notNull(httpMessage, "HTTP message");
        Args.notNull(httpEntity, "HTTP entity");
        OutputStream doSerialize = doSerialize(sessionOutputBuffer, httpMessage);
        httpEntity.writeTo(doSerialize);
        doSerialize.close();
    }
}
