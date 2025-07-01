// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsComment, BoxResponse

public static class setMessage extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cfbL;
    String mId;

    public String getId()
    {
        return mId;
    }

    public String getMessage()
    {
        return (String)mBodyMap.get("message");
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public mBodyMap setMessage(String s)
    {
        mBodyMap.put("message", s);
        return this;
    }

    public (String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxComment, s2, boxsession);
        mId = s;
        mRequestMethod = mRequestMethod;
        setMessage(s1);
    }
}
