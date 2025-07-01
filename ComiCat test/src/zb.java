// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

public final class zb extends URLStreamHandler
{

    static final URLStreamHandler a = new zb();

    public zb()
    {
    }

    protected final int getDefaultPort()
    {
        return 445;
    }

    public final URLConnection openConnection(URL url)
    {
        return new aar(url);
    }

    protected final void parseURL(URL url, String s, int i, int j)
    {
        String s2 = url.getHost();
        if (!s.equals("smb://")) goto _L2; else goto _L1
_L1:
        String s1;
        int k;
        s1 = "smb:////";
        k = j + 2;
_L4:
        super.parseURL(url, s1, i, k);
        s1 = url.getPath();
        s2 = url.getRef();
        s = s1;
        if (s2 != null)
        {
            s = (new StringBuilder()).append(s1).append('#').append(s2).toString();
        }
        j = url.getPort();
        i = j;
        if (j == -1)
        {
            i = getDefaultPort();
        }
        setURL(url, "smb", url.getHost(), i, url.getAuthority(), url.getUserInfo(), s, url.getQuery(), null);
        return;
_L2:
        s1 = s;
        k = j;
        if (!s.startsWith("smb://"))
        {
            s1 = s;
            k = j;
            if (s2 != null)
            {
                s1 = s;
                k = j;
                if (s2.length() == 0)
                {
                    s1 = (new StringBuilder("//")).append(s).toString();
                    k = j + 2;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
