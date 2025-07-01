// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

final class sv extends Enum
    implements ResponseHandler
{

    public static final sv a;
    private static final sv b[];

    private sv(String s)
    {
        super(s, 0);
    }

    private static JSONObject a(HttpResponse httpresponse)
    {
        httpresponse = httpresponse.getEntity();
        if (httpresponse != null)
        {
            httpresponse = EntityUtils.toString(httpresponse);
            if (TextUtils.isEmpty(httpresponse))
            {
                return new JSONObject();
            }
        } else
        {
            return null;
        }
        try
        {
            httpresponse = new JSONObject(httpresponse);
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            throw new IOException(httpresponse.getLocalizedMessage());
        }
        return httpresponse;
    }

    public static sv valueOf(String s)
    {
        return (sv)Enum.valueOf(sv, s);
    }

    public static sv[] values()
    {
        return (sv[])b.clone();
    }

    public final Object handleResponse(HttpResponse httpresponse)
    {
        return a(httpresponse);
    }

    static 
    {
        a = new sv("INSTANCE");
        b = (new sv[] {
            a
        });
    }
}
