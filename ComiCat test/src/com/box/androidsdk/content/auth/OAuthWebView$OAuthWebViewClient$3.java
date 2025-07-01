// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.content.DialogInterface;
import android.webkit.SslErrorHandler;

// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView

class val.handler
    implements android.content.WebViewClient._cls3
{

    final bEventListener.onAuthFailure this$0;
    final SslErrorHandler val$handler;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        cess._mth202(this._cls0.this, true);
        val$handler.cancel();
        cess._mth100(this._cls0.this).onAuthFailure(new bEventListener.onAuthFailure(0, null));
    }

    bEventListener()
    {
        this$0 = final_beventlistener;
        val$handler = SslErrorHandler.this;
        super();
    }
}
