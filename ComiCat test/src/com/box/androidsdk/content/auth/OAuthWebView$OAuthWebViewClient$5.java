// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.content.DialogInterface;

// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView

class this._cls0
    implements android.content.WebViewClient._cls5
{

    final bEventListener.onAuthFailure this$0;

    public void onDismiss(DialogInterface dialoginterface)
    {
        if (!cess._mth200(this._cls0.this))
        {
            cess._mth100(this._cls0.this).onAuthFailure(new bEventListener.onAuthFailure(0, null));
        }
    }

    bEventListener()
    {
        this$0 = this._cls0.this;
        super();
    }
}
