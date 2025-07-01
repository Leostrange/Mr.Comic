// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import java.util.concurrent.Callable;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication

class xAuthenticationInfo
    implements Callable
{

    final BoxAuthentication this$0;
    final xAuthenticationInfo val$latestInfo;

    public xAuthenticationInfo call()
    {
        return val$latestInfo;
    }

    public volatile Object call()
    {
        return call();
    }

    xAuthenticationInfo()
    {
        this$0 = final_boxauthentication;
        val$latestInfo = xAuthenticationInfo.this;
        super();
    }
}
