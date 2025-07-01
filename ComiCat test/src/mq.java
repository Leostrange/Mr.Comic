// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.OutputStream;
import java.net.HttpURLConnection;

final class mq extends mi
{

    private final HttpURLConnection e;

    mq(HttpURLConnection httpurlconnection)
    {
        e = httpurlconnection;
        httpurlconnection.setInstanceFollowRedirects(false);
    }

    public final mj a()
    {
        Object obj = e;
        if (super.d == null) goto _L2; else goto _L1
_L1:
        Object obj1;
        long l;
        obj1 = super.c;
        if (obj1 != null)
        {
            a("Content-Type", ((String) (obj1)));
        }
        obj1 = super.b;
        if (obj1 != null)
        {
            a("Content-Encoding", ((String) (obj1)));
        }
        l = super.a;
        if (l >= 0L)
        {
            a("Content-Length", Long.toString(l));
        }
        obj1 = ((HttpURLConnection) (obj)).getRequestMethod();
        if (!"POST".equals(obj1) && !"PUT".equals(obj1)) goto _L4; else goto _L3
_L3:
        ((HttpURLConnection) (obj)).setDoOutput(true);
        if (l >= 0L && l <= 0x7fffffffL)
        {
            ((HttpURLConnection) (obj)).setFixedLengthStreamingMode((int)l);
        } else
        {
            ((HttpURLConnection) (obj)).setChunkedStreamingMode(0);
        }
        obj1 = ((HttpURLConnection) (obj)).getOutputStream();
        super.d.a(((OutputStream) (obj1)));
        ((OutputStream) (obj1)).close();
_L2:
        ((HttpURLConnection) (obj)).connect();
        obj1 = new mr(((HttpURLConnection) (obj)));
        return ((mj) (obj1));
        obj;
        ((OutputStream) (obj1)).close();
        throw obj;
_L4:
        boolean flag;
        if (l == 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "%s with non-zero content length is not supported", new Object[] {
            obj1
        });
        if (true) goto _L2; else goto _L5
_L5:
        Exception exception;
        exception;
        ((HttpURLConnection) (obj)).disconnect();
        throw exception;
    }

    public final void a(int i, int j)
    {
        e.setReadTimeout(j);
        e.setConnectTimeout(i);
    }

    public final void a(String s, String s1)
    {
        e.addRequestProperty(s, s1);
    }
}
