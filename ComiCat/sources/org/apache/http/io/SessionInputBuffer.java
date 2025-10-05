package org.apache.http.io;

import org.apache.http.util.CharArrayBuffer;

public interface SessionInputBuffer {
    HttpTransportMetrics getMetrics();

    @Deprecated
    boolean isDataAvailable(int i);

    int read();

    int read(byte[] bArr);

    int read(byte[] bArr, int i, int i2);

    int readLine(CharArrayBuffer charArrayBuffer);

    String readLine();
}
