// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

public class BlockedIPErrorActivity extends Activity
{

    public BlockedIPErrorActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(hc.d.blocked_ip_error);
        findViewById(hc.c.ok).setOnClickListener(new android.view.View.OnClickListener() {

            final BlockedIPErrorActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = BlockedIPErrorActivity.this;
                super();
            }
        });
    }
}
