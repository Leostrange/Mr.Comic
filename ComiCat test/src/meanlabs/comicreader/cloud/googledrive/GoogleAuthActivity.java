// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.googledrive;

import ads;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import meanlabs.comicreader.ReaderActivity;

public class GoogleAuthActivity extends ReaderActivity
{
    final class a extends WebViewClient
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
                    (new Thread(new Runnable(this, webview) {

                        final String a;
                        final a b;

                        public final void run()
                        {
                            int i = b.a.getIntent().getIntExtra("serviecid", -1);
                            ads.a(b.a, a, i);
                        }

            
            {
                b = a1;
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

        private a()
        {
            a = GoogleAuthActivity.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    public GoogleAuthActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03005c);
        bundle = getIntent().getStringExtra("authurl");
        WebView webview = (WebView)findViewById(0x7f0c00f7);
        WebSettings websettings = webview.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setUserAgentString("Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36");
        webview.setWebViewClient(new a((byte)0));
        webview.loadUrl(bundle);
    }
}
