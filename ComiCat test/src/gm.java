// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.amazon.identity.auth.device.AuthError;
import org.apache.http.HttpResponse;
import org.json.JSONObject;

class gm extends gn
{

    private static final String c = gm.getName();

    gm(HttpResponse httpresponse, String s)
    {
        super(httpresponse, s);
        gz.c(c, (new StringBuilder("Creating OauthCodeForTokenResponse appId=")).append(s).toString());
    }

    final boolean a(String s, String s1)
    {
        return false;
    }

    public final gx f(JSONObject jsonobject)
    {
        jsonobject = super.f(jsonobject);
        if (jsonobject == null)
        {
            throw new AuthError("JSON response did not contain an AccessAtzToken", com.amazon.identity.auth.device.AuthError.b.l);
        } else
        {
            return jsonobject;
        }
    }

}
