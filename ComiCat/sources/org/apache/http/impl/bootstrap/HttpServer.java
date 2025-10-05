package org.apache.http.impl.bootstrap;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLServerSocket;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpServerConnection;
import org.apache.http.protocol.HttpService;

public class HttpServer {
    private final HttpConnectionFactory<? extends DefaultBHttpServerConnection> connectionFactory;
    private final ExceptionLogger exceptionLogger;
    private final HttpService httpService;
    private final InetAddress ifAddress;
    private final ThreadPoolExecutor listenerExecutorService = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryImpl("HTTP-listener-" + this.port));
    private final int port;
    private volatile RequestListener requestListener;
    private volatile ServerSocket serverSocket;
    private final ServerSocketFactory serverSocketFactory;
    private final SocketConfig socketConfig;
    private final SSLServerSetupHandler sslSetupHandler;
    private final AtomicReference<Status> status = new AtomicReference<>(Status.READY);
    private final WorkerPoolExecutor workerExecutorService = new WorkerPoolExecutor(0, Integer.MAX_VALUE, 1, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryImpl("HTTP-worker", this.workerThreads));
    private final ThreadGroup workerThreads = new ThreadGroup("HTTP-workers");

    enum Status {
        READY,
        ACTIVE,
        STOPPING
    }

    HttpServer(int i, InetAddress inetAddress, SocketConfig socketConfig2, ServerSocketFactory serverSocketFactory2, HttpService httpService2, HttpConnectionFactory<? extends DefaultBHttpServerConnection> httpConnectionFactory, SSLServerSetupHandler sSLServerSetupHandler, ExceptionLogger exceptionLogger2) {
        this.port = i;
        this.ifAddress = inetAddress;
        this.socketConfig = socketConfig2;
        this.serverSocketFactory = serverSocketFactory2;
        this.httpService = httpService2;
        this.connectionFactory = httpConnectionFactory;
        this.sslSetupHandler = sSLServerSetupHandler;
        this.exceptionLogger = exceptionLogger2;
    }

    public void awaitTermination(long j, TimeUnit timeUnit) {
        this.workerExecutorService.awaitTermination(j, timeUnit);
    }

    public InetAddress getInetAddress() {
        ServerSocket serverSocket2 = this.serverSocket;
        if (serverSocket2 != null) {
            return serverSocket2.getInetAddress();
        }
        return null;
    }

    public int getLocalPort() {
        ServerSocket serverSocket2 = this.serverSocket;
        if (serverSocket2 != null) {
            return serverSocket2.getLocalPort();
        }
        return -1;
    }

    public void shutdown(long j, TimeUnit timeUnit) {
        stop();
        if (j > 0) {
            try {
                awaitTermination(j, timeUnit);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
        for (Worker connection : this.workerExecutorService.getWorkers()) {
            try {
                connection.getConnection().shutdown();
            } catch (IOException e2) {
                this.exceptionLogger.log(e2);
            }
        }
    }

    public void start() {
        if (this.status.compareAndSet(Status.READY, Status.ACTIVE)) {
            this.serverSocket = this.serverSocketFactory.createServerSocket(this.port, this.socketConfig.getBacklogSize(), this.ifAddress);
            this.serverSocket.setReuseAddress(this.socketConfig.isSoReuseAddress());
            if (this.socketConfig.getRcvBufSize() > 0) {
                this.serverSocket.setReceiveBufferSize(this.socketConfig.getRcvBufSize());
            }
            if (this.sslSetupHandler != null && (this.serverSocket instanceof SSLServerSocket)) {
                this.sslSetupHandler.initialize((SSLServerSocket) this.serverSocket);
            }
            this.requestListener = new RequestListener(this.socketConfig, this.serverSocket, this.httpService, this.connectionFactory, this.exceptionLogger, this.workerExecutorService);
            this.listenerExecutorService.execute(this.requestListener);
        }
    }

    public void stop() {
        if (this.status.compareAndSet(Status.ACTIVE, Status.STOPPING)) {
            this.listenerExecutorService.shutdown();
            this.workerExecutorService.shutdown();
            RequestListener requestListener2 = this.requestListener;
            if (requestListener2 != null) {
                try {
                    requestListener2.terminate();
                } catch (IOException e) {
                    this.exceptionLogger.log(e);
                }
            }
            this.workerThreads.interrupt();
        }
    }
}
