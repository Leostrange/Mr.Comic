// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;
import android.text.TextUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

abstract class tr
{

    static final boolean d;
    protected final HttpClient b;
    protected final String c;

    public tr(HttpClient httpclient, String s)
    {
        if (!d && httpclient == null)
        {
            throw new AssertionError();
        }
        if (!d && s == null)
        {
            throw new AssertionError();
        }
        if (!d && TextUtils.isEmpty(s))
        {
            throw new AssertionError();
        } else
        {
            b = httpclient;
            c = s;
            return;
        }
    }

    public final tm a()
    {
        Object obj = new HttpPost(sp.a.g.toString());
        Object obj1 = new ArrayList();
        ((List) (obj1)).add(new BasicNameValuePair("client_id", c));
        a(((List) (obj1)));
        try
        {
            obj1 = new UrlEncodedFormEntity(((List) (obj1)), "UTF-8");
            ((UrlEncodedFormEntity) (obj1)).setContentType("application/x-www-form-urlencoded;charset=UTF-8");
            ((HttpPost) (obj)).setEntity(((org.apache.http.HttpEntity) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new sx("An error occured on the client during the operation.", ((Throwable) (obj)));
        }
        try
        {
            obj = b.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", ((Throwable) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", ((Throwable) (obj)));
        }
        obj = ((HttpResponse) (obj)).getEntity();
        try
        {
            obj = EntityUtils.toString(((org.apache.http.HttpEntity) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", ((Throwable) (obj)));
        }
        try
        {
            obj = new JSONObject(((String) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", ((Throwable) (obj)));
        }
        if (tk.b(((JSONObject) (obj))))
        {
            return tk.a(((JSONObject) (obj)));
        }
        if (to.b(((JSONObject) (obj))))
        {
            return to.a(((JSONObject) (obj)));
        } else
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.");
        }
    }

    protected abstract void a(List list);

    static 
    {
        boolean flag;
        if (!tr.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
    }
}
