package org.apache.http.protocol;

import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
public class RequestDate implements HttpRequestInterceptor {
    private static final HttpDateGenerator DATE_GENERATOR = new HttpDateGenerator();

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        Args.notNull(httpRequest, "HTTP request");
        if ((httpRequest instanceof HttpEntityEnclosingRequest) && !httpRequest.containsHeader("Date")) {
            httpRequest.setHeader("Date", DATE_GENERATOR.getCurrentDate());
        }
    }
}
