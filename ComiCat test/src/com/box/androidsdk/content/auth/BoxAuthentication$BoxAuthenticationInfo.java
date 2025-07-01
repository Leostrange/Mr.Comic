// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxUser;
import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication

public static class  extends BoxJsonObject
{

    public static final String FIELD_ACCESS_TOKEN = "access_token";
    public static final String FIELD_BASE_DOMAIN = "base_domain";
    public static final String FIELD_CLIENT_ID = "client_id";
    public static final String FIELD_EXPIRES_IN = "expires_in";
    private static final String FIELD_REFRESH_TIME = "refresh_time";
    public static final String FIELD_REFRESH_TOKEN = "refresh_token";
    public static final String FIELD_USER = "user";
    private static final long serialVersionUID = 0x27f13f1099d1797fL;

    public static void cloneInfo( ,  1)
    {
        .createFromJson(1.toJsonObject());
    }

    public String accessToken()
    {
        return getPropertyAsString("access_token");
    }

    public getPropertyAsString clone()
    {
        getPropertyAsString getpropertyasstring = new <init>();
        cloneInfo(getpropertyasstring, this);
        return getpropertyasstring;
    }

    public volatile Object clone()
    {
        return clone();
    }

    public Long expiresIn()
    {
        return getPropertyAsLong("expires_in");
    }

    public String getBaseDomain()
    {
        return getPropertyAsString("base_domain");
    }

    public String getClientId()
    {
        return getPropertyAsString("client_id");
    }

    public Long getRefreshTime()
    {
        return getPropertyAsLong("refresh_time");
    }

    public BoxUser getUser()
    {
        return (BoxUser)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "user");
    }

    public String refreshToken()
    {
        return getPropertyAsString("refresh_token");
    }

    public void setAccessToken(String s)
    {
        set("access_token", s);
    }

    public void setBaseDomain(String s)
    {
        set("base_domain", s);
    }

    public void setClientId(String s)
    {
        set("client_id", s);
    }

    public void setExpiresIn(Long long1)
    {
        set("expires_in", long1);
    }

    public void setRefreshTime(Long long1)
    {
        set("refresh_time", long1);
    }

    public void setRefreshToken(String s)
    {
        set("refresh_token", s);
    }

    public void setUser(BoxUser boxuser)
    {
        set("user", boxuser);
    }

    public void wipeOutAuth()
    {
        remove("user");
        remove("client_id");
        remove("access_token");
        remove("refresh_token");
    }

    public ()
    {
    }

    public (JsonObject jsonobject)
    {
        super(jsonobject);
    }
}
