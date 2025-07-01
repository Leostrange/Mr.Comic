// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiRecentItems extends BoxApi
{

    private static final String ENDPOINT_NAME = "recent_items";

    public BoxApiRecentItems(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestRecentItems.GetRecentItems getRecentItemsRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestRecentItems.GetRecentItems(getRecentItemsUrl(), mSession);
    }

    protected String getRecentItemsUrl()
    {
        return String.format("%s/recent_items", new Object[] {
            getBaseUri()
        });
    }
}
