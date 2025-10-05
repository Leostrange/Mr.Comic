package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.listeners.ProgressListener;
import java.io.OutputStream;

public class ProgressOutputStream extends OutputStream {
    private final ProgressListener listener;
    private int progress;
    private final OutputStream stream;
    private long total;
    private long totalWritten;

    public ProgressOutputStream(OutputStream outputStream, ProgressListener progressListener, long j) {
        this.stream = outputStream;
        this.listener = progressListener;
        this.total = j;
    }

    public void close() {
        this.stream.close();
        super.close();
    }

    public void flush() {
        this.stream.flush();
        super.flush();
    }

    public long getTotal() {
        return this.total;
    }

    public void setTotal(long j) {
        this.total = j;
    }

    public void write(int i) {
        this.stream.write(i);
        this.totalWritten++;
        this.listener.onProgressChanged(this.totalWritten, this.total);
    }

    public void write(byte[] bArr) {
        this.stream.write(bArr);
        this.totalWritten += (long) bArr.length;
        this.listener.onProgressChanged(this.totalWritten, this.total);
    }

    public void write(byte[] bArr, int i, int i2) {
        this.stream.write(bArr, i, i2);
        if (i2 < bArr.length) {
            this.totalWritten += (long) i2;
        } else {
            this.totalWritten += (long) bArr.length;
        }
        this.listener.onProgressChanged(this.totalWritten, this.total);
    }
}
