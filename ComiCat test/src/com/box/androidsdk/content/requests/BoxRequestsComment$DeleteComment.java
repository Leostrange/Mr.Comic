// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsComment, BoxResponse

public static class mId extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234d04L;
    private final String mId;

    public String getId()
    {
        return mId;
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
        mRequestMethod = mRequestMethod;
        mId = s;
    }
}
