// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestCollectionUpdate, BoxRequestsBookmark

public static class setCollectionId extends BoxRequestCollectionUpdate
{

    private static final long serialVersionUID = 0x70be1f2741234cd5L;

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
        setCollectionId(null);
    }
}
