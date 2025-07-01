// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.bootstrap;

import java.io.IOException;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpServerConnection;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpService;

class Worker
    implements Runnable
{

    private final HttpServerConnection conn;
    private final ExceptionLogger exceptionLogger;
    private final HttpService httpservice;

    Worker(HttpService httpservice1, HttpServerConnection httpserverconnection, ExceptionLogger exceptionlogger)
    {
        httpservice = httpservice1;
        conn = httpserverconnection;
        exceptionLogger = exceptionlogger;
    }

    public HttpServerConnection getConnection()
    {
        return conn;
    }

    public void run()
    {
        BasicHttpContext basichttpcontext = new BasicHttpContext();
        HttpCoreContext httpcorecontext = HttpCoreContext.adapt(basichttpcontext);
        for (; !Thread.interrupted() && conn.isOpen(); basichttpcontext.clear())
        {
            httpservice.handleRequest(conn, httpcorecontext);
        }

        break MISSING_BLOCK_LABEL_71;
        Object obj;
        obj;
        exceptionLogger.log(((Exception) (obj)));
        try
        {
            conn.shutdown();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            exceptionLogger.log(((Exception) (obj)));
        }
        break MISSING_BLOCK_LABEL_113;
        conn.close();
        try
        {
            conn.shutdown();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            exceptionLogger.log(((Exception) (obj)));
        }
        return;
        return;
        obj;
        try
        {
            conn.shutdown();
        }
        catch (IOException ioexception)
        {
            exceptionLogger.log(ioexception);
        }
        throw obj;
    }
}
