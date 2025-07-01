// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxObject;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestsShare, BoxHttpResponse

static final class t> extends t>
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
            BoxEntity boxentity = new BoxEntity();
            class1 = boxentity;
            if (s.contains(retryRateLimited.retryRateLimited()))
            {
                boxhttpresponse = boxhttpresponse.getStringBody();
                boxentity.createFromJson(boxhttpresponse);
                if (boxentity.getType().equals("folder"))
                {
                    class1 = new BoxFolder();
                    class1.createFromJson(boxhttpresponse);
                    return class1;
                }
                if (boxentity.getType().equals("file"))
                {
                    class1 = new BoxFile();
                    class1.createFromJson(boxhttpresponse);
                    return class1;
                }
                class1 = boxentity;
                if (boxentity.getType().equals("web_link"))
                {
                    class1 = new BoxBookmark();
                    class1.createFromJson(boxhttpresponse);
                    return class1;
                }
            }
        }
        return class1;
    }

    ( )
    {
        super();
    }
}
