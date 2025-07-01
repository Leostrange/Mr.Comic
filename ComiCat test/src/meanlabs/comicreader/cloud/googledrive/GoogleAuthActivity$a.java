// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.googledrive;

import ads;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package meanlabs.comicreader.cloud.googledrive:
//            GoogleAuthActivity

final class <init> extends WebViewClient
{

    final GoogleAuthActivity a;

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        webview = Uri.parse(s);
        if (webview.getHost().equals("localhost"))
        {
            webview = webview.getQueryParameter("code");
            if (webview != null && webview.length() > 0)
            {
                (new Thread(new Runnable(webview) {

                    final String a;
                    final GoogleAuthActivity.a b;

                    public final void run()
                    {
                        int i = b.a.getIntent().getIntExtra("serviecid", -1);
                        ads.a(b.a, a, i);
                    }

            
            {
                b = GoogleAuthActivity.a.this;
                a = s;
                super();
            }
                })).start();
            } else
            {
                ads.a(a);
            }
            a.finish();
            return true;
        } else
        {
            return false;
        }
    }

    private _cls1.a(GoogleAuthActivity googleauthactivity)
    {
        a = googleauthactivity;
        super();
    }

    a(GoogleAuthActivity googleauthactivity, byte byte0)
    {
        this(googleauthactivity);
    }
}
