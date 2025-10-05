package org.apache.http.impl.io;

import org.apache.http.HttpRequest;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;

public class DefaultHttpRequestWriter extends AbstractMessageWriter<HttpRequest> {
    public DefaultHttpRequestWriter(SessionOutputBuffer sessionOutputBuffer) {
        this(sessionOutputBuffer, (LineFormatter) null);
    }

    public DefaultHttpRequestWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter) {
        super(sessionOutputBuffer, lineFormatter);
    }

    /* access modifiers changed from: protected */
    public void writeHeadLine(HttpRequest httpRequest) {
        this.lineFormatter.formatRequestLine(this.lineBuf, httpRequest.getRequestLine());
        this.sessionBuffer.writeLine(this.lineBuf);
    }
}
