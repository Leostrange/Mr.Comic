package org.apache.http.message;

import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class BasicLineFormatter implements LineFormatter {
    @Deprecated
    public static final BasicLineFormatter DEFAULT = new BasicLineFormatter();
    public static final BasicLineFormatter INSTANCE = new BasicLineFormatter();

    public static String formatHeader(Header header, LineFormatter lineFormatter) {
        if (lineFormatter == null) {
            lineFormatter = INSTANCE;
        }
        return lineFormatter.formatHeader((CharArrayBuffer) null, header).toString();
    }

    public static String formatProtocolVersion(ProtocolVersion protocolVersion, LineFormatter lineFormatter) {
        if (lineFormatter == null) {
            lineFormatter = INSTANCE;
        }
        return lineFormatter.appendProtocolVersion((CharArrayBuffer) null, protocolVersion).toString();
    }

    public static String formatRequestLine(RequestLine requestLine, LineFormatter lineFormatter) {
        if (lineFormatter == null) {
            lineFormatter = INSTANCE;
        }
        return lineFormatter.formatRequestLine((CharArrayBuffer) null, requestLine).toString();
    }

    public static String formatStatusLine(StatusLine statusLine, LineFormatter lineFormatter) {
        if (lineFormatter == null) {
            lineFormatter = INSTANCE;
        }
        return lineFormatter.formatStatusLine((CharArrayBuffer) null, statusLine).toString();
    }

    public CharArrayBuffer appendProtocolVersion(CharArrayBuffer charArrayBuffer, ProtocolVersion protocolVersion) {
        Args.notNull(protocolVersion, "Protocol version");
        int estimateProtocolVersionLen = estimateProtocolVersionLen(protocolVersion);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateProtocolVersionLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateProtocolVersionLen);
        }
        charArrayBuffer.append(protocolVersion.getProtocol());
        charArrayBuffer.append('/');
        charArrayBuffer.append(Integer.toString(protocolVersion.getMajor()));
        charArrayBuffer.append('.');
        charArrayBuffer.append(Integer.toString(protocolVersion.getMinor()));
        return charArrayBuffer;
    }

    /* access modifiers changed from: protected */
    public void doFormatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        String name = header.getName();
        String value = header.getValue();
        int length = name.length() + 2;
        if (value != null) {
            length += value.length();
        }
        charArrayBuffer.ensureCapacity(length);
        charArrayBuffer.append(name);
        charArrayBuffer.append(": ");
        if (value != null) {
            charArrayBuffer.append(value);
        }
    }

    /* access modifiers changed from: protected */
    public void doFormatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        String method = requestLine.getMethod();
        String uri = requestLine.getUri();
        charArrayBuffer.ensureCapacity(method.length() + 1 + uri.length() + 1 + estimateProtocolVersionLen(requestLine.getProtocolVersion()));
        charArrayBuffer.append(method);
        charArrayBuffer.append((char) TokenParser.SP);
        charArrayBuffer.append(uri);
        charArrayBuffer.append((char) TokenParser.SP);
        appendProtocolVersion(charArrayBuffer, requestLine.getProtocolVersion());
    }

    /* access modifiers changed from: protected */
    public void doFormatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        int estimateProtocolVersionLen = estimateProtocolVersionLen(statusLine.getProtocolVersion()) + 1 + 3 + 1;
        String reasonPhrase = statusLine.getReasonPhrase();
        if (reasonPhrase != null) {
            estimateProtocolVersionLen += reasonPhrase.length();
        }
        charArrayBuffer.ensureCapacity(estimateProtocolVersionLen);
        appendProtocolVersion(charArrayBuffer, statusLine.getProtocolVersion());
        charArrayBuffer.append((char) TokenParser.SP);
        charArrayBuffer.append(Integer.toString(statusLine.getStatusCode()));
        charArrayBuffer.append((char) TokenParser.SP);
        if (reasonPhrase != null) {
            charArrayBuffer.append(reasonPhrase);
        }
    }

    /* access modifiers changed from: protected */
    public int estimateProtocolVersionLen(ProtocolVersion protocolVersion) {
        return protocolVersion.getProtocol().length() + 4;
    }

    public CharArrayBuffer formatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        Args.notNull(header, "Header");
        if (header instanceof FormattedHeader) {
            return ((FormattedHeader) header).getBuffer();
        }
        CharArrayBuffer initBuffer = initBuffer(charArrayBuffer);
        doFormatHeader(initBuffer, header);
        return initBuffer;
    }

    public CharArrayBuffer formatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        Args.notNull(requestLine, "Request line");
        CharArrayBuffer initBuffer = initBuffer(charArrayBuffer);
        doFormatRequestLine(initBuffer, requestLine);
        return initBuffer;
    }

    public CharArrayBuffer formatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        Args.notNull(statusLine, "Status line");
        CharArrayBuffer initBuffer = initBuffer(charArrayBuffer);
        doFormatStatusLine(initBuffer, statusLine);
        return initBuffer;
    }

    /* access modifiers changed from: protected */
    public CharArrayBuffer initBuffer(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer == null) {
            return new CharArrayBuffer(64);
        }
        charArrayBuffer.clear();
        return charArrayBuffer;
    }
}
