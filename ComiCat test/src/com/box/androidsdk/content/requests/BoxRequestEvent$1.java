// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxObject;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestEvent, BoxHttpResponse

static final class estHandler extends estHandler
{

    public final BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
    {
        if (Thread.currentThread().isInterrupted())
        {
            disconnectForInterrupt(boxhttpresponse);
            throw new BoxException("Request cancelled ", new InterruptedException());
        }
        if (boxhttpresponse.getResponseCode() == 429)
        {
            class1 = retryRateLimited(boxhttpresponse);
        } else
        {
            String s = boxhttpresponse.getContentType();
            BoxObject boxobject = (BoxObject)class1.newInstance();
            class1 = boxobject;
            if (boxobject instanceof BoxJsonObject)
            {
                class1 = boxobject;
                if (s.contains(Types.JSON.toString()))
                {
                    class1 = boxhttpresponse.getStringBody();
                    class1.charAt(class1.indexOf("event") - 1);
                    class1.charAt(class1.indexOf("user") - 1);
                    ((BoxJsonObject)boxobject).createFromJson(class1);
                    return boxobject;
                }
            }
        }
        return class1;
    }

    Types(BoxRequestEvent boxrequestevent)
    {
        super(boxrequestevent);
    }
}
