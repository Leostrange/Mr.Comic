// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Bundle;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicNameValuePair;

class gl extends gj
{

    private static final String j = gl.getName();
    private final String k;
    private final String l;

    gl(String s, String s1, String s2, Bundle bundle, String s3, String s4, String s5, 
            String s6, Context context)
    {
        super(s, s1, s2, s5, context, s4, bundle);
        k = s3;
        l = s6;
    }

    protected final gp a(HttpResponse httpresponse)
    {
        return new gm(httpresponse, super.a);
    }

    public final String c()
    {
        return "authorization_code";
    }

    protected final void d()
    {
        super.d();
        h.add(new BasicNameValuePair("code", k));
        h.add(new BasicNameValuePair("redirect_uri", l));
    }

    public final HttpResponse f()
    {
        gz.a(j, (new StringBuilder("Oauth Code for Token Exchange executeRequest. redirectUri=")).append(l).append(" appId=").append(super.a).toString(), (new StringBuilder("code=")).append(k).toString());
        return super.f();
    }

}
