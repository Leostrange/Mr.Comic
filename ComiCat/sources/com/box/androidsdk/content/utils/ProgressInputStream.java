package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.listeners.ProgressListener;
import java.io.InputStream;

public class ProgressInputStream extends InputStream {
    private final ProgressListener listener;
    private int progress;
    private final InputStream stream;
    private long total;
    private long totalRead;

    public ProgressInputStream(InputStream inputStream, ProgressListener progressListener, long j) {
        this.stream = inputStream;
        this.listener = progressListener;
        this.total = j;
    }

    public void close() {
        this.stream.close();
    }

    public long getTotal() {
        return this.total;
    }

    public int read() {
        int read = this.stream.read();
        this.totalRead++;
        this.listener.onProgressChanged(this.totalRead, this.total);
        return read;
    }

    public int read(byte[] bArr, int i, int i2) {
        int read = this.stream.read(bArr, i, i2);
        this.totalRead += (long) read;
        this.listener.onProgressChanged(this.totalRead, this.total);
        return read;
    }

    public void setTotal(long j) {
        this.total = j;
    }
}
