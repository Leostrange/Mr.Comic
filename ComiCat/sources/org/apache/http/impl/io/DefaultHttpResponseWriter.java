package org.apache.http.impl.io;

import org.apache.http.HttpResponse;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;

public class DefaultHttpResponseWriter extends AbstractMessageWriter<HttpResponse> {
    public DefaultHttpResponseWriter(SessionOutputBuffer sessionOutputBuffer) {
        super(sessionOutputBuffer, (LineFormatter) null);
    }

    public DefaultHttpResponseWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter) {
        super(sessionOutputBuffer, lineFormatter);
    }

    /* access modifiers changed from: protected */
    public void writeHeadLine(HttpResponse httpResponse) {
        this.lineFormatter.formatStatusLine(this.lineBuf, httpResponse.getStatusLine());
        this.sessionBuffer.writeLine(this.lineBuf);
    }
}
