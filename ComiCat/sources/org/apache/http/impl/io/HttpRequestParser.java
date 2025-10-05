package org.apache.http.impl.io;

import android.support.v4.app.NotificationCompat;
import org.apache.http.ConnectionClosedException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequestFactory;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public class HttpRequestParser extends AbstractMessageParser<HttpMessage> {
    private final CharArrayBuffer lineBuf = new CharArrayBuffer(NotificationCompat.FLAG_HIGH_PRIORITY);
    private final HttpRequestFactory requestFactory;

    public HttpRequestParser(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpRequestFactory httpRequestFactory, HttpParams httpParams) {
        super(sessionInputBuffer, lineParser, httpParams);
        this.requestFactory = (HttpRequestFactory) Args.notNull(httpRequestFactory, "Request factory");
    }

    /* access modifiers changed from: protected */
    public HttpMessage parseHead(SessionInputBuffer sessionInputBuffer) {
        this.lineBuf.clear();
        if (sessionInputBuffer.readLine(this.lineBuf) == -1) {
            throw new ConnectionClosedException("Client closed connection");
        }
        return this.requestFactory.newHttpRequest(this.lineParser.parseRequestLine(this.lineBuf, new ParserCursor(0, this.lineBuf.length())));
    }
}
