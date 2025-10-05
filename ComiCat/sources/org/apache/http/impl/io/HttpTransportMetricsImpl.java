package org.apache.http.impl.io;

import org.apache.http.io.HttpTransportMetrics;

public class HttpTransportMetricsImpl implements HttpTransportMetrics {
    private long bytesTransferred = 0;

    public long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public void incrementBytesTransferred(long j) {
        this.bytesTransferred += j;
    }

    public void reset() {
        this.bytesTransferred = 0;
    }

    public void setBytesTransferred(long j) {
        this.bytesTransferred = j;
    }
}
