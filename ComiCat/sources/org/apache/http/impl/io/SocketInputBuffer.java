package org.apache.http.impl.io;

import java.net.Socket;
import org.apache.http.io.EofSensor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
public class SocketInputBuffer extends AbstractSessionInputBuffer implements EofSensor {
    private boolean eof = false;
    private final Socket socket;

    public SocketInputBuffer(Socket socket2, int i, HttpParams httpParams) {
        int i2 = 1024;
        Args.notNull(socket2, "Socket");
        this.socket = socket2;
        int receiveBufferSize = i < 0 ? socket2.getReceiveBufferSize() : i;
        init(socket2.getInputStream(), receiveBufferSize >= 1024 ? receiveBufferSize : i2, httpParams);
    }

    /* access modifiers changed from: protected */
    public int fillBuffer() {
        int fillBuffer = super.fillBuffer();
        this.eof = fillBuffer == -1;
        return fillBuffer;
    }

    /* JADX INFO: finally extract failed */
    public boolean isDataAvailable(int i) {
        boolean hasBufferedData = hasBufferedData();
        if (!hasBufferedData) {
            int soTimeout = this.socket.getSoTimeout();
            try {
                this.socket.setSoTimeout(i);
                fillBuffer();
                hasBufferedData = hasBufferedData();
                this.socket.setSoTimeout(soTimeout);
            } catch (Throwable th) {
                this.socket.setSoTimeout(soTimeout);
                throw th;
            }
        }
        return hasBufferedData;
    }

    public boolean isEof() {
        return this.eof;
    }
}
