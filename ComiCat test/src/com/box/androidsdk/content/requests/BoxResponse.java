// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxObject;
import java.io.Serializable;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest

public class BoxResponse
    implements Serializable
{

    protected final Exception mException;
    protected final BoxRequest mRequest;
    protected final BoxObject mResult;

    public BoxResponse(BoxObject boxobject, Exception exception, BoxRequest boxrequest)
    {
        mResult = boxobject;
        mException = exception;
        mRequest = boxrequest;
    }

    public Exception getException()
    {
        return mException;
    }

    public BoxRequest getRequest()
    {
        return mRequest;
    }

    public BoxObject getResult()
    {
        return mResult;
    }

    public boolean isSuccess()
    {
        return mException == null;
    }
}
