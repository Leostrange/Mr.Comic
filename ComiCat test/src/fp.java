// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import java.util.HashMap;
import java.util.Map;

public final class fp
{

    private static final String a = fr.getName();

    public fp()
    {
    }

    public static Bundle a(String s, String s1, String as[])
    {
        Bundle bundle = new Bundle();
        Uri uri = Uri.parse(s);
        gz.a(a, "Received response from WebBroswer for OAuth2 flow", (new StringBuilder("response=")).append(uri.toString()).toString());
        String s2 = uri.getQueryParameter("code");
        bundle.putString("code", s2);
        gz.a(a, "Code extracted from response", (new StringBuilder("code=")).append(s2).toString());
        s = a(uri);
        String s3 = (String)s.get("clientRequestId");
        if (TextUtils.isEmpty(s3))
        {
            throw new AuthError("No clientRequestId in OAuth2 response", com.amazon.identity.auth.device.AuthError.b.n);
        }
        if (!s3.equalsIgnoreCase(s1))
        {
            throw new AuthError((new StringBuilder("ClientRequestIds do not match. req=")).append(s3).append(" resp=").append(s1).toString(), com.amazon.identity.auth.device.AuthError.b.n);
        }
        s1 = uri.getQueryParameter("error");
        if (!TextUtils.isEmpty(s1))
        {
            s = uri.getQueryParameter("error_description");
            if ("access_denied".equals(s1) && !TextUtils.isEmpty(s) && ("Access not permitted.".equals(s) || "Access+not+permitted.".equals(s)))
            {
                bundle.putInt(fx.a.f.o, 0);
                bundle.putString(fx.a.j.o, s1);
                bundle.putString(fx.a.k.o, s);
                return bundle;
            } else
            {
                throw new AuthError((new StringBuilder("Error=")).append(s1).append("error_description=").append(s).toString(), com.amazon.identity.auth.device.AuthError.b.n);
            }
        }
        if (TextUtils.isEmpty(s2))
        {
            throw new AuthError("No code in OAuth2 response", com.amazon.identity.auth.device.AuthError.b.n);
        }
        s1 = uri.getQueryParameter("scope");
        bundle.putString("clientId", (String)s.get("clientId"));
        bundle.putString("redirectUri", (String)s.get("redirectUri"));
        if (s1 != null)
        {
            bundle.putStringArray("scope", ft.a(s1));
        } else
        {
            gz.a(a, "No scopes from OAuth2 response, using requested scopes");
            bundle.putStringArray("scope", as);
        }
        return bundle;
    }

    public static fq a(String s)
    {
        return fq.a((String)a(Uri.parse(s)).get("clientRequestId"));
    }

    private static Map a(Uri uri)
    {
        HashMap hashmap = new HashMap();
        uri = uri.getQueryParameter("state");
        if (uri != null)
        {
            uri = TextUtils.split(uri, "&");
            if (uri != null)
            {
                int j = uri.length;
                for (int i = 0; i < j; i++)
                {
                    String as[] = TextUtils.split(uri[i], "=");
                    if (as != null && as.length == 2)
                    {
                        hashmap.put(as[0], as[1]);
                    }
                }

            }
        }
        return hashmap;
    }

}
