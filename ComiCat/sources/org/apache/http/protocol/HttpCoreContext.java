package org.apache.http.protocol;

import org.apache.http.HttpConnection;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.util.Args;

public class HttpCoreContext implements HttpContext {
    public static final String HTTP_CONNECTION = "http.connection";
    public static final String HTTP_REQUEST = "http.request";
    public static final String HTTP_REQ_SENT = "http.request_sent";
    public static final String HTTP_RESPONSE = "http.response";
    public static final String HTTP_TARGET_HOST = "http.target_host";
    private final HttpContext context;

    public HttpCoreContext() {
        this.context = new BasicHttpContext();
    }

    public HttpCoreContext(HttpContext httpContext) {
        this.context = httpContext;
    }

    public static HttpCoreContext adapt(HttpContext httpContext) {
        Args.notNull(httpContext, "HTTP context");
        return httpContext instanceof HttpCoreContext ? (HttpCoreContext) httpContext : new HttpCoreContext(httpContext);
    }

    public static HttpCoreContext create() {
        return new HttpCoreContext(new BasicHttpContext());
    }

    public Object getAttribute(String str) {
        return this.context.getAttribute(str);
    }

    public <T> T getAttribute(String str, Class<T> cls) {
        Args.notNull(cls, "Attribute class");
        Object attribute = getAttribute(str);
        if (attribute == null) {
            return null;
        }
        return cls.cast(attribute);
    }

    public HttpConnection getConnection() {
        return (HttpConnection) getAttribute("http.connection", HttpConnection.class);
    }

    public <T extends HttpConnection> T getConnection(Class<T> cls) {
        return (HttpConnection) getAttribute("http.connection", cls);
    }

    public HttpRequest getRequest() {
        return (HttpRequest) getAttribute("http.request", HttpRequest.class);
    }

    public HttpResponse getResponse() {
        return (HttpResponse) getAttribute("http.response", HttpResponse.class);
    }

    public HttpHost getTargetHost() {
        return (HttpHost) getAttribute("http.target_host", HttpHost.class);
    }

    public boolean isRequestSent() {
        Boolean bool = (Boolean) getAttribute("http.request_sent", Boolean.class);
        return bool != null && bool.booleanValue();
    }

    public Object removeAttribute(String str) {
        return this.context.removeAttribute(str);
    }

    public void setAttribute(String str, Object obj) {
        this.context.setAttribute(str, obj);
    }

    public void setTargetHost(HttpHost httpHost) {
        setAttribute("http.target_host", httpHost);
    }
}
