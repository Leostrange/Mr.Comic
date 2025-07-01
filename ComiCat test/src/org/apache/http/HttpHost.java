// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http;

import java.io.Serializable;
import java.net.InetAddress;
import java.util.Locale;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

public final class HttpHost
    implements Serializable, Cloneable
{

    public static final String DEFAULT_SCHEME_NAME = "http";
    private static final long serialVersionUID = 0x978228e715c1f9e6L;
    protected final InetAddress address;
    protected final String hostname;
    protected final String lcHostname;
    protected final int port;
    protected final String schemeName;

    public HttpHost(String s)
    {
        this(s, -1, null);
    }

    public HttpHost(String s, int i)
    {
        this(s, i, null);
    }

    public HttpHost(String s, int i, String s1)
    {
        hostname = (String)Args.containsNoBlanks(s, "Host name");
        lcHostname = s.toLowerCase(Locale.ROOT);
        if (s1 != null)
        {
            schemeName = s1.toLowerCase(Locale.ROOT);
        } else
        {
            schemeName = "http";
        }
        port = i;
        address = null;
    }

    public HttpHost(InetAddress inetaddress)
    {
        this(inetaddress, -1, null);
    }

    public HttpHost(InetAddress inetaddress, int i)
    {
        this(inetaddress, i, null);
    }

    public HttpHost(InetAddress inetaddress, int i, String s)
    {
        this((InetAddress)Args.notNull(inetaddress, "Inet address"), inetaddress.getHostName(), i, s);
    }

    public HttpHost(InetAddress inetaddress, String s, int i, String s1)
    {
        address = (InetAddress)Args.notNull(inetaddress, "Inet address");
        hostname = (String)Args.notNull(s, "Hostname");
        lcHostname = hostname.toLowerCase(Locale.ROOT);
        if (s1 != null)
        {
            schemeName = s1.toLowerCase(Locale.ROOT);
        } else
        {
            schemeName = "http";
        }
        port = i;
    }

    public HttpHost(HttpHost httphost)
    {
        Args.notNull(httphost, "HTTP host");
        hostname = httphost.hostname;
        lcHostname = httphost.lcHostname;
        schemeName = httphost.schemeName;
        port = httphost.port;
        address = httphost.address;
    }

    public static HttpHost create(String s)
    {
        Args.containsNoBlanks(s, "HTTP Host");
        String s2 = null;
        int i = s.indexOf("://");
        String s1 = s;
        if (i > 0)
        {
            s2 = s.substring(0, i);
            s1 = s.substring(i + 3);
        }
        i = -1;
        int j = s1.lastIndexOf(":");
        s = s1;
        if (j > 0)
        {
            try
            {
                i = Integer.parseInt(s1.substring(j + 1));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid HTTP host: ")).append(s1).toString());
            }
            s = s1.substring(0, j);
        }
        return new HttpHost(s, i, s2);
    }

    public final Object clone()
    {
        return super.clone();
    }

    public final boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof HttpHost))
        {
            break MISSING_BLOCK_LABEL_90;
        }
        obj = (HttpHost)obj;
        if (!lcHostname.equals(((HttpHost) (obj)).lcHostname) || port != ((HttpHost) (obj)).port || !schemeName.equals(((HttpHost) (obj)).schemeName))
        {
            break; /* Loop/switch isn't completed */
        }
        if (address != null) goto _L4; else goto _L3
_L3:
        if (((HttpHost) (obj)).address == null) goto _L1; else goto _L5
_L5:
        return false;
_L4:
        if (!address.equals(((HttpHost) (obj)).address)) goto _L5; else goto _L6
_L6:
        return true;
        return false;
    }

    public final InetAddress getAddress()
    {
        return address;
    }

    public final String getHostName()
    {
        return hostname;
    }

    public final int getPort()
    {
        return port;
    }

    public final String getSchemeName()
    {
        return schemeName;
    }

    public final int hashCode()
    {
        int j = LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, lcHostname), port), schemeName);
        int i = j;
        if (address != null)
        {
            i = LangUtils.hashCode(j, address);
        }
        return i;
    }

    public final String toHostString()
    {
        if (port != -1)
        {
            StringBuilder stringbuilder = new StringBuilder(hostname.length() + 6);
            stringbuilder.append(hostname);
            stringbuilder.append(":");
            stringbuilder.append(Integer.toString(port));
            return stringbuilder.toString();
        } else
        {
            return hostname;
        }
    }

    public final String toString()
    {
        return toURI();
    }

    public final String toURI()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(schemeName);
        stringbuilder.append("://");
        stringbuilder.append(hostname);
        if (port != -1)
        {
            stringbuilder.append(':');
            stringbuilder.append(Integer.toString(port));
        }
        return stringbuilder.toString();
    }
}
