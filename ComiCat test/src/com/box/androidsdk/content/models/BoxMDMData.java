// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxMDMData extends BoxJsonObject
{

    public static final String BILLING_ID = "billing_id";
    public static final String BOX_MDM_DATA = "box_mdm_data";
    public static final String BUNDLE_ID = "bundle_id";
    public static final String EMAIL_ID = "email_id";
    public static final String MANAGEMENT_ID = "management_id";
    public static final String PUBLIC_ID = "public_id";

    public BoxMDMData()
    {
    }

    public BoxMDMData(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public String getBillingIdId()
    {
        return getPropertyAsString("billing_id");
    }

    public String getBundleId()
    {
        return getPropertyAsString("public_id");
    }

    public String getEmailId()
    {
        return getPropertyAsString("email_id");
    }

    public String getManagementId()
    {
        return getPropertyAsString("management_id");
    }

    public String getPublicId()
    {
        return getPropertyAsString("public_id");
    }

    public void setBillingId(String s)
    {
        setValue("billing_id", s);
    }

    public void setBundleId(String s)
    {
        setValue("bundle_id", s);
    }

    public void setEmailId(String s)
    {
        setValue("email_id", s);
    }

    public void setManagementId(String s)
    {
        setValue("management_id", s);
    }

    public void setPublicId(String s)
    {
        setValue("public_id", s);
    }

    public void setValue(String s, String s1)
    {
        set(s, s1);
    }
}
