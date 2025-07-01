// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItemUpdate, BoxRequestsFile, BoxRequestUpdateSharedItem

public static class  extends BoxRequestItemUpdate
{

    private static final long serialVersionUID = 0x70be1f2741234cc1L;

    public volatile BoxRequestUpdateSharedItem updateSharedLink()
    {
        return updateSharedLink();
    }

    public edFile updateSharedLink()
    {
        return new edFile(this);
    }

    public edFile(String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
    }
}
