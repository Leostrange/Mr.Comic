package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class RequestConnControl implements HttpRequestInterceptor {
    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        Args.notNull(httpRequest, "HTTP request");
        if (!httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") && !httpRequest.containsHeader("Connection")) {
            httpRequest.addHeader("Connection", HTTP.CONN_KEEP_ALIVE);
        }
    }
}
