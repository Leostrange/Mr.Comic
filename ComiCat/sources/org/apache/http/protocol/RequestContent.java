package org.apache.http.protocol;

import com.box.androidsdk.content.BoxConstants;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class RequestContent implements HttpRequestInterceptor {
    private final boolean overwrite;

    public RequestContent() {
        this(false);
    }

    public RequestContent(boolean z) {
        this.overwrite = z;
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        Args.notNull(httpRequest, "HTTP request");
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            if (this.overwrite) {
                httpRequest.removeHeaders("Transfer-Encoding");
                httpRequest.removeHeaders("Content-Length");
            } else if (httpRequest.containsHeader("Transfer-Encoding")) {
                throw new ProtocolException("Transfer-encoding header already present");
            } else if (httpRequest.containsHeader("Content-Length")) {
                throw new ProtocolException("Content-Length header already present");
            }
            ProtocolVersion protocolVersion = httpRequest.getRequestLine().getProtocolVersion();
            HttpEntity entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity();
            if (entity == null) {
                httpRequest.addHeader("Content-Length", BoxConstants.ROOT_FOLDER_ID);
                return;
            }
            if (!entity.isChunked() && entity.getContentLength() >= 0) {
                httpRequest.addHeader("Content-Length", Long.toString(entity.getContentLength()));
            } else if (protocolVersion.lessEquals(HttpVersion.HTTP_1_0)) {
                throw new ProtocolException("Chunked transfer encoding not allowed for " + protocolVersion);
            } else {
                httpRequest.addHeader("Transfer-Encoding", HTTP.CHUNK_CODING);
            }
            if (entity.getContentType() != null && !httpRequest.containsHeader("Content-Type")) {
                httpRequest.addHeader(entity.getContentType());
            }
            if (entity.getContentEncoding() != null && !httpRequest.containsHeader("Content-Encoding")) {
                httpRequest.addHeader(entity.getContentEncoding());
            }
        }
    }
}
