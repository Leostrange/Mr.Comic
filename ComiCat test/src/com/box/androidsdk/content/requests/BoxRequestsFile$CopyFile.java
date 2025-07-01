// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItemCopy, BoxRequestsFile

public static class  extends BoxRequestItemCopy
{

    private static final long serialVersionUID = 0x70be1f2741234ccdL;

    public volatile String getName()
    {
        return super.getName();
    }

    public volatile String getParentId()
    {
        return super.getParentId();
    }

    public (String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFile, s, s1, s2, boxsession);
    }
}
