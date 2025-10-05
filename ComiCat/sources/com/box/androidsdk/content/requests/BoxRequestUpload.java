package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxIterator;
import com.box.androidsdk.content.models.BoxIteratorBoxEntity;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Date;
import org.apache.http.HttpHeaders;

public abstract class BoxRequestUpload<E extends BoxJsonObject, R extends BoxRequest<E, R>> extends BoxRequestItem<E, R> {
    Date mCreatedDate;
    File mFile;
    String mFileName = "";
    Date mModifiedDate;
    String mSha1;
    InputStream mStream;
    long mUploadSize;

    public static class UploadRequestHandler extends BoxRequest.BoxRequestHandler<BoxRequestUpload> {
        public UploadRequestHandler(BoxRequestUpload boxRequestUpload) {
            super(boxRequestUpload);
        }

        public <T extends BoxObject> T onResponse(Class<T> cls, BoxHttpResponse boxHttpResponse) {
            return ((BoxIterator) super.onResponse(BoxIteratorBoxEntity.class, boxHttpResponse)).get(0);
        }
    }

    public BoxRequestUpload(Class<E> cls, InputStream inputStream, String str, BoxSession boxSession) {
        super(cls, (String) null, str, boxSession);
        this.mRequestMethod = BoxRequest.Methods.POST;
        this.mStream = inputStream;
        setRequestHandler(new UploadRequestHandler(this));
    }

    /* access modifiers changed from: protected */
    public BoxHttpRequest createHttpRequest() {
        return createMultipartRequest();
    }

    /* access modifiers changed from: protected */
    public BoxRequestMultipart createMultipartRequest() {
        BoxRequestMultipart boxRequestMultipart = new BoxRequestMultipart(buildUrl(), this.mRequestMethod, this.mListener);
        setHeaders(boxRequestMultipart);
        boxRequestMultipart.setFile(getInputStream(), this.mFileName, this.mUploadSize);
        if (this.mCreatedDate != null) {
            boxRequestMultipart.putField("content_created_at", this.mCreatedDate);
        }
        if (this.mModifiedDate != null) {
            boxRequestMultipart.putField("content_modified_at", this.mModifiedDate);
        }
        return boxRequestMultipart;
    }

    public Date getCreatedDate() {
        return this.mCreatedDate;
    }

    public File getFile() {
        return this.mFile;
    }

    /* access modifiers changed from: protected */
    public InputStream getInputStream() {
        return this.mStream != null ? this.mStream : new FileInputStream(this.mFile);
    }

    public Date getModifiedDate() {
        return this.mModifiedDate;
    }

    public String getSha1() {
        return this.mSha1;
    }

    public long getUploadSize() {
        return this.mUploadSize;
    }

    /* access modifiers changed from: protected */
    public BoxHttpResponse sendRequest(BoxHttpRequest boxHttpRequest, HttpURLConnection httpURLConnection) {
        if (boxHttpRequest instanceof BoxRequestMultipart) {
            ((BoxRequestMultipart) boxHttpRequest).writeBody(httpURLConnection, this.mListener);
        }
        return super.sendRequest(boxHttpRequest, httpURLConnection);
    }

    public R setCreatedDate(Date date) {
        this.mCreatedDate = date;
        return this;
    }

    /* access modifiers changed from: protected */
    public void setHeaders(BoxHttpRequest boxHttpRequest) {
        super.setHeaders(boxHttpRequest);
        if (this.mSha1 != null) {
            boxHttpRequest.addHeader(HttpHeaders.CONTENT_MD5, this.mSha1);
        }
    }

    public R setModifiedDate(Date date) {
        this.mModifiedDate = date;
        return this;
    }

    public R setProgressListener(ProgressListener progressListener) {
        this.mListener = progressListener;
        return this;
    }

    public void setSha1(String str) {
        this.mSha1 = str;
    }

    public R setUploadSize(long j) {
        this.mUploadSize = j;
        return this;
    }
}
