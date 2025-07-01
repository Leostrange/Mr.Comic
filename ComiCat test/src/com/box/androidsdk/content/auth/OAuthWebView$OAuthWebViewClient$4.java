// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.content.DialogInterface;
import android.net.http.SslError;
import android.webkit.WebView;

// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView

class val.error
    implements android.content.WebViewClient._cls4
{

    final val.error this$0;
    final SslError val$error;
    final WebView val$view;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        owCertDialog(val$view.getContext(), val$error);
    }

    ()
    {
        this$0 = final_;
        val$view = webview;
        val$error = SslError.this;
        super();
    }
}
