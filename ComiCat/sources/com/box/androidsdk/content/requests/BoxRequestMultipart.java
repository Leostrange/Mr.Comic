package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.ProgressOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.protocol.HTTP;

class BoxRequestMultipart extends BoxHttpRequest {
    private static final String BOUNDARY = "da39a3ee5e6b4b0d3255bfef95601890afd80709";
    private static final int BUFFER_SIZE = 8192;
    private static final Logger LOGGER = Logger.getLogger(BoxRequestMultipart.class.getName());
    private Map<String, String> fields = new HashMap();
    private long fileSize;
    private String filename;
    private boolean firstBoundary = true;
    private InputStream inputStream;
    private final StringBuilder loggedRequest = new StringBuilder();
    private OutputStream outputStream;

    public BoxRequestMultipart(URL url, BoxRequest.Methods methods, ProgressListener progressListener) {
        super(url, methods, progressListener);
        addHeader("Content-Type", "multipart/form-data; boundary=da39a3ee5e6b4b0d3255bfef95601890afd80709");
    }

    private void writeBoundary() {
        if (!this.firstBoundary) {
            writeOutput("\r\n");
        }
        this.firstBoundary = false;
        writeOutput("--");
        writeOutput(BOUNDARY);
    }

    private void writeOutput(int i) {
        this.outputStream.write(i);
    }

    private void writeOutput(String str) {
        this.outputStream.write(str.getBytes(Charset.forName(HTTP.UTF_8)));
        if (LOGGER.isLoggable(Level.FINE)) {
            this.loggedRequest.append(str);
        }
    }

    private void writePartHeader(String[][] strArr) {
        writePartHeader(strArr, (String) null);
    }

    private void writePartHeader(String[][] strArr, String str) {
        writeBoundary();
        writeOutput("\r\n");
        writeOutput("Content-Disposition: form-data");
        for (int i = 0; i < strArr.length; i++) {
            writeOutput("; ");
            writeOutput(strArr[i][0]);
            writeOutput("=\"");
            writeOutput(strArr[i][1]);
            writeOutput("\"");
        }
        if (str != null) {
            writeOutput("\r\nContent-Type: ");
            writeOutput(str);
        }
        writeOutput("\r\n\r\n");
    }

    /* access modifiers changed from: protected */
    public String bodyToString() {
        return this.loggedRequest.toString();
    }

    public void putField(String str, String str2) {
        this.fields.put(str, str2);
    }

    public void putField(String str, Date date) {
        this.fields.put(str, BoxDateFormat.format(date));
    }

    /* access modifiers changed from: protected */
    public void resetBody() {
        this.firstBoundary = true;
        this.inputStream.reset();
        this.loggedRequest.setLength(0);
    }

    public BoxHttpRequest setBody(InputStream inputStream2) {
        throw new UnsupportedOperationException();
    }

    public void setBody(String str) {
        throw new UnsupportedOperationException();
    }

    public void setFile(InputStream inputStream2, String str) {
        this.inputStream = inputStream2;
        this.filename = str;
    }

    public void setFile(InputStream inputStream2, String str, long j) {
        setFile(inputStream2, str);
        this.fileSize = j;
    }

    /* access modifiers changed from: protected */
    public void writeBody(HttpURLConnection httpURLConnection, ProgressListener progressListener) {
        try {
            httpURLConnection.setChunkedStreamingMode(0);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            this.outputStream = httpURLConnection.getOutputStream();
            for (Map.Entry next : this.fields.entrySet()) {
                writePartHeader(new String[][]{new String[]{"name", (String) next.getKey()}});
                writeOutput((String) next.getValue());
            }
            writePartHeader(new String[][]{new String[]{"name", "filename"}, new String[]{"filename", this.filename}}, "application/octet-stream");
            ProgressOutputStream progressOutputStream = progressListener != null ? new ProgressOutputStream(this.outputStream, progressListener, this.fileSize) : this.outputStream;
            byte[] bArr = new byte[8192];
            int read = this.inputStream.read(bArr);
            while (read != -1) {
                progressOutputStream.write(bArr, 0, read);
                read = this.inputStream.read(bArr);
            }
            if (LOGGER.isLoggable(Level.FINE)) {
                this.loggedRequest.append("<File Contents Omitted>");
            }
            writeBoundary();
            if (this.outputStream != null) {
                try {
                    this.outputStream.close();
                } catch (Exception e) {
                }
            }
        } catch (IOException e2) {
            throw new BoxException("Couldn't connect to the Box API due to a network error.", (Throwable) e2);
        } catch (Throwable th) {
            if (this.outputStream != null) {
                try {
                    this.outputStream.close();
                } catch (Exception e3) {
                }
            }
            throw th;
        }
    }
}
