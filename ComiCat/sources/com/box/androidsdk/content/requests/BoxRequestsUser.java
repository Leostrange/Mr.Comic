package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorUsers;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.models.BoxVoid;
import com.box.androidsdk.content.requests.BoxRequest;
import com.eclipsesource.json.JsonObject;
import java.util.Map;

public class BoxRequestsUser {

    public static class CreateEnterpriseUser extends BoxRequestUserUpdate<BoxUser, CreateEnterpriseUser> {
        private static final long serialVersionUID = 8123965031279971511L;

        public CreateEnterpriseUser(String str, BoxSession boxSession, String str2, String str3) {
            super(BoxUser.class, (String) null, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            setLogin(str2);
            setName(str3);
        }

        public /* bridge */ /* synthetic */ String getAddress() {
            return super.getAddress();
        }

        public /* bridge */ /* synthetic */ boolean getCanSeeManagedUsers() {
            return super.getCanSeeManagedUsers();
        }

        public /* bridge */ /* synthetic */ boolean getIsExemptFromDeviceLimits() {
            return super.getIsExemptFromDeviceLimits();
        }

        public /* bridge */ /* synthetic */ boolean getIsExemptFromLoginVerification() {
            return super.getIsExemptFromLoginVerification();
        }

        public /* bridge */ /* synthetic */ boolean getIsSyncEnabled() {
            return super.getIsSyncEnabled();
        }

        public /* bridge */ /* synthetic */ String getJobTitle() {
            return super.getJobTitle();
        }

        public String getLogin() {
            return (String) this.mBodyMap.get(BoxUser.FIELD_LOGIN);
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getPhone() {
            return super.getPhone();
        }

        public /* bridge */ /* synthetic */ BoxUser.Role getRole() {
            return super.getRole();
        }

        public /* bridge */ /* synthetic */ double getSpaceAmount() {
            return super.getSpaceAmount();
        }

        public /* bridge */ /* synthetic */ BoxUser.Status getStatus() {
            return super.getStatus();
        }

        public /* bridge */ /* synthetic */ String getTimezone() {
            return super.getTimezone();
        }

        public CreateEnterpriseUser setLogin(String str) {
            this.mBodyMap.put(BoxUser.FIELD_LOGIN, str);
            return this;
        }
    }

    public static class DeleteEnterpriseUser extends BoxRequest<BoxVoid, DeleteEnterpriseUser> {
        protected static final String QUERY_FORCE = "force";
        protected static final String QUERY_NOTIFY = "notify";
        private static final long serialVersionUID = 8123965031279971503L;
        protected String mId;

        public DeleteEnterpriseUser(String str, BoxSession boxSession, String str2) {
            super(BoxVoid.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.DELETE;
            this.mId = str2;
        }

        public String getId() {
            return this.mId;
        }

        public Boolean getShouldForce() {
            return Boolean.valueOf((String) this.mQueryMap.get(QUERY_FORCE));
        }

        public Boolean getShouldNotify() {
            return Boolean.valueOf((String) this.mQueryMap.get(QUERY_NOTIFY));
        }

        public DeleteEnterpriseUser setShouldForce(Boolean bool) {
            this.mQueryMap.put(QUERY_FORCE, Boolean.toString(bool.booleanValue()));
            return this;
        }

        public DeleteEnterpriseUser setShouldNotify(Boolean bool) {
            this.mQueryMap.put(QUERY_NOTIFY, Boolean.toString(bool.booleanValue()));
            return this;
        }
    }

    public static class GetEnterpriseUsers extends BoxRequestItem<BoxIteratorUsers, GetEnterpriseUsers> implements BoxCacheableRequest<BoxIteratorUsers> {
        protected static final String QUERY_FILTER_TERM = "filter_term";
        protected static final String QUERY_LIMIT = "limit";
        protected static final String QUERY_OFFSET = "offset";
        private static final long serialVersionUID = 8123965031279971528L;

        public GetEnterpriseUsers(String str, BoxSession boxSession) {
            super(BoxIteratorUsers.class, (String) null, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public String getFilterTerm() {
            return (String) this.mQueryMap.get(QUERY_FILTER_TERM);
        }

        public long getLimit() {
            return Long.valueOf((String) this.mQueryMap.get("limit")).longValue();
        }

        public long getOffset() {
            return Long.valueOf((String) this.mQueryMap.get("offset")).longValue();
        }

        public BoxIteratorUsers sendForCachedResult() {
            return (BoxIteratorUsers) super.handleSendForCachedResult();
        }

        public GetEnterpriseUsers setFilterTerm(String str) {
            this.mQueryMap.put(QUERY_FILTER_TERM, str);
            return this;
        }

        public GetEnterpriseUsers setLimit(long j) {
            this.mQueryMap.put("limit", Long.toString(j));
            return this;
        }

        public GetEnterpriseUsers setOffset(long j) {
            this.mQueryMap.put("offset", Long.toString(j));
            return this;
        }

        public BoxFutureTask<BoxIteratorUsers> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetUserInfo extends BoxRequestItem<BoxUser, GetUserInfo> implements BoxCacheableRequest<BoxUser> {
        public GetUserInfo(String str, BoxSession boxSession) {
            super(BoxUser.class, (String) null, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxUser sendForCachedResult() {
            return (BoxUser) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxUser> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class UpdateUserInformation extends BoxRequestUserUpdate<BoxUser, UpdateUserInformation> {
        protected static final String FIELD_IS_PASSWORD_RESET_REQUIRED = "is_password_reset_required";
        private static final long serialVersionUID = 8123965031279971510L;

        public UpdateUserInformation(String str, BoxSession boxSession, String str2, String str3) {
            super(BoxUser.class, (String) null, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.PUT;
        }

        public /* bridge */ /* synthetic */ String getAddress() {
            return super.getAddress();
        }

        public /* bridge */ /* synthetic */ boolean getCanSeeManagedUsers() {
            return super.getCanSeeManagedUsers();
        }

        public String getEnterprise() {
            return (String) this.mBodyMap.get("enterprise");
        }

        public /* bridge */ /* synthetic */ boolean getIsExemptFromDeviceLimits() {
            return super.getIsExemptFromDeviceLimits();
        }

        public /* bridge */ /* synthetic */ boolean getIsExemptFromLoginVerification() {
            return super.getIsExemptFromLoginVerification();
        }

        public String getIsPasswordResetRequired() {
            return (String) this.mBodyMap.get(FIELD_IS_PASSWORD_RESET_REQUIRED);
        }

        public /* bridge */ /* synthetic */ boolean getIsSyncEnabled() {
            return super.getIsSyncEnabled();
        }

        public /* bridge */ /* synthetic */ String getJobTitle() {
            return super.getJobTitle();
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getPhone() {
            return super.getPhone();
        }

        public /* bridge */ /* synthetic */ BoxUser.Role getRole() {
            return super.getRole();
        }

        public /* bridge */ /* synthetic */ double getSpaceAmount() {
            return super.getSpaceAmount();
        }

        public /* bridge */ /* synthetic */ BoxUser.Status getStatus() {
            return super.getStatus();
        }

        public /* bridge */ /* synthetic */ String getTimezone() {
            return super.getTimezone();
        }

        /* access modifiers changed from: protected */
        public void parseHashMapEntry(JsonObject jsonObject, Map.Entry<String, Object> entry) {
            if (entry.getKey().equals("enterprise")) {
                jsonObject.add(entry.getKey(), entry.getValue() == null ? null : (String) entry.getValue());
            } else {
                super.parseHashMapEntry(jsonObject, entry);
            }
        }

        public UpdateUserInformation setEnterprise(String str) {
            this.mBodyMap.put("enterprise", str);
            return this;
        }

        public UpdateUserInformation setIsPasswordResetRequired(boolean z) {
            this.mBodyMap.put(FIELD_IS_PASSWORD_RESET_REQUIRED, Boolean.valueOf(z));
            return this;
        }
    }
}
