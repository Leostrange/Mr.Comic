// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;


// Referenced classes of package org.apache.http.config:
//            SocketConfig

public static class tcpNoDelay
{

    private int backlogSize;
    private int rcvBufSize;
    private int sndBufSize;
    private boolean soKeepAlive;
    private int soLinger;
    private boolean soReuseAddress;
    private int soTimeout;
    private boolean tcpNoDelay;

    public SocketConfig build()
    {
        return new SocketConfig(soTimeout, soReuseAddress, soLinger, soKeepAlive, tcpNoDelay, sndBufSize, rcvBufSize, backlogSize);
    }

    public backlogSize setBacklogSize(int i)
    {
        backlogSize = i;
        return this;
    }

    public backlogSize setRcvBufSize(int i)
    {
        rcvBufSize = i;
        return this;
    }

    public rcvBufSize setSndBufSize(int i)
    {
        sndBufSize = i;
        return this;
    }

    public sndBufSize setSoKeepAlive(boolean flag)
    {
        soKeepAlive = flag;
        return this;
    }

    public soKeepAlive setSoLinger(int i)
    {
        soLinger = i;
        return this;
    }

    public soLinger setSoReuseAddress(boolean flag)
    {
        soReuseAddress = flag;
        return this;
    }

    public soReuseAddress setSoTimeout(int i)
    {
        soTimeout = i;
        return this;
    }

    public soTimeout setTcpNoDelay(boolean flag)
    {
        tcpNoDelay = flag;
        return this;
    }

    ()
    {
        soLinger = -1;
        tcpNoDelay = true;
    }
}
