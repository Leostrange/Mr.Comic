// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class gi
    implements gp
{

    private static final String b = gi.getName();
    final HttpResponse a;
    private String c;

    public gi(HttpResponse httpresponse)
    {
        a = httpresponse;
    }

    private void a(String s)
    {
        s = String.format("Error code: %s Server response: %s", new Object[] {
            s, c
        });
        throw new AuthError((new StringBuilder("Server Error : ")).append(s).toString(), com.amazon.identity.auth.device.AuthError.b.n);
    }

    private static boolean a(HttpResponse httpresponse)
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        return i >= 500 && i <= 599;
    }

    private int c()
    {
        int i;
        try
        {
            i = a.getStatusLine().getStatusCode();
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new AuthError("StatusLine is null", nullpointerexception, com.amazon.identity.auth.device.AuthError.b.h);
        }
        return i;
    }

    protected static long e(JSONObject jsonobject)
    {
        try
        {
            if (jsonobject.has("token_expires_in"))
            {
                return jsonobject.getLong("token_expires_in");
            }
            if (jsonobject.has("expires_in"))
            {
                return jsonobject.getLong("expires_in");
            }
            gz.d(b, "Unable to find expiration time in JSON response, AccessToken will not expire locally");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            gz.b(b, "Unable to parse expiration time in JSON response, AccessToken will not expire locally");
            return 0L;
        }
        return 0L;
    }

    public String a()
    {
        return "3.3.1";
    }

    protected JSONObject a(JSONObject jsonobject)
    {
        return jsonobject.getJSONObject("response");
    }

    public final void b()
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        obj5 = null;
        obj6 = null;
        obj1 = "";
        obj = obj1;
        obj3 = obj1;
        obj4 = obj1;
        obj2 = obj1;
        if (!a(a))
        {
            break MISSING_BLOCK_LABEL_62;
        }
        obj3 = obj1;
        obj4 = obj1;
        obj2 = obj1;
        obj = (new StringBuilder("500 error (status=")).append(c()).append(")").toString();
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        c = EntityUtils.toString(a.getEntity()).trim();
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        gz.a(b, "Entity Extracted", (new StringBuilder("entity=")).append(c).toString());
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        obj1 = new JSONObject(c);
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        JSONObject jsonobject = a(((JSONObject) (obj1)));
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        b(((JSONObject) (obj1)));
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        d(jsonobject);
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        c(jsonobject);
        obj1 = obj6;
        obj2 = obj;
        obj3 = jsonobject.getString("force_update");
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_594;
        }
        obj1 = obj3;
        obj5 = obj3;
        obj2 = obj;
        if (!((String) (obj3)).equals("1"))
        {
            break MISSING_BLOCK_LABEL_594;
        }
        obj1 = obj3;
        obj5 = obj3;
        obj2 = obj;
        obj4 = a();
        obj1 = obj3;
        obj5 = obj3;
        obj2 = obj;
        gz.b(b, (new StringBuilder("Force update requested ver:")).append(((String) (obj4))).toString());
        obj1 = obj3;
        obj5 = obj3;
        obj2 = obj;
        throw new AuthError((new StringBuilder("Server denied request, requested Force Update ver:")).append(((String) (obj4))).toString(), null, com.amazon.identity.auth.device.AuthError.b.r);
        obj5;
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        if (TextUtils.isEmpty(((CharSequence) (obj1))))
        {
            break MISSING_BLOCK_LABEL_594;
        }
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        gz.b(b, (new StringBuilder("JSON exception parsing force update response:")).append(((JSONException) (obj5)).toString()).toString());
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        throw new AuthError(((JSONException) (obj5)).getMessage(), ((Throwable) (obj5)), com.amazon.identity.auth.device.AuthError.b.l);
        obj;
        if (c != null && c.contains("!DOCTYPE html"))
        {
            gz.b(b, "Server sending back default error page - BAD request");
            throw new AuthError("Server sending back default error page - BAD request", ((Throwable) (obj)), com.amazon.identity.auth.device.AuthError.b.l);
        }
        break MISSING_BLOCK_LABEL_668;
        obj;
        IOException ioexception;
        ParseException parseexception;
        try
        {
            a.getEntity().getContent().close();
        }
        catch (IllegalStateException illegalstateexception)
        {
            gz.c(b, (new StringBuilder("IllegalStateException closing response ")).append(illegalstateexception.toString()).toString());
        }
        catch (IOException ioexception1)
        {
            gz.b(b, (new StringBuilder("IOException closing response ")).append(ioexception1.toString()).toString());
        }
        throw obj;
        parseexception;
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        if (TextUtils.isEmpty(((CharSequence) (obj5))))
        {
            break MISSING_BLOCK_LABEL_594;
        }
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        gz.b(b, (new StringBuilder("JSON parsing exception force update parsing response:")).append(parseexception.toString()).toString());
        obj3 = obj;
        obj4 = obj;
        obj2 = obj;
        throw new AuthError(parseexception.getMessage(), parseexception, com.amazon.identity.auth.device.AuthError.b.m);
        obj;
        gz.b(b, (new StringBuilder("Exception parsing ")).append(((String) (obj4))).append(" response:").append(((ParseException) (obj)).toString()).toString());
        throw new AuthError(((ParseException) (obj)).getMessage(), ((Throwable) (obj)), com.amazon.identity.auth.device.AuthError.b.m);
        try
        {
            a.getEntity().getContent().close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            gz.c(b, (new StringBuilder("IllegalStateException closing response ")).append(((IllegalStateException) (obj)).toString()).toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            gz.b(b, (new StringBuilder("IOException closing response ")).append(((IOException) (obj)).toString()).toString());
        }
        return;
        gz.d(b, (new StringBuilder("JSON exception parsing ")).append(((String) (obj3))).append(" response:").append(((JSONException) (obj)).toString()).toString());
        gz.d(b, (new StringBuilder("JSON exception html = ")).append(c).toString());
        throw new AuthError(((JSONException) (obj)).getMessage(), ((Throwable) (obj)), com.amazon.identity.auth.device.AuthError.b.l);
        ioexception;
        gz.b(b, (new StringBuilder("Exception accessing ")).append(((String) (obj2))).append(" response:").append(ioexception.toString()).toString());
        throw new AuthError(ioexception.getMessage(), ioexception, com.amazon.identity.auth.device.AuthError.b.h);
    }

    protected void b(JSONObject jsonobject)
    {
        try
        {
            jsonobject = jsonobject.getString("request_id");
            gz.a(b, "ExchangeRepsonse", (new StringBuilder("requestId=")).append(jsonobject).toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            gz.b(b, "No RequestId in JSON response");
        }
    }

    protected abstract void c(JSONObject jsonobject);

    protected void d(JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        jsonobject2 = null;
        jsonobject1 = null;
        jsonobject = jsonobject.getJSONObject("error");
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        String s = jsonobject.getString("code");
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        if (!"ServerError".equalsIgnoreCase(s))
        {
            break MISSING_BLOCK_LABEL_106;
        }
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        if (jsonobject.getString("message").startsWith("INVALID_TOKEN"))
        {
            jsonobject1 = jsonobject;
            jsonobject2 = jsonobject;
            try
            {
                throw new InvalidTokenAuthError("Invalid Exchange parameter - SERVER_ERROR.");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                if (jsonobject1 != null)
                {
                    throw new AuthError("JSON exception parsing json error response:", jsonobject, com.amazon.identity.auth.device.AuthError.b.l);
                }
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                if (jsonobject2 != null)
                {
                    throw new AuthError("Exception parsing response", jsonobject, com.amazon.identity.auth.device.AuthError.b.m);
                }
            }
            break MISSING_BLOCK_LABEL_248;
        }
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        a(s);
        return;
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        if (!"InvalidSourceToken".equalsIgnoreCase(s))
        {
            break MISSING_BLOCK_LABEL_156;
        }
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        throw new InvalidTokenAuthError("Invalid Source Token in exchange parameter");
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        if (!"InvalidToken".equals(s))
        {
            break MISSING_BLOCK_LABEL_186;
        }
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        throw new InvalidTokenAuthError("Token used is invalid.");
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        if (!a(a))
        {
            break MISSING_BLOCK_LABEL_238;
        }
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        a((new StringBuilder("500 error (status=")).append(c()).append(")").append(s).toString());
        return;
        jsonobject1 = jsonobject;
        jsonobject2 = jsonobject;
        a(s);
    }

}
