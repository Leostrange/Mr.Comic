package org.apache.http.protocol;

import java.util.LinkedList;
import java.util.List;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;

public class HttpProcessorBuilder {
    private ChainBuilder<HttpRequestInterceptor> requestChainBuilder;
    private ChainBuilder<HttpResponseInterceptor> responseChainBuilder;

    HttpProcessorBuilder() {
    }

    public static HttpProcessorBuilder create() {
        return new HttpProcessorBuilder();
    }

    private ChainBuilder<HttpRequestInterceptor> getRequestChainBuilder() {
        if (this.requestChainBuilder == null) {
            this.requestChainBuilder = new ChainBuilder<>();
        }
        return this.requestChainBuilder;
    }

    private ChainBuilder<HttpResponseInterceptor> getResponseChainBuilder() {
        if (this.responseChainBuilder == null) {
            this.responseChainBuilder = new ChainBuilder<>();
        }
        return this.responseChainBuilder;
    }

    public HttpProcessorBuilder add(HttpRequestInterceptor httpRequestInterceptor) {
        return addLast(httpRequestInterceptor);
    }

    public HttpProcessorBuilder add(HttpResponseInterceptor httpResponseInterceptor) {
        return addLast(httpResponseInterceptor);
    }

    public HttpProcessorBuilder addAll(HttpRequestInterceptor... httpRequestInterceptorArr) {
        return addAllLast(httpRequestInterceptorArr);
    }

    public HttpProcessorBuilder addAll(HttpResponseInterceptor... httpResponseInterceptorArr) {
        return addAllLast(httpResponseInterceptorArr);
    }

    public HttpProcessorBuilder addAllFirst(HttpRequestInterceptor... httpRequestInterceptorArr) {
        if (httpRequestInterceptorArr != null) {
            getRequestChainBuilder().addAllFirst((E[]) httpRequestInterceptorArr);
        }
        return this;
    }

    public HttpProcessorBuilder addAllFirst(HttpResponseInterceptor... httpResponseInterceptorArr) {
        if (httpResponseInterceptorArr != null) {
            getResponseChainBuilder().addAllFirst((E[]) httpResponseInterceptorArr);
        }
        return this;
    }

    public HttpProcessorBuilder addAllLast(HttpRequestInterceptor... httpRequestInterceptorArr) {
        if (httpRequestInterceptorArr != null) {
            getRequestChainBuilder().addAllLast((E[]) httpRequestInterceptorArr);
        }
        return this;
    }

    public HttpProcessorBuilder addAllLast(HttpResponseInterceptor... httpResponseInterceptorArr) {
        if (httpResponseInterceptorArr != null) {
            getResponseChainBuilder().addAllLast((E[]) httpResponseInterceptorArr);
        }
        return this;
    }

    public HttpProcessorBuilder addFirst(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor != null) {
            getRequestChainBuilder().addFirst(httpRequestInterceptor);
        }
        return this;
    }

    public HttpProcessorBuilder addFirst(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor != null) {
            getResponseChainBuilder().addFirst(httpResponseInterceptor);
        }
        return this;
    }

    public HttpProcessorBuilder addLast(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor != null) {
            getRequestChainBuilder().addLast(httpRequestInterceptor);
        }
        return this;
    }

    public HttpProcessorBuilder addLast(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor != null) {
            getResponseChainBuilder().addLast(httpResponseInterceptor);
        }
        return this;
    }

    public HttpProcessor build() {
        LinkedList<HttpResponseInterceptor> linkedList = null;
        LinkedList<HttpRequestInterceptor> build = this.requestChainBuilder != null ? this.requestChainBuilder.build() : null;
        if (this.responseChainBuilder != null) {
            linkedList = this.responseChainBuilder.build();
        }
        return new ImmutableHttpProcessor((List<HttpRequestInterceptor>) build, (List<HttpResponseInterceptor>) linkedList);
    }
}
