package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.requests.BoxRequest;

abstract class BoxRequestUserUpdate<E extends BoxUser, R extends BoxRequest<E, R>> extends BoxRequestItem<E, R> {
    public BoxRequestUserUpdate(Class<E> cls, String str, String str2, BoxSession boxSession) {
        super(cls, str, str2, boxSession);
    }

    public String getAddress() {
        return (String) this.mBodyMap.get(BoxUser.FIELD_ADDRESS);
    }

    public boolean getCanSeeManagedUsers() {
        return ((Boolean) this.mBodyMap.get(BoxUser.FIELD_CAN_SEE_MANAGED_USERS)).booleanValue();
    }

    public boolean getIsExemptFromDeviceLimits() {
        return ((Boolean) this.mBodyMap.get(BoxUser.FIELD_IS_EXEMPT_FROM_DEVICE_LIMITS)).booleanValue();
    }

    public boolean getIsExemptFromLoginVerification() {
        return ((Boolean) this.mBodyMap.get(BoxUser.FIELD_IS_EXEMPT_FROM_LOGIN_VERIFICATION)).booleanValue();
    }

    public boolean getIsSyncEnabled() {
        return ((Boolean) this.mBodyMap.get(BoxUser.FIELD_IS_SYNC_ENABLED)).booleanValue();
    }

    public String getJobTitle() {
        return (String) this.mBodyMap.get(BoxUser.FIELD_JOB_TITLE);
    }

    public String getName() {
        return (String) this.mBodyMap.get("name");
    }

    public String getPhone() {
        return (String) this.mBodyMap.get(BoxUser.FIELD_PHONE);
    }

    public BoxUser.Role getRole() {
        return (BoxUser.Role) this.mBodyMap.get("role");
    }

    public double getSpaceAmount() {
        return ((Double) this.mBodyMap.get(BoxUser.FIELD_SPACE_AMOUNT)).doubleValue();
    }

    public BoxUser.Status getStatus() {
        return (BoxUser.Status) this.mBodyMap.get("status");
    }

    public String getTimezone() {
        return (String) this.mBodyMap.get(BoxUser.FIELD_TIMEZONE);
    }

    public R setAddress(String str) {
        this.mBodyMap.put(BoxUser.FIELD_ADDRESS, str);
        return this;
    }

    public R setCanSeeManagedUsers(boolean z) {
        this.mBodyMap.put(BoxUser.FIELD_CAN_SEE_MANAGED_USERS, Boolean.valueOf(z));
        return this;
    }

    public R setIsExemptFromDeviceLimits(boolean z) {
        this.mBodyMap.put(BoxUser.FIELD_IS_EXEMPT_FROM_DEVICE_LIMITS, Boolean.valueOf(z));
        return this;
    }

    public R setIsExemptFromLoginVerification(boolean z) {
        this.mBodyMap.put(BoxUser.FIELD_IS_EXEMPT_FROM_LOGIN_VERIFICATION, Boolean.valueOf(z));
        return this;
    }

    public R setIsSyncEnabled(boolean z) {
        this.mBodyMap.put(BoxUser.FIELD_IS_SYNC_ENABLED, Boolean.valueOf(z));
        return this;
    }

    public R setJobTitle(String str) {
        this.mBodyMap.put(BoxUser.FIELD_JOB_TITLE, str);
        return this;
    }

    public R setName(String str) {
        this.mBodyMap.put("name", str);
        return this;
    }

    public R setPhone(String str) {
        this.mBodyMap.put(BoxUser.FIELD_PHONE, str);
        return this;
    }

    public R setRole(BoxUser.Role role) {
        this.mBodyMap.put("role", role);
        return this;
    }

    public R setSpaceAmount(double d) {
        this.mBodyMap.put(BoxUser.FIELD_SPACE_AMOUNT, Double.valueOf(d));
        return this;
    }

    public R setStatus(BoxUser.Status status) {
        this.mBodyMap.put("status", status);
        return this;
    }

    public R setTimezone(String str) {
        this.mBodyMap.put(BoxUser.FIELD_TIMEZONE, str);
        return this;
    }
}
