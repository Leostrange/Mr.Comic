// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.StatusLine;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpDateGenerator, HttpContext

public class ResponseDate
    implements HttpResponseInterceptor
{

    private static final HttpDateGenerator DATE_GENERATOR = new HttpDateGenerator();

    public ResponseDate()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        Args.notNull(httpresponse, "HTTP response");
        if (httpresponse.getStatusLine().getStatusCode() >= 200 && !httpresponse.containsHeader("Date"))
        {
            httpresponse.setHeader("Date", DATE_GENERATOR.getCurrentDate());
        }
    }

}
