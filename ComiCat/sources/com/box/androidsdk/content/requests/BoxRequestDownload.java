package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.listeners.DownloadStartListener;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.ProgressOutputStream;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;
import org.apache.http.HttpHeaders;

public abstract class BoxRequestDownload<E extends BoxObject, R extends BoxRequest<E, R>> extends BoxRequest<E, R> {
    private static final String CONTENT_ENCODING_GZIP = "gzip";
    private static final String QUERY_CONTENT_ACCESS = "log_content_access";
    private static final String QUERY_VERSION = "version";
    protected DownloadStartListener mDownloadStartListener;
    protected OutputStream mFileOutputStream;
    protected String mId;
    protected long mRangeEnd = -1;
    protected long mRangeStart = -1;
    protected File mTarget;

    public static class DownloadRequestHandler extends BoxRequest.BoxRequestHandler<BoxRequestDownload> {
        protected static final int DEFAULT_MAX_WAIT_MILLIS = 90000;
        protected static final int DEFAULT_NUM_RETRIES = 2;
        protected int mNumAcceptedRetries = 0;
        protected int mRetryAfterMillis = 1000;

        public DownloadRequestHandler(BoxRequestDownload boxRequestDownload) {
            super(boxRequestDownload);
        }

        /* access modifiers changed from: protected */
        public OutputStream getOutputStream(BoxDownload boxDownload) {
            if (((BoxRequestDownload) this.mRequest).mFileOutputStream != null) {
                return ((BoxRequestDownload) this.mRequest).mFileOutputStream;
            }
            if (!boxDownload.getOutputFile().exists()) {
                boxDownload.getOutputFile().createNewFile();
            }
            return new FileOutputStream(boxDownload.getOutputFile());
        }

        public BoxDownload onResponse(Class cls, BoxHttpResponse boxHttpResponse) {
            Throwable th;
            OutputStream outputStream;
            Exception exc;
            String contentType = boxHttpResponse.getContentType();
            String contentEncoding = boxHttpResponse.getHttpURLConnection().getContentEncoding();
            long j = -1;
            if (Thread.currentThread().isInterrupted()) {
                disconnectForInterrupt(boxHttpResponse);
            }
            if (boxHttpResponse.getResponseCode() == 429) {
                return (BoxDownload) retryRateLimited(boxHttpResponse);
            }
            if (boxHttpResponse.getResponseCode() == 202) {
                try {
                    if (this.mNumAcceptedRetries < 2) {
                        this.mNumAcceptedRetries++;
                        this.mRetryAfterMillis = getRetryAfterFromResponse(boxHttpResponse, 1);
                    } else if (this.mRetryAfterMillis < DEFAULT_MAX_WAIT_MILLIS) {
                        this.mRetryAfterMillis = (int) (((double) this.mRetryAfterMillis) * (1.5d + Math.random()));
                    } else {
                        throw new BoxException.MaxAttemptsExceeded("Max wait time exceeded.", this.mNumAcceptedRetries);
                    }
                    Thread.sleep((long) this.mRetryAfterMillis);
                    return (BoxDownload) ((BoxRequestDownload) this.mRequest).send();
                } catch (InterruptedException e) {
                    throw new BoxException(e.getMessage(), boxHttpResponse);
                }
            } else if (boxHttpResponse.getResponseCode() != 200 && boxHttpResponse.getResponseCode() != 206) {
                return new BoxDownload((String) null, 0, (String) null, (String) null, (String) null, (String) null);
            } else {
                String headerField = boxHttpResponse.getHttpURLConnection().getHeaderField("Content-Length");
                String headerField2 = boxHttpResponse.getHttpURLConnection().getHeaderField("Content-Disposition");
                try {
                    j = Long.parseLong(headerField);
                } catch (Exception e2) {
                }
                AnonymousClass1 r1 = new BoxDownload(headerField2, j, contentType, boxHttpResponse.getHttpURLConnection().getHeaderField(HttpHeaders.CONTENT_RANGE), boxHttpResponse.getHttpURLConnection().getHeaderField("Date"), boxHttpResponse.getHttpURLConnection().getHeaderField("Expiration")) {
                    public File getOutputFile() {
                        if (((BoxRequestDownload) DownloadRequestHandler.this.mRequest).getTarget() == null) {
                            return null;
                        }
                        return ((BoxRequestDownload) DownloadRequestHandler.this.mRequest).getTarget().isFile() ? ((BoxRequestDownload) DownloadRequestHandler.this.mRequest).getTarget() : !SdkUtils.isEmptyString(getFileName()) ? new File(((BoxRequestDownload) DownloadRequestHandler.this.mRequest).getTarget(), getFileName()) : super.getOutputFile();
                    }
                };
                if (((BoxRequestDownload) this.mRequest).mDownloadStartListener != null) {
                    ((BoxRequestDownload) this.mRequest).mDownloadStartListener.onStart(r1);
                }
                try {
                    if (((BoxRequestDownload) this.mRequest).mListener != null) {
                        outputStream = new ProgressOutputStream(getOutputStream(r1), ((BoxRequestDownload) this.mRequest).mListener, j);
                        try {
                            ((BoxRequestDownload) this.mRequest).mListener.onProgressChanged(0, j);
                        } catch (Exception e3) {
                            exc = e3;
                            try {
                                Socket socket = ((BoxRequestDownload) this.mRequest).getSocket();
                                if (!(socket == null || contentEncoding == null || !contentEncoding.equalsIgnoreCase(BoxRequestDownload.CONTENT_ENCODING_GZIP))) {
                                    socket.close();
                                }
                            } catch (Exception e4) {
                                BoxLogUtils.e("error closing socket", (Throwable) e4);
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            throw new BoxException(exc.getMessage(), (Throwable) exc);
                        }
                    } else {
                        outputStream = getOutputStream(r1);
                    }
                    SdkUtils.copyStream(boxHttpResponse.getBody(), outputStream);
                    try {
                        boxHttpResponse.getBody().close();
                    } catch (IOException e5) {
                        BoxLogUtils.e("error closing inputstream", (Throwable) e5);
                    }
                    if (((BoxRequestDownload) this.mRequest).getTargetStream() == null) {
                        try {
                            outputStream.close();
                        } catch (IOException e6) {
                            BoxLogUtils.e("error closing outputstream", (Throwable) e6);
                        }
                    }
                    return r1;
                } catch (Exception e7) {
                    exc = e7;
                    outputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    outputStream = null;
                    try {
                        boxHttpResponse.getBody().close();
                    } catch (IOException e8) {
                        BoxLogUtils.e("error closing inputstream", (Throwable) e8);
                    }
                    if (((BoxRequestDownload) this.mRequest).getTargetStream() == null) {
                        try {
                            outputStream.close();
                        } catch (IOException e9) {
                            BoxLogUtils.e("error closing outputstream", (Throwable) e9);
                        }
                    }
                    throw th;
                }
            }
        }
    }

    @Deprecated
    public BoxRequestDownload(Class<E> cls, File file, String str, BoxSession boxSession) {
        super(cls, str, boxSession);
        this.mRequestMethod = BoxRequest.Methods.GET;
        this.mRequestUrlString = str;
        this.mTarget = file;
        setRequestHandler(new DownloadRequestHandler(this));
        this.mRequiresSocket = true;
        this.mQueryMap.put(QUERY_CONTENT_ACCESS, Boolean.toString(true));
    }

    @Deprecated
    public BoxRequestDownload(Class<E> cls, OutputStream outputStream, String str, BoxSession boxSession) {
        super(cls, str, boxSession);
        this.mRequestMethod = BoxRequest.Methods.GET;
        this.mRequestUrlString = str;
        this.mFileOutputStream = outputStream;
        setRequestHandler(new DownloadRequestHandler(this));
        this.mRequiresSocket = true;
        this.mQueryMap.put(QUERY_CONTENT_ACCESS, Boolean.toString(true));
    }

    public BoxRequestDownload(String str, Class<E> cls, File file, String str2, BoxSession boxSession) {
        super(cls, str2, boxSession);
        this.mId = str;
        this.mRequestMethod = BoxRequest.Methods.GET;
        this.mRequestUrlString = str2;
        this.mTarget = file;
        setRequestHandler(new DownloadRequestHandler(this));
        this.mRequiresSocket = true;
        this.mQueryMap.put(QUERY_CONTENT_ACCESS, Boolean.toString(true));
    }

    public BoxRequestDownload(String str, Class<E> cls, OutputStream outputStream, String str2, BoxSession boxSession) {
        super(cls, str2, boxSession);
        this.mId = str;
        this.mRequestMethod = BoxRequest.Methods.GET;
        this.mRequestUrlString = str2;
        this.mFileOutputStream = outputStream;
        setRequestHandler(new DownloadRequestHandler(this));
        this.mRequiresSocket = true;
        this.mQueryMap.put(QUERY_CONTENT_ACCESS, Boolean.toString(true));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.mRequestHandler = new DownloadRequestHandler(this);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
    }

    public String getId() {
        return this.mId;
    }

    public long getRangeEnd() {
        return this.mRangeEnd;
    }

    public long getRangeStart() {
        return this.mRangeStart;
    }

    public File getTarget() {
        return this.mTarget;
    }

    public OutputStream getTargetStream() {
        return this.mFileOutputStream;
    }

    public String getVersion() {
        return (String) this.mQueryMap.get(QUERY_VERSION);
    }

    /* access modifiers changed from: protected */
    public void logDebug(BoxHttpResponse boxHttpResponse) {
        logRequest();
        BoxLogUtils.i(BoxConstants.TAG, String.format(Locale.ENGLISH, "Response (%s)", new Object[]{Integer.valueOf(boxHttpResponse.getResponseCode())}));
    }

    public void setContentAccess(boolean z) {
        this.mQueryMap.put(QUERY_CONTENT_ACCESS, Boolean.toString(z));
    }

    public R setDownloadStartListener(DownloadStartListener downloadStartListener) {
        this.mDownloadStartListener = downloadStartListener;
        return this;
    }

    /* access modifiers changed from: protected */
    public void setHeaders(BoxHttpRequest boxHttpRequest) {
        super.setHeaders(boxHttpRequest);
        if (this.mRangeStart != -1 && this.mRangeEnd != -1) {
            boxHttpRequest.addHeader(HttpHeaders.RANGE, String.format("bytes=%s-%s", new Object[]{Long.toString(this.mRangeStart), Long.toString(this.mRangeEnd)}));
        }
    }

    public R setProgressListener(ProgressListener progressListener) {
        this.mListener = progressListener;
        return this;
    }

    public R setRange(long j, long j2) {
        this.mRangeStart = j;
        this.mRangeEnd = j2;
        return this;
    }

    public R setVersion(String str) {
        this.mQueryMap.put(QUERY_VERSION, str);
        return this;
    }
}
