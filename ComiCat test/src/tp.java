// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.util.List;
import org.apache.http.client.HttpClient;
import org.apache.http.message.BasicNameValuePair;

class tp extends tr
{

    static final boolean a;
    private final tj.c e;
    private final String f;
    private final String g;

    public tp(HttpClient httpclient, String s, String s1, String s2)
    {
        super(httpclient, s);
        e = tj.c.d;
        if (!a && s1 == null)
        {
            throw new AssertionError();
        }
        if (!a && TextUtils.isEmpty(s1))
        {
            throw new AssertionError();
        }
        if (!a && s2 == null)
        {
            throw new AssertionError();
        }
        if (!a && TextUtils.isEmpty(s2))
        {
            throw new AssertionError();
        } else
        {
            f = s1;
            g = s2;
            return;
        }
    }

    protected final void a(List list)
    {
        list.add(new BasicNameValuePair("refresh_token", f));
        list.add(new BasicNameValuePair("scope", g));
        list.add(new BasicNameValuePair("grant_type", e.toString()));
    }

    static 
    {
        boolean flag;
        if (!tp.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
