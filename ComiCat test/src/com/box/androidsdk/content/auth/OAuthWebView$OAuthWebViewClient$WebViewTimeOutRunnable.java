// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.webkit.WebView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView

class mViewHolder
    implements Runnable
{

    final String mFailingUrl;
    final WeakReference mViewHolder;
    final mFailingUrl this$0;

    public void run()
    {
        mViewHolder.this.mViewHolder((WebView)mViewHolder.get(), -8, "loading timed out", mFailingUrl);
    }

    public (WebView webview, String s)
    {
        this$0 = this._cls0.this;
        super();
        mFailingUrl = s;
        mViewHolder = new WeakReference(webview);
    }
}
