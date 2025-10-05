package org.apache.http.impl.bootstrap;

import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.config.SocketConfig;
import org.apache.http.protocol.HttpService;

class RequestListener implements Runnable {
    private final HttpConnectionFactory<? extends HttpServerConnection> connectionFactory;
    private final ExceptionLogger exceptionLogger;
    private final ExecutorService executorService;
    private final HttpService httpService;
    private final ServerSocket serversocket;
    private final SocketConfig socketConfig;
    private final AtomicBoolean terminated = new AtomicBoolean(false);

    public RequestListener(SocketConfig socketConfig2, ServerSocket serverSocket, HttpService httpService2, HttpConnectionFactory<? extends HttpServerConnection> httpConnectionFactory, ExceptionLogger exceptionLogger2, ExecutorService executorService2) {
        this.socketConfig = socketConfig2;
        this.serversocket = serverSocket;
        this.connectionFactory = httpConnectionFactory;
        this.httpService = httpService2;
        this.exceptionLogger = exceptionLogger2;
        this.executorService = executorService2;
    }

    public boolean isTerminated() {
        return this.terminated.get();
    }

    public void run() {
        while (!isTerminated() && !Thread.interrupted()) {
            try {
                Socket accept = this.serversocket.accept();
                accept.setSoTimeout(this.socketConfig.getSoTimeout());
                accept.setKeepAlive(this.socketConfig.isSoKeepAlive());
                accept.setTcpNoDelay(this.socketConfig.isTcpNoDelay());
                if (this.socketConfig.getRcvBufSize() > 0) {
                    accept.setReceiveBufferSize(this.socketConfig.getRcvBufSize());
                }
                if (this.socketConfig.getSndBufSize() > 0) {
                    accept.setSendBufferSize(this.socketConfig.getSndBufSize());
                }
                if (this.socketConfig.getSoLinger() >= 0) {
                    accept.setSoLinger(true, this.socketConfig.getSoLinger());
                }
                this.executorService.execute(new Worker(this.httpService, (HttpServerConnection) this.connectionFactory.createConnection(accept), this.exceptionLogger));
            } catch (Exception e) {
                this.exceptionLogger.log(e);
                return;
            }
        }
    }

    public void terminate() {
        if (this.terminated.compareAndSet(false, true)) {
            this.serversocket.close();
        }
    }
}
