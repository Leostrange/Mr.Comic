package org.apache.http.protocol;

import java.util.Map;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
@Deprecated
public class HttpRequestHandlerRegistry implements HttpRequestHandlerResolver {
    private final UriPatternMatcher<HttpRequestHandler> matcher = new UriPatternMatcher<>();

    public Map<String, HttpRequestHandler> getHandlers() {
        return this.matcher.getObjects();
    }

    public HttpRequestHandler lookup(String str) {
        return this.matcher.lookup(str);
    }

    public void register(String str, HttpRequestHandler httpRequestHandler) {
        Args.notNull(str, "URI request pattern");
        Args.notNull(httpRequestHandler, "Request handler");
        this.matcher.register(str, httpRequestHandler);
    }

    public void setHandlers(Map<String, HttpRequestHandler> map) {
        this.matcher.setObjects(map);
    }

    public void unregister(String str) {
        this.matcher.unregister(str);
    }
}
