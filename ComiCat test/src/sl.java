// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.util.List;
import java.util.Locale;
import org.apache.http.client.HttpClient;
import org.apache.http.message.BasicNameValuePair;

class sl extends tr
{

    static final boolean a;
    private final String e;
    private final tj.c f;
    private final String g;

    public sl(HttpClient httpclient, String s, String s1, String s2)
    {
        super(httpclient, s);
        if (!a && TextUtils.isEmpty(s1))
        {
            throw new AssertionError();
        }
        if (!a && TextUtils.isEmpty(s2))
        {
            throw new AssertionError();
        } else
        {
            g = s1;
            e = s2;
            f = tj.c.a;
            return;
        }
    }

    protected final void a(List list)
    {
        list.add(new BasicNameValuePair("code", e));
        list.add(new BasicNameValuePair("redirect_uri", g));
        list.add(new BasicNameValuePair("grant_type", f.toString().toLowerCase(Locale.US)));
    }

    static 
    {
        boolean flag;
        if (!sl.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
