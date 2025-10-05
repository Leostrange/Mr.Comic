package org.apache.http.entity;

import android.support.v4.app.FragmentTransaction;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.util.Args;

public class InputStreamEntity extends AbstractHttpEntity {
    private final InputStream content;
    private final long length;

    public InputStreamEntity(InputStream inputStream) {
        this(inputStream, -1);
    }

    public InputStreamEntity(InputStream inputStream, long j) {
        this(inputStream, j, (ContentType) null);
    }

    public InputStreamEntity(InputStream inputStream, long j, ContentType contentType) {
        this.content = (InputStream) Args.notNull(inputStream, "Source input stream");
        this.length = j;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public InputStreamEntity(InputStream inputStream, ContentType contentType) {
        this(inputStream, -1, contentType);
    }

    public InputStream getContent() {
        return this.content;
    }

    public long getContentLength() {
        return this.length;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return true;
    }

    public void writeTo(OutputStream outputStream) {
        int read;
        Args.notNull(outputStream, "Output stream");
        InputStream inputStream = this.content;
        try {
            byte[] bArr = new byte[FragmentTransaction.TRANSIT_ENTER_MASK];
            if (this.length < 0) {
                while (true) {
                    int read2 = inputStream.read(bArr);
                    if (read2 == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read2);
                }
            } else {
                long j = this.length;
                while (j > 0 && (read = inputStream.read(bArr, 0, (int) Math.min(4096, j))) != -1) {
                    outputStream.write(bArr, 0, read);
                    j -= (long) read;
                }
            }
        } finally {
            inputStream.close();
        }
    }
}
