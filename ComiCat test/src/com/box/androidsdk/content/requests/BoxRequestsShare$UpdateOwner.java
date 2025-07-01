// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsShare, BoxResponse

public static class mBodyMap extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f273ebc5f2dL;
    private String mId;

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
        mId = s;
        mRequestMethod = mRequestMethod;
        mBodyMap.put("role", com.box.androidsdk.content.models.r.mBodyMap.g());
    }
}
