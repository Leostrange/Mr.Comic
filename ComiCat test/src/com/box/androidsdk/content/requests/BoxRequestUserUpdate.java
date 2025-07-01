// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequest

abstract class BoxRequestUserUpdate extends BoxRequestItem
{

    public BoxRequestUserUpdate(Class class1, String s, String s1, BoxSession boxsession)
    {
        super(class1, s, s1, boxsession);
    }

    public String getAddress()
    {
        return (String)mBodyMap.get("address");
    }

    public boolean getCanSeeManagedUsers()
    {
        return ((Boolean)mBodyMap.get("can_see_managed_users")).booleanValue();
    }

    public boolean getIsExemptFromDeviceLimits()
    {
        return ((Boolean)mBodyMap.get("is_exempt_from_device_limits")).booleanValue();
    }

    public boolean getIsExemptFromLoginVerification()
    {
        return ((Boolean)mBodyMap.get("is_exempt_from_login_verification")).booleanValue();
    }

    public boolean getIsSyncEnabled()
    {
        return ((Boolean)mBodyMap.get("is_sync_enabled")).booleanValue();
    }

    public String getJobTitle()
    {
        return (String)mBodyMap.get("job_title");
    }

    public String getName()
    {
        return (String)mBodyMap.get("name");
    }

    public String getPhone()
    {
        return (String)mBodyMap.get("phone");
    }

    public com.box.androidsdk.content.models.BoxUser.Role getRole()
    {
        return (com.box.androidsdk.content.models.BoxUser.Role)mBodyMap.get("role");
    }

    public double getSpaceAmount()
    {
        return ((Double)mBodyMap.get("space_amount")).doubleValue();
    }

    public com.box.androidsdk.content.models.BoxUser.Status getStatus()
    {
        return (com.box.androidsdk.content.models.BoxUser.Status)mBodyMap.get("status");
    }

    public String getTimezone()
    {
        return (String)mBodyMap.get("timezone");
    }

    public BoxRequest setAddress(String s)
    {
        mBodyMap.put("address", s);
        return this;
    }

    public BoxRequest setCanSeeManagedUsers(boolean flag)
    {
        mBodyMap.put("can_see_managed_users", Boolean.valueOf(flag));
        return this;
    }

    public BoxRequest setIsExemptFromDeviceLimits(boolean flag)
    {
        mBodyMap.put("is_exempt_from_device_limits", Boolean.valueOf(flag));
        return this;
    }

    public BoxRequest setIsExemptFromLoginVerification(boolean flag)
    {
        mBodyMap.put("is_exempt_from_login_verification", Boolean.valueOf(flag));
        return this;
    }

    public BoxRequest setIsSyncEnabled(boolean flag)
    {
        mBodyMap.put("is_sync_enabled", Boolean.valueOf(flag));
        return this;
    }

    public BoxRequest setJobTitle(String s)
    {
        mBodyMap.put("job_title", s);
        return this;
    }

    public BoxRequest setName(String s)
    {
        mBodyMap.put("name", s);
        return this;
    }

    public BoxRequest setPhone(String s)
    {
        mBodyMap.put("phone", s);
        return this;
    }

    public BoxRequest setRole(com.box.androidsdk.content.models.BoxUser.Role role)
    {
        mBodyMap.put("role", role);
        return this;
    }

    public BoxRequest setSpaceAmount(double d)
    {
        mBodyMap.put("space_amount", Double.valueOf(d));
        return this;
    }

    public BoxRequest setStatus(com.box.androidsdk.content.models.BoxUser.Status status)
    {
        mBodyMap.put("status", status);
        return this;
    }

    public BoxRequest setTimezone(String s)
    {
        mBodyMap.put("timezone", s);
        return this;
    }
}
