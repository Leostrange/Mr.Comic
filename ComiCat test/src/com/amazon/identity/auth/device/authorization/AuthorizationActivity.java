// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.authorization;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import fo;
import fp;
import fq;
import fw;
import gt;
import gz;
import java.util.concurrent.Executor;

public class AuthorizationActivity extends Activity
{

    private static final String a = com/amazon/identity/auth/device/authorization/AuthorizationActivity.getName();

    public AuthorizationActivity()
    {
    }

    static String a()
    {
        return a;
    }

    protected void onCreate(Bundle bundle)
    {
        Object obj;
        super.onCreate(bundle);
        gz.d(a, "onCreate");
        obj = getIntent().getData();
        if (obj == null)
        {
            gz.c(a, "uri is null onCreate - closing activity");
            finish();
            return;
        }
        new fp();
        bundle = fp.a(((Uri) (obj)).toString());
        if (obj == null || bundle == null) goto _L2; else goto _L1
_L1:
        gz.a(a, "Received response from WebBroswer for OAuth2 flow", (new StringBuilder("response=")).append(((Uri) (obj)).toString()).toString());
        obj = fp.a(((Uri) (obj)).toString(), ((fq) (bundle)).b, ((fq) (bundle)).a);
        if (((Bundle) (obj)).containsKey(fx.a.f.o))
        {
            ((fq) (bundle)).c.b(((Bundle) (obj)));
            finish();
            return;
        }
          goto _L3
_L2:
        finish();
        return;
_L3:
        try
        {
            fo fo1 = new fo();
            android.content.Context context = getApplicationContext();
            fw fw1 = new fw(bundle) {

                final fq a;
                final AuthorizationActivity b;

                public final void a(Bundle bundle1)
                {
                    gz.d(AuthorizationActivity.a(), "Code for Token Exchange success");
                    if (a.c != null)
                    {
                        a.c.a(bundle1);
                    }
                }

                public final void a(AuthError autherror)
                {
                    gz.d(AuthorizationActivity.a(), (new StringBuilder("Code for Token Exchange Error. ")).append(autherror.getMessage()).toString());
                    if (a.c != null)
                    {
                        a.c.a(autherror);
                    }
                }

                public final void b(Bundle bundle1)
                {
                    gz.d(AuthorizationActivity.a(), "Code for Token Exchange Cancel");
                    if (a.c != null)
                    {
                        a.c.b(bundle1);
                    }
                }

            
            {
                b = AuthorizationActivity.this;
                a = fq1;
                super();
            }
            };
            gt.a.execute(new fo._cls1(fo1, ((Bundle) (obj)), context, fw1));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (((fq) (bundle)).c != null)
            {
                ((fq) (bundle)).c.a(((AuthError) (obj)));
            }
        }
        if (true) goto _L2; else goto _L4
_L4:
    }

}
