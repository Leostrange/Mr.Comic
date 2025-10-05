package org.apache.http.impl;

import java.net.Socket;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
public class DefaultHttpClientConnection extends SocketHttpClientConnection {
    public void bind(Socket socket, HttpParams httpParams) {
        boolean z = true;
        Args.notNull(socket, "Socket");
        Args.notNull(httpParams, "HTTP parameters");
        assertNotOpen();
        socket.setTcpNoDelay(httpParams.getBooleanParameter(CoreConnectionPNames.TCP_NODELAY, true));
        socket.setSoTimeout(httpParams.getIntParameter(CoreConnectionPNames.SO_TIMEOUT, 0));
        socket.setKeepAlive(httpParams.getBooleanParameter(CoreConnectionPNames.SO_KEEPALIVE, false));
        int intParameter = httpParams.getIntParameter(CoreConnectionPNames.SO_LINGER, -1);
        if (intParameter >= 0) {
            if (intParameter <= 0) {
                z = false;
            }
            socket.setSoLinger(z, intParameter);
        }
        super.bind(socket, httpParams);
    }
}
