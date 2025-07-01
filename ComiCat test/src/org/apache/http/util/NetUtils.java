// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;

// Referenced classes of package org.apache.http.util:
//            Args

public final class NetUtils
{

    public NetUtils()
    {
    }

    public static void formatAddress(StringBuilder stringbuilder, SocketAddress socketaddress)
    {
        Args.notNull(stringbuilder, "Buffer");
        Args.notNull(socketaddress, "Socket address");
        if (socketaddress instanceof InetSocketAddress)
        {
            InetSocketAddress inetsocketaddress = (InetSocketAddress)socketaddress;
            InetAddress inetaddress = inetsocketaddress.getAddress();
            socketaddress = inetaddress;
            if (inetaddress != null)
            {
                socketaddress = inetaddress.getHostAddress();
            }
            stringbuilder.append(socketaddress).append(':').append(inetsocketaddress.getPort());
            return;
        } else
        {
            stringbuilder.append(socketaddress);
            return;
        }
    }
}
