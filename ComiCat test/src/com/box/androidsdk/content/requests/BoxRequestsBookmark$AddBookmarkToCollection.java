// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestCollectionUpdate, BoxRequestsBookmark, BoxRequest

public static class setCollectionId extends BoxRequestCollectionUpdate
{

    private static final long serialVersionUID = 0x70be1f2741234cd5L;

    public volatile BoxRequest setCollectionId(String s)
    {
        return setCollectionId(s);
    }

    public setCollectionId setCollectionId(String s)
    {
        return (setCollectionId)super.setCollectionId(s);
    }

    public (String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxBookmark, s, s2, boxsession);
        setCollectionId(s1);
    }
}
