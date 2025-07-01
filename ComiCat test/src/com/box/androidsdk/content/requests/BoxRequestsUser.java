// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorUsers;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.models.BoxVoid;
import com.eclipsesource.json.JsonObject;
import java.util.HashMap;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestUserUpdate, BoxRequest, BoxRequestItem, BoxCacheableRequest

public class BoxRequestsUser
{
    public static class CreateEnterpriseUser extends BoxRequestUserUpdate
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

        public volatile com.box.androidsdk.content.models.BoxUser.Role getRole()
        {
            return super.getRole();
        }

        public volatile double getSpaceAmount()
        {
            return super.getSpaceAmount();
        }

        public volatile com.box.androidsdk.content.models.BoxUser.Status getStatus()
        {
            return super.getStatus();
        }

        public volatile String getTimezone()
        {
            return super.getTimezone();
        }

        public CreateEnterpriseUser setLogin(String s)
        {
            mBodyMap.put("login", s);
            return this;
        }

        public CreateEnterpriseUser(String s, BoxSession boxsession, String s1, String s2)
        {
            super(com/box/androidsdk/content/models/BoxUser, null, s, boxsession);
            mRequestMethod = BoxRequest.Methods.POST;
            setLogin(s1);
            setName(s2);
        }
    }

    public static class DeleteEnterpriseUser extends BoxRequest
    {

        protected static final String QUERY_FORCE = "force";
        protected static final String QUERY_NOTIFY = "notify";
        private static final long serialVersionUID = 0x70be1f2741234cafL;
        protected String mId;

        public String getId()
        {
            return mId;
        }

        public Boolean getShouldForce()
        {
            return Boolean.valueOf((String)mQueryMap.get("force"));
        }

        public Boolean getShouldNotify()
        {
            return Boolean.valueOf((String)mQueryMap.get("notify"));
        }

        public DeleteEnterpriseUser setShouldForce(Boolean boolean1)
        {
            mQueryMap.put("force", Boolean.toString(boolean1.booleanValue()));
            return this;
        }

        public DeleteEnterpriseUser setShouldNotify(Boolean boolean1)
        {
            mQueryMap.put("notify", Boolean.toString(boolean1.booleanValue()));
            return this;
        }

        public DeleteEnterpriseUser(String s, BoxSession boxsession, String s1)
        {
            super(com/box/androidsdk/content/models/BoxVoid, s, boxsession);
            mRequestMethod = BoxRequest.Methods.DELETE;
            mId = s1;
        }
    }

    public static class GetEnterpriseUsers extends BoxRequestItem
        implements BoxCacheableRequest
    {

        protected static final String QUERY_FILTER_TERM = "filter_term";
        protected static final String QUERY_LIMIT = "limit";
        protected static final String QUERY_OFFSET = "offset";
        private static final long serialVersionUID = 0x70be1f2741234cc8L;

        public String getFilterTerm()
        {
            return (String)mQueryMap.get("filter_term");
        }

        public long getLimit()
        {
            return Long.valueOf((String)mQueryMap.get("limit")).longValue();
        }

        public long getOffset()
        {
            return Long.valueOf((String)mQueryMap.get("offset")).longValue();
        }

        public BoxIteratorUsers sendForCachedResult()
        {
            return (BoxIteratorUsers)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public GetEnterpriseUsers setFilterTerm(String s)
        {
            mQueryMap.put("filter_term", s);
            return this;
        }

        public GetEnterpriseUsers setLimit(long l)
        {
            mQueryMap.put("limit", Long.toString(l));
            return this;
        }

        public GetEnterpriseUsers setOffset(long l)
        {
            mQueryMap.put("offset", Long.toString(l));
            return this;
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetEnterpriseUsers(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorUsers, null, s, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetUserInfo extends BoxRequestItem
        implements BoxCacheableRequest
    {

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxUser sendForCachedResult()
        {
            return (BoxUser)super.handleSendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetUserInfo(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxUser, null, s, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class UpdateUserInformation extends BoxRequestUserUpdate
    {

        protected static final String FIELD_IS_PASSWORD_RESET_REQUIRED = "is_password_reset_required";
        private static final long serialVersionUID = 0x70be1f2741234cb6L;

        public volatile String getAddress()
        {
            return super.getAddress();
        }

        public volatile boolean getCanSeeManagedUsers()
        {
            return super.getCanSeeManagedUsers();
        }

        public String getEnterprise()
        {
            return (String)mBodyMap.get("enterprise");
        }

        public volatile boolean getIsExemptFromDeviceLimits()
        {
            return super.getIsExemptFromDeviceLimits();
        }

        public volatile boolean getIsExemptFromLoginVerification()
        {
            return super.getIsExemptFromLoginVerification();
        }

        public String getIsPasswordResetRequired()
        {
            return (String)mBodyMap.get("is_password_reset_required");
        }

        public volatile boolean getIsSyncEnabled()
        {
            return super.getIsSyncEnabled();
        }

        public volatile String getJobTitle()
        {
            return super.getJobTitle();
        }

        public volatile String getName()
        {
            return super.getName();
        }

        public volatile String getPhone()
        {
            return super.getPhone();
        }

        public volatile com.box.androidsdk.content.models.BoxUser.Role getRole()
        {
            return super.getRole();
        }

        public volatile double getSpaceAmount()
        {
            return super.getSpaceAmount();
        }

        public volatile com.box.androidsdk.content.models.BoxUser.Status getStatus()
        {
            return super.getStatus();
        }

        public volatile String getTimezone()
        {
            return super.getTimezone();
        }

        protected void parseHashMapEntry(JsonObject jsonobject, java.util.Map.Entry entry)
        {
            if (((String)entry.getKey()).equals("enterprise"))
            {
                String s = (String)entry.getKey();
                if (entry.getValue() == null)
                {
                    entry = null;
                } else
                {
                    entry = (String)entry.getValue();
                }
                jsonobject.add(s, entry);
                return;
            } else
            {
                super.parseHashMapEntry(jsonobject, entry);
                return;
            }
        }

        public UpdateUserInformation setEnterprise(String s)
        {
            mBodyMap.put("enterprise", s);
            return this;
        }

        public UpdateUserInformation setIsPasswordResetRequired(boolean flag)
        {
            mBodyMap.put("is_password_reset_required", Boolean.valueOf(flag));
            return this;
        }

        public UpdateUserInformation(String s, BoxSession boxsession, String s1, String s2)
        {
            super(com/box/androidsdk/content/models/BoxUser, null, s, boxsession);
            mRequestMethod = BoxRequest.Methods.PUT;
        }
    }


    public BoxRequestsUser()
    {
    }
}
