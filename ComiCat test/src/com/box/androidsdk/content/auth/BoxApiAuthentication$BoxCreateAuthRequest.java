// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.models.BoxMDMData;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.SdkUtils;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxApiAuthentication

static class setRefreshExpiresAt extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cfcL;

    public setRefreshExpiresAt setDevice(String s, String s1)
    {
        if (!SdkUtils.isEmptyString(s))
        {
            mBodyMap.put("device_id", s);
        }
        if (!SdkUtils.isEmptyString(s1))
        {
            mBodyMap.put("device_name", s1);
        }
        return this;
    }

    public mBodyMap setMdmData(BoxMDMData boxmdmdata)
    {
        if (boxmdmdata != null)
        {
            mBodyMap.put("box_mdm_data", boxmdmdata.toJson());
        }
        return this;
    }

    public mBodyMap setRefreshExpiresAt(long l)
    {
        mBodyMap.put("box_refresh_token_expires_at", Long.toString(l));
        return this;
    }

    public (BoxSession boxsession, String s, String s1, String s2, String s3)
    {
        super(com/box/androidsdk/content/auth/BoxAuthentication$BoxAuthenticationInfo, s, boxsession);
        mRequestMethod = com.box.androidsdk.content.requests.uestMethod;
        setContentType(com.box.androidsdk.content.requests.ontentType);
        mBodyMap.put("grant_type", "authorization_code");
        mBodyMap.put("code", s1);
        mBodyMap.put("client_id", s2);
        mBodyMap.put("client_secret", s3);
        if (boxsession.getDeviceId() != null)
        {
            setDevice(boxsession.getDeviceId(), boxsession.getDeviceName());
        }
        if (boxsession.getManagementData() != null)
        {
            setMdmData(boxsession.getManagementData());
        }
        if (boxsession.getRefreshTokenExpiresAt() != null)
        {
            setRefreshExpiresAt(boxsession.getRefreshTokenExpiresAt().longValue());
        }
    }
}
