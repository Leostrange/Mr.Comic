// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxMetadata;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;
import java.util.Map;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsMetadata

public static class setValues extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cfaL;

    protected setValues setValues(Map map)
    {
        mBodyMap.putAll(map);
        return this;
    }

    public (Map map, String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxMetadata, s, boxsession);
        mRequestMethod = mRequestMethod;
        setValues(map);
    }
}
