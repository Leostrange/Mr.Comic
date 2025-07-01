// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxCollaboration;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsShare, BoxResponse

public static class mRequestMethod extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234d0dL;
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

    public mId setNewRole(com.box.androidsdk.content.models.n n)
    {
        mBodyMap.put("role", n.mBodyMap());
        return this;
    }

    public mBodyMap setNewStatus(String s)
    {
        mBodyMap.put("status", s);
        return this;
    }

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxCollaboration, s1, boxsession);
        mId = s;
        mRequestMethod = mRequestMethod;
    }
}
