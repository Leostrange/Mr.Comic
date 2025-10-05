package com.box.androidsdk.content.auth;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import defpackage.hc;

public class BlockedIPErrorActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(hc.d.blocked_ip_error);
        findViewById(hc.c.ok).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                BlockedIPErrorActivity.this.finish();
            }
        });
    }
}
