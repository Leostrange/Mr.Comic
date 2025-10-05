package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;

public interface HttpRequestHandler {
    void handle(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext);
}
