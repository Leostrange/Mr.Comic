// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;

public final class st extends sm
{

    public st(ta ta, HttpClient httpclient, String s)
    {
        super(ta, httpclient, sv.a, s);
    }

    public final String b()
    {
        return "GET";
    }

    protected final HttpUriRequest c()
    {
        return new HttpGet(c.toString());
    }
}
