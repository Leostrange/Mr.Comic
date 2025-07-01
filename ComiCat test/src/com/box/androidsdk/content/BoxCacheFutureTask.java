// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;
import java.util.concurrent.Callable;

// Referenced classes of package com.box.androidsdk.content:
//            BoxFutureTask, BoxCache

public class BoxCacheFutureTask extends BoxFutureTask
{

    public BoxCacheFutureTask(Class class1, final BoxRequest request, final BoxCache cache)
    {
        super(new Callable() {

            final BoxCache val$cache;
            final BoxRequest val$request;

            public BoxResponse call()
            {
                Exception exception = null;
                com.box.androidsdk.content.models.BoxObject boxobject;
                try
                {
                    boxobject = cache.get(request);
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception)
                {
                    boxobject = null;
                }
                return new BoxResponse(boxobject, exception, request);
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                cache = boxcache;
                request = boxrequest;
                super();
            }
        }, request);
    }
}
