package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.requests.BoxRequest;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class BoxHttpRequest {
    protected final ProgressListener mListener;
    protected final HttpURLConnection mUrlConnection;

    public BoxHttpRequest(URL url, BoxRequest.Methods methods, ProgressListener progressListener) {
        this.mUrlConnection = (HttpURLConnection) url.openConnection();
        this.mUrlConnection.setRequestMethod(methods.toString());
        this.mListener = progressListener;
    }

    public BoxHttpRequest addHeader(String str, String str2) {
        this.mUrlConnection.addRequestProperty(str, str2);
        return this;
    }

    public HttpURLConnection getUrlConnection() {
        return this.mUrlConnection;
    }

    public BoxHttpRequest setBody(InputStream inputStream) {
        this.mUrlConnection.setDoOutput(true);
        OutputStream outputStream = this.mUrlConnection.getOutputStream();
        int read = inputStream.read();
        while (read != -1) {
            outputStream.write(read);
            read = inputStream.read();
        }
        outputStream.close();
        return this;
    }
}
