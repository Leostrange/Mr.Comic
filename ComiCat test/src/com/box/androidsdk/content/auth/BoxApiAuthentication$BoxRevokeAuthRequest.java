// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxApiAuthentication

static class mBodyMap extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cdcL;

    public (BoxSession boxsession, String s, String s1, String s2, String s3)
    {
        super(com/box/androidsdk/content/auth/BoxAuthentication$BoxAuthenticationInfo, s, boxsession);
        mRequestMethod = com.box.androidsdk.content.requests.uestMethod;
        setContentType(com.box.androidsdk.content.requests.ontentType);
        mBodyMap.put("client_id", s2);
        mBodyMap.put("client_secret", s3);
        mBodyMap.put("token", s1);
    }
}
