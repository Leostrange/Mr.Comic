// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestUserUpdate, BoxRequestsUser

public static class setName extends BoxRequestUserUpdate
{

    private static final long serialVersionUID = 0x70be1f2741234cb7L;

    public volatile String getAddress()
    {
        return super.getAddress();
    }

    public volatile boolean getCanSeeManagedUsers()
    {
        return super.getCanSeeManagedUsers();
    }

    public volatile boolean getIsExemptFromDeviceLimits()
    {
        return super.getIsExemptFromDeviceLimits();
    }

    public volatile boolean getIsExemptFromLoginVerification()
    {
        return super.getIsExemptFromLoginVerification();
    }

    public volatile boolean getIsSyncEnabled()
    {
        return super.getIsSyncEnabled();
    }

    public volatile String getJobTitle()
    {
        return super.getJobTitle();
    }

    public String getLogin()
    {
        return (String)mBodyMap.get("login");
    }

    public volatile String getName()
    {
        return super.getName();
    }

    public volatile String getPhone()
    {
        return super.getPhone();
    }

    public volatile com.box.androidsdk.content.models.r getRole()
    {
        return super.getRole();
    }

    public volatile double getSpaceAmount()
    {
        return super.getSpaceAmount();
    }

    public volatile com.box.androidsdk.content.models.r getStatus()
    {
        return super.getStatus();
    }

    public volatile String getTimezone()
    {
        return super.getTimezone();
    }

    public mBodyMap setLogin(String s)
    {
        mBodyMap.put("login", s);
        return this;
    }

    public (String s, BoxSession boxsession, String s1, String s2)
    {
        super(com/box/androidsdk/content/models/BoxUser, null, s, boxsession);
        mRequestMethod = mRequestMethod;
        setLogin(s1);
        setName(s2);
    }
}
