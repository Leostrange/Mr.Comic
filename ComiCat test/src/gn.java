// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidGrantAuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.json.JSONException;
import org.json.JSONObject;

class gn extends gi
{

    private static final String c = gn.getName();
    protected gv b;
    private final String d;
    private gx e;

    gn(HttpResponse httpresponse, String s)
    {
        super(httpresponse);
        e = null;
        d = s;
    }

    private gv g(JSONObject jsonobject)
    {
        String s;
        if (!jsonobject.has("access_token"))
        {
            break MISSING_BLOCK_LABEL_41;
        }
        s = jsonobject.getString("access_token");
        long l = gu.a(e(jsonobject));
        return (gv)new gv(d, s, l);
        try
        {
            gz.b(c, "Unable to find AccessAtzToken in JSON response, throwing AuthError");
            throw new AuthError("JSON response did not contain an AccessAtzToken", com.amazon.identity.auth.device.AuthError.b.l);
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            gz.b(c, "Error reading JSON response, throwing AuthError");
        }
        throw new AuthError("Error reading JSON response", com.amazon.identity.auth.device.AuthError.b.l);
    }

    public final String a()
    {
        return "1.0.1";
    }

    protected final JSONObject a(JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        try
        {
            jsonobject1 = super.a(jsonobject);
        }
        catch (JSONException jsonexception)
        {
            gz.d(c, "No Response type in the response");
            return jsonobject;
        }
        return jsonobject1;
    }

    boolean a(String s, String s1)
    {
        return "invalid_token".equals(s) || "invalid_request".equals(s) && !TextUtils.isEmpty(s1) && s1.contains("access_token");
    }

    protected final void b(JSONObject jsonobject)
    {
        super.b(jsonobject);
        jsonobject = super.a.getFirstHeader("x-amzn-RequestId");
        if (jsonobject != null)
        {
            gz.a(c, "ExchangeRepsonse", (new StringBuilder("requestId=")).append(jsonobject.getValue()).toString());
            return;
        } else
        {
            gz.b(c, "No RequestId in headers");
            return;
        }
    }

    protected final void c(JSONObject jsonobject)
    {
        b = g(jsonobject);
        e = f(jsonobject);
    }

    public final ga[] c()
    {
        return (new ga[] {
            b, e
        });
    }

    protected final void d(JSONObject jsonobject)
    {
        String s = null;
        String s1 = jsonobject.getString("error");
        s = s1;
        if (TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        s = s1;
        String s2 = jsonobject.getString("error_description");
        s = s1;
        if ("invalid_grant".equals(s1)) goto _L4; else goto _L3
_L3:
        s = s1;
        boolean flag;
        if (!"unsupported_grant_type".equals(s1))
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
          goto _L4
_L8:
        if (!flag) goto _L6; else goto _L5
_L5:
        s = s1;
        gz.a(c, "Invalid source authorization in exchange.", (new StringBuilder("info=")).append(jsonobject).toString());
        s = s1;
        try
        {
            throw new InvalidGrantAuthError((new StringBuilder()).append("Invalid source authorization in exchange.").append(jsonobject).toString());
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject) { }
        if (!TextUtils.isEmpty(s))
        {
            throw new AuthError((new StringBuilder("Server Error : ")).append(s).toString(), com.amazon.identity.auth.device.AuthError.b.n);
        }
          goto _L2
_L6:
        s = s1;
        if (!a(s1, s2))
        {
            break MISSING_BLOCK_LABEL_223;
        }
        s = s1;
        gz.a(c, "Invalid Token in exchange.", (new StringBuilder("info=")).append(jsonobject).toString());
        s = s1;
        throw new InvalidTokenAuthError((new StringBuilder()).append("Invalid Token in exchange.").append(jsonobject).toString());
        s = s1;
        if (!"invalid_client".equals(s1))
        {
            break MISSING_BLOCK_LABEL_293;
        }
        s = s1;
        gz.a(c, "Invalid Client. ApiKey is invalid ", (new StringBuilder("info=")).append(jsonobject).toString());
        s = s1;
        throw new AuthError((new StringBuilder()).append("Invalid Client. ApiKey is invalid ").append(jsonobject).toString(), com.amazon.identity.auth.device.AuthError.b.c);
        s = s1;
        if ("invalid_scope".equals(s1))
        {
            break MISSING_BLOCK_LABEL_315;
        }
        s = s1;
        if (!"insufficient_scope".equals(s1))
        {
            break MISSING_BLOCK_LABEL_374;
        }
        s = s1;
        gz.a(c, "Invalid Scope. Authorization not valid for the requested scopes ", (new StringBuilder("info=")).append(jsonobject).toString());
        s = s1;
        throw new AuthError((new StringBuilder()).append("Invalid Scope. Authorization not valid for the requested scopes ").append(jsonobject).toString(), com.amazon.identity.auth.device.AuthError.b.d);
        s = s1;
        if (!"unauthorized_client".equals(s1))
        {
            break MISSING_BLOCK_LABEL_444;
        }
        s = s1;
        gz.a(c, "Unauthorizaied Client.  The authenticated client is not authorized to use this authorization grant type. ", (new StringBuilder("info=")).append(jsonobject).toString());
        s = s1;
        throw new AuthError((new StringBuilder()).append("Unauthorizaied Client.  The authenticated client is not authorized to use this authorization grant type. ").append(jsonobject).toString(), com.amazon.identity.auth.device.AuthError.b.e);
        s = s1;
        gz.a(c, "Server error doing authorization exchange. ", (new StringBuilder("info=")).append(jsonobject).toString());
        s = s1;
        throw new AuthError((new StringBuilder()).append("Server error doing authorization exchange. ").append(jsonobject).toString(), com.amazon.identity.auth.device.AuthError.b.n);
_L2:
        return;
_L4:
        flag = true;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public gx f(JSONObject jsonobject)
    {
        gz.c(c, "Extracting RefreshToken");
        try
        {
            if (jsonobject.has("refresh_token"))
            {
                jsonobject = jsonobject.getString("refresh_token");
                return new gx(d, jsonobject);
            }
            gz.b(c, "Unable to find RefreshAtzToken in JSON response");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            gz.b(c, "Error reading JSON response, throwing AuthError");
            throw new AuthError("Error reading JSON response", com.amazon.identity.auth.device.AuthError.b.l);
        }
        return null;
    }

}
