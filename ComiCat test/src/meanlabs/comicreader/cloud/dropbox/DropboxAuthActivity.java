// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.dropbox;

import act;
import ado;
import aei;
import aev;
import aew;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import com.dropbox.core.android.AuthActivity;
import kb;
import kd;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.ReaderActivity;

public class DropboxAuthActivity extends ReaderActivity
{

    ado a;

    public DropboxAuthActivity()
    {
    }

    static void a(DropboxAuthActivity dropboxauthactivity)
    {
        dropboxauthactivity.c();
    }

    static void a(DropboxAuthActivity dropboxauthactivity, String s, kb kb1)
    {
        Object obj;
        aev aev2;
        int i;
        aev2 = null;
        obj = null;
        i = dropboxauthactivity.getIntent().getIntExtra("serviecid", -1);
        if (i != -1) goto _L2; else goto _L1
_L1:
        aev2 = new aev();
        aev2.b = "dropbox";
        aev2.h = s;
        aev2.g = "";
        s = obj;
        if (kb1 != null)
        {
            s = kb1.a();
        }
        if (s != null)
        {
            s = s.a();
        } else
        {
            s = "";
        }
        aev2.f = s;
        aev2.c = aev2.f;
        if (aei.a().g.a(aev2))
        {
            act.b().a(aev2.a, true);
        } else
        {
            dropboxauthactivity.runOnUiThread(dropboxauthactivity. new Runnable() {

                final DropboxAuthActivity a;

                public final void run()
                {
                    DropboxAuthActivity.a(a);
                }

            
            {
                a = DropboxAuthActivity.this;
                super();
            }
            });
        }
_L4:
        dropboxauthactivity.finish();
        return;
_L2:
        aev aev1 = aei.a().g.a(i);
        if (aev1 != null)
        {
            aev1.h = s;
            aev1.g = "";
            s = aev2;
            if (kb1 != null)
            {
                s = kb1.a();
            }
            if (s != null)
            {
                s = s.a();
            } else
            {
                s = "";
            }
            aev1.f = s;
            aev1.c = aev1.f;
            s = aei.a().g;
            if (aew.c(aev1))
            {
                act.b().a(i, false);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void c()
    {
        Toast.makeText(ComicReaderApp.a(), getString(0x7f06024a, new Object[] {
            getString(0x7f060279)
        }), 1).show();
        act.b().a(-1, false);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = new ado(null);
        if (AuthActivity.a(this, "76weop5hf3hiwxu"))
        {
            bundle = AuthActivity.a(this, "76weop5hf3hiwxu", "www.dropbox.com", "1");
            if (!(this instanceof Activity))
            {
                bundle.addFlags(0x10000000);
            }
            startActivity(bundle);
        }
    }

    protected void onRestart()
    {
        String s;
        ado ado1;
        super.onRestart();
        ado1 = a;
        Object obj = AuthActivity.a;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        String s1 = ((Intent) (obj)).getStringExtra("ACCESS_TOKEN");
        s = ((Intent) (obj)).getStringExtra("ACCESS_SECRET");
        obj = ((Intent) (obj)).getStringExtra("UID");
        if (s1 == null || s1.equals("") || s == null || s.equals("") || obj == null || ((String) (obj)).equals(""))
        {
            break MISSING_BLOCK_LABEL_118;
        }
_L1:
        if (s != null)
        {
            ado1.b(s);
        } else
        {
            Log.i("DropboxSync", "Error authenticating");
        }
        if (s != null)
        {
            (new Thread(new Runnable(s) {

                final String a;
                final DropboxAuthActivity b;

                public final void run()
                {
                    kb kb1 = b.a.b();
                    b.runOnUiThread(new Runnable(this, kb1) {

                        final kb a;
                        final _cls1 b;

                        public final void run()
                        {
                            DropboxAuthActivity.a(b.b, b.a, a);
                        }

            
            {
                b = _pcls1;
                a = kb1;
                super();
            }
                    });
                }

            
            {
                b = DropboxAuthActivity.this;
                a = s;
                super();
            }
            })).start();
            return;
        } else
        {
            c();
            finish();
            return;
        }
        s = null;
          goto _L1
    }
}
