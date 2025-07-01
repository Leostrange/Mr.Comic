// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiCollection extends BoxApi
{

    public BoxApiCollection(BoxSession boxsession)
    {
        super(boxsession);
    }

    protected String getCollectionItemsUrl(String s)
    {
        return String.format("%s/%s/items", new Object[] {
            getCollectionsUrl(), s
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsCollections.GetCollections getCollectionsRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsCollections.GetCollections(getCollectionsUrl(), mSession);
    }

    protected String getCollectionsUrl()
    {
        return String.format("%s/collections", new Object[] {
            getBaseUri()
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsCollections.GetCollectionItems getItemsRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsCollections.GetCollectionItems(s, getCollectionItemsUrl(s), mSession);
    }
}
