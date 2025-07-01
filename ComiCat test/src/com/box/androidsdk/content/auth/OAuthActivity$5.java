// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;


// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthActivity

class hFailure
    implements Runnable
{

    final OAuthActivity this$0;
    final hFailure val$authFailure;

    public void run()
    {
        dismissSpinner();
        onAuthFailure(val$authFailure);
        setResult(0);
    }

    hFailure()
    {
        this$0 = final_oauthactivity;
        val$authFailure = hFailure.this;
        super();
    }
}
