package org.apache.http.impl.bootstrap;

import javax.net.ssl.SSLServerSocket;

public interface SSLServerSetupHandler {
    void initialize(SSLServerSocket sSLServerSocket);
}
