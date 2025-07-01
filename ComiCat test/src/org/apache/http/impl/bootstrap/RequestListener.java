// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

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

// Referenced classes of package org.apache.http.impl.bootstrap:
//            Worker

class RequestListener
    implements Runnable
{

    private final HttpConnectionFactory connectionFactory;
    private final ExceptionLogger exceptionLogger;
    private final ExecutorService executorService;
    private final HttpService httpService;
    private final ServerSocket serversocket;
    private final SocketConfig socketConfig;
    private final AtomicBoolean terminated = new AtomicBoolean(false);

    public RequestListener(SocketConfig socketconfig, ServerSocket serversocket1, HttpService httpservice, HttpConnectionFactory httpconnectionfactory, ExceptionLogger exceptionlogger, ExecutorService executorservice)
    {
        socketConfig = socketconfig;
        serversocket = serversocket1;
        connectionFactory = httpconnectionfactory;
        httpService = httpservice;
        exceptionLogger = exceptionlogger;
        executorService = executorservice;
    }

    public boolean isTerminated()
    {
        return terminated.get();
    }

    public void run()
    {
        try
        {
            Object obj;
            for (; !isTerminated() && !Thread.interrupted(); executorService.execute(((Runnable) (obj))))
            {
                obj = serversocket.accept();
                ((Socket) (obj)).setSoTimeout(socketConfig.getSoTimeout());
                ((Socket) (obj)).setKeepAlive(socketConfig.isSoKeepAlive());
                ((Socket) (obj)).setTcpNoDelay(socketConfig.isTcpNoDelay());
                if (socketConfig.getRcvBufSize() > 0)
                {
                    ((Socket) (obj)).setReceiveBufferSize(socketConfig.getRcvBufSize());
                }
                if (socketConfig.getSndBufSize() > 0)
                {
                    ((Socket) (obj)).setSendBufferSize(socketConfig.getSndBufSize());
                }
                if (socketConfig.getSoLinger() >= 0)
                {
                    ((Socket) (obj)).setSoLinger(true, socketConfig.getSoLinger());
                }
                obj = (HttpServerConnection)connectionFactory.createConnection(((Socket) (obj)));
                obj = new Worker(httpService, ((HttpServerConnection) (obj)), exceptionLogger);
            }

        }
        catch (Exception exception)
        {
            exceptionLogger.log(exception);
        }
    }

    public void terminate()
    {
        if (terminated.compareAndSet(false, true))
        {
            serversocket.close();
        }
    }
}
