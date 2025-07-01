// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.utils.SdkUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication, BoxApiAuthentication

class val.userUnknown
    implements Callable
{

    final BoxAuthentication this$0;
    final xAuthenticationInfo val$info;
    final BoxSession val$session;
    final String val$taskKey;
    final String val$userId;
    final boolean val$userUnknown;

    public xAuthenticationInfo call()
    {
        Object obj;
        Iterator iterator;
        if (val$session.getRefreshProvider() != null)
        {
            try
            {
                obj = val$session.getRefreshProvider().refreshAuthenticationInfo(val$info);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                BoxAuthentication.access$000(BoxAuthentication.this).remove(val$taskKey);
                throw BoxAuthentication.access$100(BoxAuthentication.this, val$session, ((BoxException) (obj)), val$info, val$userId);
            }
        } else
        if (BoxAuthentication.access$200(BoxAuthentication.this) != null)
        {
            try
            {
                obj = BoxAuthentication.access$200(BoxAuthentication.this).refreshAuthenticationInfo(val$info);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                BoxAuthentication.access$000(BoxAuthentication.this).remove(val$taskKey);
                throw BoxAuthentication.access$100(BoxAuthentication.this, val$session, ((BoxException) (obj)), val$info, val$userId);
            }
        } else
        {
            String s;
            String s1;
            if (val$info.refreshToken() != null)
            {
                obj = val$info.refreshToken();
            } else
            {
                obj = "";
            }
            if (val$session.getClientId() != null)
            {
                s = val$session.getClientId();
            } else
            {
                s = BoxConfig.CLIENT_ID;
            }
            if (val$session.getClientSecret() != null)
            {
                s1 = val$session.getClientSecret();
            } else
            {
                s1 = BoxConfig.CLIENT_SECRET;
            }
            if (SdkUtils.isBlank(s) || SdkUtils.isBlank(s1))
            {
                obj = new BoxException("client id or secret not specified", 400, "{\"error\": \"bad_request\",\n  \"error_description\": \"client id or secret not specified\"}", null);
                throw BoxAuthentication.access$100(BoxAuthentication.this, val$session, ((BoxException) (obj)), val$info, val$userId);
            }
            obj = (new BoxApiAuthentication(val$session)).refreshOAuth(((String) (obj)), s, s1);
            try
            {
                obj = (xAuthenticationInfo)((.BoxRefreshAuthRequest) (obj)).send();
            }
            catch (BoxException boxexception)
            {
                BoxAuthentication.access$000(BoxAuthentication.this).remove(val$taskKey);
                throw BoxAuthentication.access$100(BoxAuthentication.this, val$session, boxexception, val$info, val$userId);
            }
        }
        if (obj != null)
        {
            ((xAuthenticationInfo) (obj)).setRefreshTime(Long.valueOf(System.currentTimeMillis()));
        }
        xAuthenticationInfo.cloneInfo(val$session.getAuthInfo(), ((xAuthenticationInfo) (obj)));
        if (val$userUnknown || val$session.getRefreshProvider() != null || BoxAuthentication.access$200(BoxAuthentication.this) != null)
        {
            BoxApiUser boxapiuser = new BoxApiUser(val$session);
            val$info.setUser((BoxUser)boxapiuser.getCurrentUserInfoRequest().send());
        }
        BoxAuthentication.access$300(BoxAuthentication.this, val$session.getApplicationContext()).put(val$info.getUser().getId(), obj);
        getAuthStorage().storeAuthInfoMap(BoxAuthentication.access$400(BoxAuthentication.this), val$session.getApplicationContext());
        iterator = BoxAuthentication.access$500(BoxAuthentication.this).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            thListener thlistener = (thListener)((WeakReference)iterator.next()).get();
            if (thlistener != null)
            {
                thlistener.onRefreshed(((xAuthenticationInfo) (obj)));
            }
        } while (true);
        if (!val$session.getUserId().equals(val$info.getUser().getId()))
        {
            val$session.onAuthFailure(val$info, new BoxException("Session User Id has changed!"));
        }
        BoxAuthentication.access$000(BoxAuthentication.this).remove(val$taskKey);
        return val$info;
    }

    public volatile Object call()
    {
        return call();
    }

    xAuthenticationInfo()
    {
        this$0 = final_boxauthentication;
        val$session = boxsession;
        val$info = xauthenticationinfo;
        val$taskKey = s;
        val$userId = s1;
        val$userUnknown = Z.this;
        super();
    }
}
