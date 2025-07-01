// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.content.Context;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.requests.BoxResponse;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication

class val.context
    implements com.box.androidsdk.content.letedListener
{

    final BoxAuthentication this$0;
    final Context val$context;
    final xAuthenticationInfo val$info;

    public void onCompleted(BoxResponse boxresponse)
    {
        if (boxresponse.isSuccess())
        {
            val$info.setUser((BoxUser)boxresponse.getResult());
            BoxAuthentication.getInstance().onAuthenticated(val$info, val$context);
            return;
        } else
        {
            BoxAuthentication.getInstance().onAuthenticationFailure(val$info, boxresponse.getException());
            return;
        }
    }

    xAuthenticationInfo()
    {
        this$0 = final_boxauthentication;
        val$info = xauthenticationinfo;
        val$context = Context.this;
        super();
    }
}
