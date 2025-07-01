// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiSearch extends BoxApi
{

    public BoxApiSearch(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsSearch.Search getSearchRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsSearch.Search(s, getSearchUrl(), mSession);
    }

    protected String getSearchUrl()
    {
        return String.format("%s/search", new Object[] {
            getBaseUri()
        });
    }
}
