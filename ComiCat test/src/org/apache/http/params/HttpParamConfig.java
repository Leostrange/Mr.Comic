// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.params;

import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.MessageConstraints;
import org.apache.http.config.SocketConfig;

// Referenced classes of package org.apache.http.params:
//            HttpParams

public final class HttpParamConfig
{

    private HttpParamConfig()
    {
    }

    public static ConnectionConfig getConnectionConfig(HttpParams httpparams)
    {
        MessageConstraints messageconstraints = getMessageConstraints(httpparams);
        Object obj = (String)httpparams.getParameter("http.protocol.element-charset");
        org.apache.http.config.ConnectionConfig.Builder builder = ConnectionConfig.custom();
        if (obj != null)
        {
            obj = Charset.forName(((String) (obj)));
        } else
        {
            obj = null;
        }
        return builder.setCharset(((Charset) (obj))).setMalformedInputAction((CodingErrorAction)httpparams.getParameter("http.malformed.input.action")).setMalformedInputAction((CodingErrorAction)httpparams.getParameter("http.unmappable.input.action")).setMessageConstraints(messageconstraints).build();
    }

    public static MessageConstraints getMessageConstraints(HttpParams httpparams)
    {
        return MessageConstraints.custom().setMaxHeaderCount(httpparams.getIntParameter("http.connection.max-header-count", -1)).setMaxLineLength(httpparams.getIntParameter("http.connection.max-line-length", -1)).build();
    }

    public static SocketConfig getSocketConfig(HttpParams httpparams)
    {
        return SocketConfig.custom().setSoTimeout(httpparams.getIntParameter("http.socket.timeout", 0)).setSoReuseAddress(httpparams.getBooleanParameter("http.socket.reuseaddr", false)).setSoKeepAlive(httpparams.getBooleanParameter("http.socket.keepalive", false)).setSoLinger(httpparams.getIntParameter("http.socket.linger", -1)).setTcpNoDelay(httpparams.getBooleanParameter("http.tcp.nodelay", true)).build();
    }
}
