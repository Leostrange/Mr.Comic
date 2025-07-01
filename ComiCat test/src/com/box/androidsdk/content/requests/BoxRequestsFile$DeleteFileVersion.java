// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsFile, BoxResponse

public static class mVersionId extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cf7L;
    private final String mVersionId;

    public String getVersionId()
    {
        return mVersionId;
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
        mVersionId = s;
    }
}
