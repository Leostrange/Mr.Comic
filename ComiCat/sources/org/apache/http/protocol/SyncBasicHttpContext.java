package org.apache.http.protocol;

@Deprecated
public class SyncBasicHttpContext extends BasicHttpContext {
    public SyncBasicHttpContext() {
    }

    public SyncBasicHttpContext(HttpContext httpContext) {
        super(httpContext);
    }

    public synchronized void clear() {
        super.clear();
    }

    public synchronized Object getAttribute(String str) {
        return super.getAttribute(str);
    }

    public synchronized Object removeAttribute(String str) {
        return super.removeAttribute(str);
    }

    public synchronized void setAttribute(String str, Object obj) {
        super.setAttribute(str, obj);
    }
}
