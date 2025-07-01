// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsUser

public static class mId extends BoxRequest
{

    protected static final String QUERY_FORCE = "force";
    protected static final String QUERY_NOTIFY = "notify";
    private static final long serialVersionUID = 0x70be1f2741234cafL;
    protected String mId;

    public String getId()
    {
        return mId;
    }

    public Boolean getShouldForce()
    {
        return Boolean.valueOf((String)mQueryMap.get("force"));
    }

    public Boolean getShouldNotify()
    {
        return Boolean.valueOf((String)mQueryMap.get("notify"));
    }

    public mQueryMap setShouldForce(Boolean boolean1)
    {
        mQueryMap.put("force", Boolean.toString(boolean1.booleanValue()));
        return this;
    }

    public mQueryMap setShouldNotify(Boolean boolean1)
    {
        mQueryMap.put("notify", Boolean.toString(boolean1.booleanValue()));
        return this;
    }

    public (String s, BoxSession boxsession, String s1)
    {
        super(com/box/androidsdk/content/models/BoxVoid, s, boxsession);
        mRequestMethod = mRequestMethod;
        mId = s1;
    }
}
