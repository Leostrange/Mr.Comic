// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFileVersion;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequestsFile, BoxResponse

public static class setVersionId extends BoxRequestItem
{

    private static final long serialVersionUID = 0x70be1f2741234cc7L;

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public setVersionId setVersionId(String s)
    {
        mBodyMap.put("type", "file_version");
        mBodyMap.put("id", s);
        return this;
    }

    public (String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFileVersion, s, s2, boxsession);
        mRequestMethod = mRequestMethod;
        setVersionId(s1);
    }
}
