package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
public class UriHttpRequestHandlerMapper implements HttpRequestHandlerMapper {
    private final UriPatternMatcher<HttpRequestHandler> matcher;

    public UriHttpRequestHandlerMapper() {
        this(new UriPatternMatcher());
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.lang.Object, org.apache.http.protocol.UriPatternMatcher<org.apache.http.protocol.HttpRequestHandler>] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected UriHttpRequestHandlerMapper(org.apache.http.protocol.UriPatternMatcher<org.apache.http.protocol.HttpRequestHandler> r2) {
        /*
            r1 = this;
            r1.<init>()
            java.lang.String r0 = "Pattern matcher"
            java.lang.Object r0 = org.apache.http.util.Args.notNull(r2, r0)
            org.apache.http.protocol.UriPatternMatcher r0 = (org.apache.http.protocol.UriPatternMatcher) r0
            r1.matcher = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.protocol.UriHttpRequestHandlerMapper.<init>(org.apache.http.protocol.UriPatternMatcher):void");
    }

    /* access modifiers changed from: protected */
    public String getRequestPath(HttpRequest httpRequest) {
        String uri = httpRequest.getRequestLine().getUri();
        int indexOf = uri.indexOf("?");
        if (indexOf != -1) {
            return uri.substring(0, indexOf);
        }
        int indexOf2 = uri.indexOf("#");
        return indexOf2 != -1 ? uri.substring(0, indexOf2) : uri;
    }

    public HttpRequestHandler lookup(HttpRequest httpRequest) {
        Args.notNull(httpRequest, "HTTP request");
        return this.matcher.lookup(getRequestPath(httpRequest));
    }

    public void register(String str, HttpRequestHandler httpRequestHandler) {
        Args.notNull(str, "Pattern");
        Args.notNull(httpRequestHandler, "Handler");
        this.matcher.register(str, httpRequestHandler);
    }

    public void unregister(String str) {
        this.matcher.unregister(str);
    }
}
