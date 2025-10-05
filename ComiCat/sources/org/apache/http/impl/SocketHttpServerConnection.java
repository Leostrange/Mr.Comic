package org.apache.http.impl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import org.apache.http.HttpInetConnection;
import org.apache.http.impl.io.SocketInputBuffer;
import org.apache.http.impl.io.SocketOutputBuffer;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
public class SocketHttpServerConnection extends AbstractHttpServerConnection implements HttpInetConnection {
    private volatile boolean open;
    private volatile Socket socket = null;

    private static void formatAddress(StringBuilder sb, SocketAddress socketAddress) {
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            sb.append(inetSocketAddress.getAddress() != null ? inetSocketAddress.getAddress().getHostAddress() : inetSocketAddress.getAddress()).append(':').append(inetSocketAddress.getPort());
            return;
        }
        sb.append(socketAddress);
    }

    /* access modifiers changed from: protected */
    public void assertNotOpen() {
        Asserts.check(!this.open, "Connection is already open");
    }

    /* access modifiers changed from: protected */
    public void assertOpen() {
        Asserts.check(this.open, "Connection is not open");
    }

    /* access modifiers changed from: protected */
    public void bind(Socket socket2, HttpParams httpParams) {
        Args.notNull(socket2, "Socket");
        Args.notNull(httpParams, "HTTP parameters");
        this.socket = socket2;
        int intParameter = httpParams.getIntParameter(CoreConnectionPNames.SOCKET_BUFFER_SIZE, -1);
        init(createSessionInputBuffer(socket2, intParameter, httpParams), createSessionOutputBuffer(socket2, intParameter, httpParams), httpParams);
        this.open = true;
    }

    public void close() {
        if (this.open) {
            this.open = false;
            this.open = false;
            Socket socket2 = this.socket;
            try {
                doFlush();
                try {
                    socket2.shutdownOutput();
                } catch (IOException e) {
                }
                try {
                    socket2.shutdownInput();
                } catch (IOException | UnsupportedOperationException e2) {
                }
            } finally {
                socket2.close();
            }
        }
    }

    /* access modifiers changed from: protected */
    public SessionInputBuffer createSessionInputBuffer(Socket socket2, int i, HttpParams httpParams) {
        return new SocketInputBuffer(socket2, i, httpParams);
    }

    /* access modifiers changed from: protected */
    public SessionOutputBuffer createSessionOutputBuffer(Socket socket2, int i, HttpParams httpParams) {
        return new SocketOutputBuffer(socket2, i, httpParams);
    }

    public InetAddress getLocalAddress() {
        if (this.socket != null) {
            return this.socket.getLocalAddress();
        }
        return null;
    }

    public int getLocalPort() {
        if (this.socket != null) {
            return this.socket.getLocalPort();
        }
        return -1;
    }

    public InetAddress getRemoteAddress() {
        if (this.socket != null) {
            return this.socket.getInetAddress();
        }
        return null;
    }

    public int getRemotePort() {
        if (this.socket != null) {
            return this.socket.getPort();
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public Socket getSocket() {
        return this.socket;
    }

    public int getSocketTimeout() {
        if (this.socket == null) {
            return -1;
        }
        try {
            return this.socket.getSoTimeout();
        } catch (SocketException e) {
            return -1;
        }
    }

    public boolean isOpen() {
        return this.open;
    }

    public void setSocketTimeout(int i) {
        assertOpen();
        if (this.socket != null) {
            try {
                this.socket.setSoTimeout(i);
            } catch (SocketException e) {
            }
        }
    }

    public void shutdown() {
        this.open = false;
        Socket socket2 = this.socket;
        if (socket2 != null) {
            socket2.close();
        }
    }

    public String toString() {
        if (this.socket == null) {
            return super.toString();
        }
        StringBuilder sb = new StringBuilder();
        SocketAddress remoteSocketAddress = this.socket.getRemoteSocketAddress();
        SocketAddress localSocketAddress = this.socket.getLocalSocketAddress();
        if (!(remoteSocketAddress == null || localSocketAddress == null)) {
            formatAddress(sb, localSocketAddress);
            sb.append("<->");
            formatAddress(sb, remoteSocketAddress);
        }
        return sb.toString();
    }
}
