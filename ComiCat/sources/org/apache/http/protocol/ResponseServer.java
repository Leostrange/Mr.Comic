package org.apache.http.protocol;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class ResponseServer implements HttpResponseInterceptor {
    private final String originServer;

    public ResponseServer() {
        this((String) null);
    }

    public ResponseServer(String str) {
        this.originServer = str;
    }

    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        if (!httpResponse.containsHeader("Server") && this.originServer != null) {
            httpResponse.addHeader("Server", this.originServer);
        }
    }
}
