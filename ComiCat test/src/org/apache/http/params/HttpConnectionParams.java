// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.params;

import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.params:
//            CoreConnectionPNames, HttpParams

public final class HttpConnectionParams
    implements CoreConnectionPNames
{

    private HttpConnectionParams()
    {
    }

    public static int getConnectionTimeout(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getIntParameter("http.connection.timeout", 0);
    }

    public static int getLinger(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getIntParameter("http.socket.linger", -1);
    }

    public static boolean getSoKeepalive(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getBooleanParameter("http.socket.keepalive", false);
    }

    public static boolean getSoReuseaddr(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getBooleanParameter("http.socket.reuseaddr", false);
    }

    public static int getSoTimeout(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getIntParameter("http.socket.timeout", 0);
    }

    public static int getSocketBufferSize(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getIntParameter("http.socket.buffer-size", -1);
    }

    public static boolean getTcpNoDelay(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getBooleanParameter("http.tcp.nodelay", true);
    }

    public static boolean isStaleCheckingEnabled(HttpParams httpparams)
    {
        Args.notNull(httpparams, "HTTP parameters");
        return httpparams.getBooleanParameter("http.connection.stalecheck", true);
    }

    public static void setConnectionTimeout(HttpParams httpparams, int i)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setIntParameter("http.connection.timeout", i);
    }

    public static void setLinger(HttpParams httpparams, int i)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setIntParameter("http.socket.linger", i);
    }

    public static void setSoKeepalive(HttpParams httpparams, boolean flag)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setBooleanParameter("http.socket.keepalive", flag);
    }

    public static void setSoReuseaddr(HttpParams httpparams, boolean flag)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setBooleanParameter("http.socket.reuseaddr", flag);
    }

    public static void setSoTimeout(HttpParams httpparams, int i)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setIntParameter("http.socket.timeout", i);
    }

    public static void setSocketBufferSize(HttpParams httpparams, int i)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setIntParameter("http.socket.buffer-size", i);
    }

    public static void setStaleCheckingEnabled(HttpParams httpparams, boolean flag)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setBooleanParameter("http.connection.stalecheck", flag);
    }

    public static void setTcpNoDelay(HttpParams httpparams, boolean flag)
    {
        Args.notNull(httpparams, "HTTP parameters");
        httpparams.setBooleanParameter("http.tcp.nodelay", flag);
    }
}
