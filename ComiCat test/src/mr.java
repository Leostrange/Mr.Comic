// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class mr extends mj
{
    final class a extends FilterInputStream
    {

        final mr a;
        private long b;

        private void a()
        {
            String s = a.a.getHeaderField("Content-Length");
            long l;
            if (s == null)
            {
                l = -1L;
            } else
            {
                l = Long.parseLong(s);
            }
            while (l == -1L || b == 0L || b >= l) 
            {
                return;
            }
            throw new IOException((new StringBuilder("Connection closed prematurely: bytesRead = ")).append(b).append(", Content-Length = ").append(l).toString());
        }

        public final int read()
        {
            int i = in.read();
            if (i == -1)
            {
                a();
                return i;
            } else
            {
                b = b + 1L;
                return i;
            }
        }

        public final int read(byte abyte0[], int i, int j)
        {
            i = in.read(abyte0, i, j);
            if (i == -1)
            {
                a();
                return i;
            } else
            {
                b = b + (long)i;
                return i;
            }
        }

        public a(InputStream inputstream)
        {
            a = mr.this;
            super(inputstream);
            b = 0L;
        }
    }


    final HttpURLConnection a;
    private final int b;
    private final String c;
    private final ArrayList d = new ArrayList();
    private final ArrayList e = new ArrayList();

    mr(HttpURLConnection httpurlconnection)
    {
        a = httpurlconnection;
        int j = httpurlconnection.getResponseCode();
        int i = j;
        if (j == -1)
        {
            i = 0;
        }
        b = i;
        c = httpurlconnection.getResponseMessage();
        ArrayList arraylist = d;
        ArrayList arraylist1 = e;
        for (httpurlconnection = httpurlconnection.getHeaderFields().entrySet().iterator(); httpurlconnection.hasNext();)
        {
            Object obj = (java.util.Map.Entry)httpurlconnection.next();
            String s = (String)((java.util.Map.Entry) (obj)).getKey();
            if (s != null)
            {
                obj = ((List)((java.util.Map.Entry) (obj)).getValue()).iterator();
                while (((Iterator) (obj)).hasNext()) 
                {
                    String s1 = (String)((Iterator) (obj)).next();
                    if (s1 != null)
                    {
                        arraylist.add(s);
                        arraylist1.add(s1);
                    }
                }
            }
        }

    }

    public final InputStream a()
    {
        Object obj;
        try
        {
            obj = a.getInputStream();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = a.getErrorStream();
        }
        if (obj == null)
        {
            return null;
        } else
        {
            return new a(((InputStream) (obj)));
        }
    }

    public final String a(int i)
    {
        return (String)d.get(i);
    }

    public final String b()
    {
        return a.getContentEncoding();
    }

    public final String b(int i)
    {
        return (String)e.get(i);
    }

    public final String c()
    {
        return a.getHeaderField("Content-Type");
    }

    public final String d()
    {
        String s = a.getHeaderField(0);
        if (s != null && s.startsWith("HTTP/1."))
        {
            return s;
        } else
        {
            return null;
        }
    }

    public final int e()
    {
        return b;
    }

    public final String f()
    {
        return c;
    }

    public final int g()
    {
        return d.size();
    }

    public final void h()
    {
        a.disconnect();
    }
}
