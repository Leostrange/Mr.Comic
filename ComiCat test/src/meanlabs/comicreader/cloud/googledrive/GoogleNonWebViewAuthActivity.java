// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.googledrive;

import adx;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.util.Random;
import meanlabs.comicreader.ReaderActivity;

public class GoogleNonWebViewAuthActivity extends ReaderActivity
{

    private String a;

    public GoogleNonWebViewAuthActivity()
    {
        a = null;
    }

    private void c()
    {
        adx.a(this);
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        setTheme(0x1030010);
        super.onCreate(bundle);
        if (bundle == null)
        {
            a = null;
            return;
        } else
        {
            a = bundle.getString("SIS_KEY_AUTH_STATE_NONCE");
            return;
        }
    }

    protected void onNewIntent(Intent intent)
    {
        if (a == null)
        {
            adx.a(this);
            return;
        }
        intent = intent.getData();
        if (intent != null)
        {
            intent = intent.getQueryParameter("code");
            if (intent != null && intent.length() > 0)
            {
                (new Thread(new Runnable(intent) {

                    final String a;
                    final GoogleNonWebViewAuthActivity b;

                    public final void run()
                    {
                        int i = -1;
                        Intent intent1 = b.getIntent();
                        if (intent1 != null)
                        {
                            i = intent1.getIntExtra("serviecid", -1);
                            (new StringBuilder("Found old intent with service id: ")).append(String.valueOf(i));
                        }
                        adx.a(b, a, i);
                    }

            
            {
                b = GoogleNonWebViewAuthActivity.this;
                a = s;
                super();
            }
                })).start();
            } else
            {
                adx.a(this);
            }
            finish();
            return;
        } else
        {
            c();
            return;
        }
    }

    protected void onResume()
    {
        super.onResume();
        if (isFinishing())
        {
            return;
        }
        if (a != null)
        {
            c();
            return;
        }
        byte abyte0[] = new byte[16];
        (new Random()).nextBytes(abyte0);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("oauth2:");
        for (int i = 0; i < 16; i++)
        {
            stringbuilder.append(String.format("%02x", new Object[] {
                Integer.valueOf(abyte0[i] & 0xff)
            }));
        }

        a = stringbuilder.toString();
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getIntent().getStringExtra("authurl"))));
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putString("SIS_KEY_AUTH_STATE_NONCE", a);
    }
}
