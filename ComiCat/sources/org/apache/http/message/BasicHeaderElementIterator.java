package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderElementIterator;
import org.apache.http.HeaderIterator;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

public class BasicHeaderElementIterator implements HeaderElementIterator {
    private CharArrayBuffer buffer;
    private HeaderElement currentElement;
    private ParserCursor cursor;
    private final HeaderIterator headerIt;
    private final HeaderValueParser parser;

    public BasicHeaderElementIterator(HeaderIterator headerIterator) {
        this(headerIterator, BasicHeaderValueParser.INSTANCE);
    }

    public BasicHeaderElementIterator(HeaderIterator headerIterator, HeaderValueParser headerValueParser) {
        this.currentElement = null;
        this.buffer = null;
        this.cursor = null;
        this.headerIt = (HeaderIterator) Args.notNull(headerIterator, "Header iterator");
        this.parser = (HeaderValueParser) Args.notNull(headerValueParser, "Parser");
    }

    private void bufferHeaderValue() {
        this.cursor = null;
        this.buffer = null;
        while (this.headerIt.hasNext()) {
            Header nextHeader = this.headerIt.nextHeader();
            if (nextHeader instanceof FormattedHeader) {
                this.buffer = ((FormattedHeader) nextHeader).getBuffer();
                this.cursor = new ParserCursor(0, this.buffer.length());
                this.cursor.updatePos(((FormattedHeader) nextHeader).getValuePos());
                return;
            }
            String value = nextHeader.getValue();
            if (value != null) {
                this.buffer = new CharArrayBuffer(value.length());
                this.buffer.append(value);
                this.cursor = new ParserCursor(0, this.buffer.length());
                return;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0028  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void parseNextElement() {
        /*
            r4 = this;
            r3 = 0
        L_0x0001:
            org.apache.http.HeaderIterator r0 = r4.headerIt
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x000d
            org.apache.http.message.ParserCursor r0 = r4.cursor
            if (r0 == 0) goto L_0x0044
        L_0x000d:
            org.apache.http.message.ParserCursor r0 = r4.cursor
            if (r0 == 0) goto L_0x0019
            org.apache.http.message.ParserCursor r0 = r4.cursor
            boolean r0 = r0.atEnd()
            if (r0 == 0) goto L_0x001c
        L_0x0019:
            r4.bufferHeaderValue()
        L_0x001c:
            org.apache.http.message.ParserCursor r0 = r4.cursor
            if (r0 == 0) goto L_0x0001
        L_0x0020:
            org.apache.http.message.ParserCursor r0 = r4.cursor
            boolean r0 = r0.atEnd()
            if (r0 != 0) goto L_0x0045
            org.apache.http.message.HeaderValueParser r0 = r4.parser
            org.apache.http.util.CharArrayBuffer r1 = r4.buffer
            org.apache.http.message.ParserCursor r2 = r4.cursor
            org.apache.http.HeaderElement r0 = r0.parseHeaderElement(r1, r2)
            java.lang.String r1 = r0.getName()
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0042
            java.lang.String r1 = r0.getValue()
            if (r1 == 0) goto L_0x0020
        L_0x0042:
            r4.currentElement = r0
        L_0x0044:
            return
        L_0x0045:
            org.apache.http.message.ParserCursor r0 = r4.cursor
            boolean r0 = r0.atEnd()
            if (r0 == 0) goto L_0x0001
            r4.cursor = r3
            r4.buffer = r3
            goto L_0x0001
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.message.BasicHeaderElementIterator.parseNextElement():void");
    }

    public boolean hasNext() {
        if (this.currentElement == null) {
            parseNextElement();
        }
        return this.currentElement != null;
    }

    public final Object next() {
        return nextElement();
    }

    public HeaderElement nextElement() {
        if (this.currentElement == null) {
            parseNextElement();
        }
        if (this.currentElement == null) {
            throw new NoSuchElementException("No more header elements available");
        }
        HeaderElement headerElement = this.currentElement;
        this.currentElement = null;
        return headerElement;
    }

    public void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
