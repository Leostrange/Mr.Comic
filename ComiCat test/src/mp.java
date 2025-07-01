// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

public final class mp
    implements mo
{

    private final Proxy a;

    public mp()
    {
        this((byte)0);
    }

    private mp(byte byte0)
    {
        a = null;
    }

    public final HttpURLConnection a(URL url)
    {
        if (a == null)
        {
            url = url.openConnection();
        } else
        {
            url = url.openConnection(a);
        }
        return (HttpURLConnection)(HttpURLConnection)url;
    }
}
