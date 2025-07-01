// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequest

public abstract class BoxRequestList extends BoxRequestItem
{

    private static final String DEFAULT_LIMIT = "1000";
    private static final String DEFAULT_OFFSET = "0";
    private static final String LIMIT = "limit";
    private static final String OFFSET = "offset";

    public BoxRequestList(Class class1, String s, String s1, BoxSession boxsession)
    {
        super(class1, s, s1, boxsession);
        mRequestMethod = BoxRequest.Methods.GET;
        mQueryMap.put("limit", "1000");
        mQueryMap.put("offset", "0");
    }

    public BoxRequest setLimit(int i)
    {
        mQueryMap.put("limit", String.valueOf(i));
        return this;
    }

    public BoxRequest setOffset(int i)
    {
        mQueryMap.put("offset", String.valueOf(i));
        return this;
    }
}
