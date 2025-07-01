// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ResponseHandler;
import org.apache.http.util.EntityUtils;

final class su extends Enum
    implements ResponseHandler
{

    public static final su a;
    private static final su b[];

    private su(String s)
    {
        super(s, 0);
    }

    public static su valueOf(String s)
    {
        return (su)Enum.valueOf(su, s);
    }

    public static su[] values()
    {
        return (su[])b.clone();
    }

    public final Object handleResponse(HttpResponse httpresponse)
    {
        HttpEntity httpentity = httpresponse.getEntity();
        boolean flag;
        if (httpresponse.getStatusLine().getStatusCode() / 100 == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            throw new IOException(EntityUtils.toString(httpentity));
        } else
        {
            return httpentity.getContent();
        }
    }

    static 
    {
        a = new su("INSTANCE");
        b = (new su[] {
            a
        });
    }
}
