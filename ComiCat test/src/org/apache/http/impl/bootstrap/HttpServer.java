// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.bootstrap;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLServerSocket;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.config.SocketConfig;
import org.apache.http.protocol.HttpService;

// Referenced classes of package org.apache.http.impl.bootstrap:
//            ThreadFactoryImpl, WorkerPoolExecutor, Worker, SSLServerSetupHandler, 
//            RequestListener

public class HttpServer
{
    static final class Status extends Enum
    {

        private static final Status $VALUES[];
        public static final Status ACTIVE;
        public static final Status READY;
        public static final Status STOPPING;

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(org/apache/http/impl/bootstrap/HttpServer$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])$VALUES.clone();
        }

        static 
        {
            READY = new Status("READY", 0);
            ACTIVE = new Status("ACTIVE", 1);
            STOPPING = new Status("STOPPING", 2);
            $VALUES = (new Status[] {
                READY, ACTIVE, STOPPING
            });
        }

        private Status(String s, int i)
        {
            super(s, i);
        }
    }


    private final HttpConnectionFactory connectionFactory;
    private final ExceptionLogger exceptionLogger;
    private final HttpService httpService;
    private final InetAddress ifAddress;
    private final ThreadPoolExecutor listenerExecutorService;
    private final int port;
    private volatile RequestListener requestListener;
    private volatile ServerSocket serverSocket;
    private final ServerSocketFactory serverSocketFactory;
    private final SocketConfig socketConfig;
    private final SSLServerSetupHandler sslSetupHandler;
    private final AtomicReference status;
    private final WorkerPoolExecutor workerExecutorService;
    private final ThreadGroup workerThreads = new ThreadGroup("HTTP-workers");

    HttpServer(int i, InetAddress inetaddress, SocketConfig socketconfig, ServerSocketFactory serversocketfactory, HttpService httpservice, HttpConnectionFactory httpconnectionfactory, SSLServerSetupHandler sslserversetuphandler, 
            ExceptionLogger exceptionlogger)
    {
        port = i;
        ifAddress = inetaddress;
        socketConfig = socketconfig;
        serverSocketFactory = serversocketfactory;
        httpService = httpservice;
        connectionFactory = httpconnectionfactory;
        sslSetupHandler = sslserversetuphandler;
        exceptionLogger = exceptionlogger;
        listenerExecutorService = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryImpl((new StringBuilder("HTTP-listener-")).append(port).toString()));
        workerExecutorService = new WorkerPoolExecutor(0, 0x7fffffff, 1L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryImpl("HTTP-worker", workerThreads));
        status = new AtomicReference(Status.READY);
    }

    public void awaitTermination(long l, TimeUnit timeunit)
    {
        workerExecutorService.awaitTermination(l, timeunit);
    }

    public InetAddress getInetAddress()
    {
        ServerSocket serversocket = serverSocket;
        if (serversocket != null)
        {
            return serversocket.getInetAddress();
        } else
        {
            return null;
        }
    }

    public int getLocalPort()
    {
        ServerSocket serversocket = serverSocket;
        if (serversocket != null)
        {
            return serversocket.getLocalPort();
        } else
        {
            return -1;
        }
    }

    public void shutdown(long l, TimeUnit timeunit)
    {
        stop();
        if (l > 0L)
        {
            try
            {
                awaitTermination(l, timeunit);
            }
            // Misplaced declaration of an exception variable
            catch (TimeUnit timeunit)
            {
                Thread.currentThread().interrupt();
            }
        }
        for (timeunit = workerExecutorService.getWorkers().iterator(); timeunit.hasNext();)
        {
            HttpServerConnection httpserverconnection = ((Worker)timeunit.next()).getConnection();
            try
            {
                httpserverconnection.shutdown();
            }
            catch (IOException ioexception)
            {
                exceptionLogger.log(ioexception);
            }
        }

    }

    public void start()
    {
        if (status.compareAndSet(Status.READY, Status.ACTIVE))
        {
            serverSocket = serverSocketFactory.createServerSocket(port, socketConfig.getBacklogSize(), ifAddress);
            serverSocket.setReuseAddress(socketConfig.isSoReuseAddress());
            if (socketConfig.getRcvBufSize() > 0)
            {
                serverSocket.setReceiveBufferSize(socketConfig.getRcvBufSize());
            }
            if (sslSetupHandler != null && (serverSocket instanceof SSLServerSocket))
            {
                sslSetupHandler.initialize((SSLServerSocket)serverSocket);
            }
            requestListener = new RequestListener(socketConfig, serverSocket, httpService, connectionFactory, exceptionLogger, workerExecutorService);
            listenerExecutorService.execute(requestListener);
        }
    }

    public void stop()
    {
        if (status.compareAndSet(Status.ACTIVE, Status.STOPPING))
        {
            listenerExecutorService.shutdown();
            workerExecutorService.shutdown();
            RequestListener requestlistener = requestListener;
            if (requestlistener != null)
            {
                try
                {
                    requestlistener.terminate();
                }
                catch (IOException ioexception)
                {
                    exceptionLogger.log(ioexception);
                }
            }
            workerThreads.interrupt();
        }
    }
}
