// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest

public abstract class BoxRequestItemDelete extends BoxRequest
{

    protected String mId;

    public BoxRequestItemDelete(String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
        mId = s;
        mRequestMethod = BoxRequest.Methods.DELETE;
    }

    public String getId()
    {
        return mId;
    }

    public String getIfMatchEtag()
    {
        return super.getIfMatchEtag();
    }

    public BoxRequest setIfMatchEtag(String s)
    {
        return super.setIfMatchEtag(s);
    }
}
