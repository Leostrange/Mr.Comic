// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import java.util.concurrent.Callable;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication, BoxApiAuthentication

class val.code
    implements Callable
{

    final BoxAuthentication this$0;
    final String val$code;
    final BoxSession val$session;

    public xAuthenticationInfo call()
    {
        Object obj = (new BoxApiAuthentication(val$session)).createOAuth(val$code, val$session.getClientId(), val$session.getClientSecret());
        xAuthenticationInfo xauthenticationinfo = new xAuthenticationInfo();
        xAuthenticationInfo.cloneInfo(xauthenticationinfo, val$session.getAuthInfo());
        obj = (xAuthenticationInfo)((.BoxCreateAuthRequest) (obj)).send();
        xauthenticationinfo.setAccessToken(((xAuthenticationInfo) (obj)).accessToken());
        xauthenticationinfo.setRefreshToken(((xAuthenticationInfo) (obj)).refreshToken());
        xauthenticationinfo.setExpiresIn(((xAuthenticationInfo) (obj)).expiresIn());
        xauthenticationinfo.setRefreshTime(Long.valueOf(System.currentTimeMillis()));
        xauthenticationinfo.setUser((BoxUser)(new BoxApiUser(new BoxSession(val$session.getApplicationContext(), xauthenticationinfo, null))).getCurrentUserInfoRequest().send());
        BoxAuthentication.getInstance().onAuthenticated(xauthenticationinfo, val$session.getApplicationContext());
        return xauthenticationinfo;
    }

    public volatile Object call()
    {
        return call();
    }

    xAuthenticationInfo()
    {
        this$0 = final_boxauthentication;
        val$session = boxsession;
        val$code = String.this;
        super();
    }
}
