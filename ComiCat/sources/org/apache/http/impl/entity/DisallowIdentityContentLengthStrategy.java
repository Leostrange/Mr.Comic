package org.apache.http.impl.entity;

import org.apache.http.HttpMessage;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.entity.ContentLengthStrategy;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
public class DisallowIdentityContentLengthStrategy implements ContentLengthStrategy {
    public static final DisallowIdentityContentLengthStrategy INSTANCE = new DisallowIdentityContentLengthStrategy(new LaxContentLengthStrategy(0));
    private final ContentLengthStrategy contentLengthStrategy;

    public DisallowIdentityContentLengthStrategy(ContentLengthStrategy contentLengthStrategy2) {
        this.contentLengthStrategy = contentLengthStrategy2;
    }

    public long determineLength(HttpMessage httpMessage) {
        long determineLength = this.contentLengthStrategy.determineLength(httpMessage);
        if (determineLength != -1) {
            return determineLength;
        }
        throw new ProtocolException("Identity transfer encoding cannot be used");
    }
}
