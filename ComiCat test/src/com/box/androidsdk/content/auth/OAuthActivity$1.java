// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.box.androidsdk.content.utils.SdkUtils;

// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthActivity

class this._cls0 extends BroadcastReceiver
{

    final OAuthActivity this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && SdkUtils.isInternetAvailable(context) && isAuthErrored())
        {
            startOAuth();
        }
    }

    ()
    {
        this$0 = OAuthActivity.this;
        super();
    }
}
