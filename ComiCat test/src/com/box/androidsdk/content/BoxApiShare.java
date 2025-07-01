// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLinkSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiShare extends BoxApi
{

    public BoxApiShare(BoxSession boxsession)
    {
        super(boxsession);
    }

    protected String getSharedItemsUrl()
    {
        return String.format("%s/shared_items", new Object[] {
            getBaseUri()
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.GetSharedLink getSharedLinkRequest(String s)
    {
        return getSharedLinkRequest(s, null);
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.GetSharedLink getSharedLinkRequest(String s, String s1)
    {
        BoxSharedLinkSession boxsharedlinksession;
        if (mSession instanceof BoxSharedLinkSession)
        {
            boxsharedlinksession = (BoxSharedLinkSession)mSession;
        } else
        {
            boxsharedlinksession = new BoxSharedLinkSession(mSession);
        }
        boxsharedlinksession.setSharedLink(s);
        boxsharedlinksession.setPassword(s1);
        return new com.box.androidsdk.content.requests.BoxRequestsShare.GetSharedLink(getSharedItemsUrl(), boxsharedlinksession);
    }
}
