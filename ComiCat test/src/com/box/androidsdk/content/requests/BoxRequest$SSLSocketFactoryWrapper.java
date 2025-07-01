// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest

class mFactory extends SSLSocketFactory
{

    public SSLSocketFactory mFactory;
    private WeakReference mSocket;
    final BoxRequest this$0;

    private Socket wrapSocket(Socket socket)
    {
        mSocket = new WeakReference(socket);
        return socket;
    }

    public Socket createSocket(String s, int i)
    {
        return wrapSocket(mFactory.createSocket(s, i));
    }

    public Socket createSocket(String s, int i, InetAddress inetaddress, int j)
    {
        return wrapSocket(mFactory.createSocket(s, i, inetaddress, j));
    }

    public Socket createSocket(InetAddress inetaddress, int i)
    {
        return wrapSocket(mFactory.createSocket(inetaddress, i));
    }

    public Socket createSocket(InetAddress inetaddress, int i, InetAddress inetaddress1, int j)
    {
        return wrapSocket(mFactory.createSocket(inetaddress, i, inetaddress1, j));
    }

    public Socket createSocket(Socket socket, String s, int i, boolean flag)
    {
        return wrapSocket(mFactory.createSocket(socket, s, i, flag));
    }

    public String[] getDefaultCipherSuites()
    {
        return mFactory.getDefaultCipherSuites();
    }

    public Socket getSocket()
    {
        if (mSocket != null)
        {
            return (Socket)mSocket.get();
        } else
        {
            return null;
        }
    }

    public String[] getSupportedCipherSuites()
    {
        return mFactory.getDefaultCipherSuites();
    }

    public (SSLSocketFactory sslsocketfactory)
    {
        this$0 = BoxRequest.this;
        super();
        mFactory = sslsocketfactory;
    }
}
