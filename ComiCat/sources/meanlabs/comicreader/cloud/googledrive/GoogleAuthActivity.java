package meanlabs.comicreader.cloud.googledrive;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.box.androidsdk.content.models.BoxError;
import meanlabs.comicat.R;
import meanlabs.comicreader.ReaderActivity;

public class GoogleAuthActivity extends ReaderActivity {

    class a extends WebViewClient {
        private a() {
        }

        /* synthetic */ a(GoogleAuthActivity googleAuthActivity, byte b) {
            this();
        }

        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri parse = Uri.parse(str);
            if (!parse.getHost().equals("localhost")) {
                return false;
            }
            final String queryParameter = parse.getQueryParameter(BoxError.FIELD_CODE);
            if (queryParameter == null || queryParameter.length() <= 0) {
                ads.a((Activity) GoogleAuthActivity.this);
            } else {
                new Thread(new Runnable() {
                    public final void run() {
                        ads.a(GoogleAuthActivity.this, queryParameter, GoogleAuthActivity.this.getIntent().getIntExtra("serviecid", -1));
                    }
                }).start();
            }
            GoogleAuthActivity.this.finish();
            return true;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.web_activity);
        String stringExtra = getIntent().getStringExtra("authurl");
        WebView webView = (WebView) findViewById(R.id.webview);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUserAgentString("Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36");
        webView.setWebViewClient(new a(this, (byte) 0));
        webView.loadUrl(stringExtra);
    }
}
