package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxMDMData extends BoxJsonObject {
    public static final String BILLING_ID = "billing_id";
    public static final String BOX_MDM_DATA = "box_mdm_data";
    public static final String BUNDLE_ID = "bundle_id";
    public static final String EMAIL_ID = "email_id";
    public static final String MANAGEMENT_ID = "management_id";
    public static final String PUBLIC_ID = "public_id";

    public BoxMDMData() {
    }

    public BoxMDMData(JsonObject jsonObject) {
        super(jsonObject);
    }

    public String getBillingIdId() {
        return getPropertyAsString(BILLING_ID);
    }

    public String getBundleId() {
        return getPropertyAsString(PUBLIC_ID);
    }

    public String getEmailId() {
        return getPropertyAsString(EMAIL_ID);
    }

    public String getManagementId() {
        return getPropertyAsString(MANAGEMENT_ID);
    }

    public String getPublicId() {
        return getPropertyAsString(PUBLIC_ID);
    }

    public void setBillingId(String str) {
        setValue(BILLING_ID, str);
    }

    public void setBundleId(String str) {
        setValue(BUNDLE_ID, str);
    }

    public void setEmailId(String str) {
        setValue(EMAIL_ID, str);
    }

    public void setManagementId(String str) {
        setValue(MANAGEMENT_ID, str);
    }

    public void setPublicId(String str) {
        setValue(PUBLIC_ID, str);
    }

    public void setValue(String str, String str2) {
        set(str, str2);
    }
}
