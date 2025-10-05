package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.TokenIterator;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.message.BasicHeaderIterator;
import org.apache.http.message.BasicTokenIterator;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class DefaultConnectionReuseStrategy implements ConnectionReuseStrategy {
    public static final DefaultConnectionReuseStrategy INSTANCE = new DefaultConnectionReuseStrategy();

    private boolean canResponseHaveBody(HttpResponse httpResponse) {
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        return (statusCode < 200 || statusCode == 204 || statusCode == 304 || statusCode == 205) ? false : true;
    }

    /* access modifiers changed from: protected */
    public TokenIterator createTokenIterator(HeaderIterator headerIterator) {
        return new BasicTokenIterator(headerIterator);
    }

    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        Args.notNull(httpContext, "HTTP context");
        ProtocolVersion protocolVersion = httpResponse.getStatusLine().getProtocolVersion();
        Header firstHeader = httpResponse.getFirstHeader("Transfer-Encoding");
        if (firstHeader != null) {
            if (!HTTP.CHUNK_CODING.equalsIgnoreCase(firstHeader.getValue())) {
                return false;
            }
        } else if (canResponseHaveBody(httpResponse)) {
            Header[] headers = httpResponse.getHeaders("Content-Length");
            if (headers.length != 1) {
                return false;
            }
            try {
                if (Integer.parseInt(headers[0].getValue()) < 0) {
                    return false;
                }
            } catch (NumberFormatException e) {
                return false;
            }
        }
        Header[] headers2 = httpResponse.getHeaders("Connection");
        if (headers2.length == 0) {
            headers2 = httpResponse.getHeaders("Proxy-Connection");
        }
        if (headers2.length != 0) {
            try {
                BasicTokenIterator basicTokenIterator = new BasicTokenIterator(new BasicHeaderIterator(headers2, (String) null));
                boolean z = false;
                while (basicTokenIterator.hasNext()) {
                    String nextToken = basicTokenIterator.nextToken();
                    if (HTTP.CONN_CLOSE.equalsIgnoreCase(nextToken)) {
                        return false;
                    }
                    if (HTTP.CONN_KEEP_ALIVE.equalsIgnoreCase(nextToken)) {
                        z = true;
                    }
                }
                if (z) {
                    return true;
                }
            } catch (ParseException e2) {
                return false;
            }
        }
        return !protocolVersion.lessEquals(HttpVersion.HTTP_1_0);
    }
}
