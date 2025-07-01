// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItemUpdate, BoxRequestsBookmark, BoxRequestUpdateSharedItem

public static class kmark extends BoxRequestItemUpdate
{

    private static final long serialVersionUID = 0x70be1f2741234cc3L;

    public String getUrl()
    {
        return (String)mBodyMap.get("url");
    }

    public mBodyMap setUrl(String s)
    {
        mBodyMap.put("url", s);
        return this;
    }

    public volatile BoxRequestUpdateSharedItem updateSharedLink()
    {
        return updateSharedLink();
    }

    public kmark updateSharedLink()
    {
        return new kmark(this);
    }

    public kmark(String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
    }
}
