package meanlabs.comicreader.cloud.googledrive;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.box.androidsdk.content.models.BoxError;
import java.util.Random;
import meanlabs.comicreader.ReaderActivity;

public class GoogleNonWebViewAuthActivity extends ReaderActivity {
    private String a = null;

    private void c() {
        adx.a(this);
        finish();
    }

    public void onCreate(Bundle bundle) {
        setTheme(16973840);
        super.onCreate(bundle);
        if (bundle == null) {
            this.a = null;
        } else {
            this.a = bundle.getString("SIS_KEY_AUTH_STATE_NONCE");
        }
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        if (this.a == null) {
            adx.a(this);
            return;
        }
        Uri data = intent.getData();
        if (data != null) {
            final String queryParameter = data.getQueryParameter(BoxError.FIELD_CODE);
            if (queryParameter == null || queryParameter.length() <= 0) {
                adx.a(this);
            } else {
                new Thread(new Runnable() {
                    public final void run() {
                        int i = -1;
                        Intent intent = GoogleNonWebViewAuthActivity.this.getIntent();
                        if (intent != null) {
                            i = intent.getIntExtra("serviecid", -1);
                            new StringBuilder("Found old intent with service id: ").append(String.valueOf(i));
                        }
                        adx.a(GoogleNonWebViewAuthActivity.this, queryParameter, i);
                    }
                }).start();
            }
            finish();
            return;
        }
        c();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (!isFinishing()) {
            if (this.a != null) {
                c();
                return;
            }
            byte[] bArr = new byte[16];
            new Random().nextBytes(bArr);
            StringBuilder sb = new StringBuilder();
            sb.append("oauth2:");
            for (int i = 0; i < 16; i++) {
                sb.append(String.format("%02x", new Object[]{Integer.valueOf(bArr[i] & 255)}));
            }
            this.a = sb.toString();
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getIntent().getStringExtra("authurl"))));
        }
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("SIS_KEY_AUTH_STATE_NONCE", this.a);
    }
}
