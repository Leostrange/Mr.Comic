package org.apache.http.protocol;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
public class ResponseDate implements HttpResponseInterceptor {
    private static final HttpDateGenerator DATE_GENERATOR = new HttpDateGenerator();

    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        if (httpResponse.getStatusLine().getStatusCode() >= 200 && !httpResponse.containsHeader("Date")) {
            httpResponse.setHeader("Date", DATE_GENERATOR.getCurrentDate());
        }
    }
}
