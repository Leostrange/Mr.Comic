// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.box_content;

import act;
import aei;
import aev;
import aew;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.requests.BoxResponse;
import meanlabs.comicreader.ComicReaderApp;

public class Authentication extends Activity
{

    BoxSession a;

    public Authentication()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = new BoxSession(this, null, "hlwu9uterchhjxtxivzrbri7qffefrrm", "LWb2mwSbFHzmFY2kvpnrZf9h7vdu7sO9", "https://www.meanlabs.com");
        a.getAuthInfo().wipeOutAuth();
        a.authenticate(ComicReaderApp.a(), new com.box.androidsdk.content.BoxFutureTask.OnCompletedListener() {

            final Authentication a;

            public final void onCompleted(BoxResponse boxresponse)
            {
                Object obj;
                BoxUser boxuser;
                int i;
                if (boxresponse.isSuccess())
                {
                    obj = ((BoxSession)boxresponse.getResult()).getAuthInfo();
                } else
                {
                    obj = null;
                }
                if (obj == null || ((com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo) (obj)).getUser() == null) goto _L2; else goto _L1
_L1:
                obj = a;
                boxresponse = ((BoxSession)boxresponse.getResult()).getAuthInfo();
                boxuser = boxresponse.getUser();
                (new StringBuilder("Authenticated user id is: ")).append(boxuser.getLogin()).append(", ").append(boxuser.getName());
                i = ((Authentication) (obj)).getIntent().getIntExtra("serviecid", -1);
                if (i != -1) goto _L4; else goto _L3
_L3:
                aev aev1 = new aev();
                aev1.b = "box";
                aev1.h = boxresponse.accessToken();
                aev1.g = boxresponse.refreshToken();
                aev1.i = boxresponse.getRefreshTime().longValue();
                aev1.e = (new StringBuilder("uid:")).append(boxuser.getId()).toString();
                aev1.f = boxuser.getLogin();
                aev1.c = boxuser.getName();
                if (aei.a().g.a(aev1))
                {
                    act.b().a(aev1.a, true);
                } else
                {
                    act.b().a(-1, false);
                }
_L5:
                ((Authentication) (obj)).a.getAuthInfo().wipeOutAuth();
                ((Authentication) (obj)).finish();
                return;
_L4:
                aev aev2 = aei.a().g.a(i);
                if (aev2 != null)
                {
                    aev2.h = boxresponse.accessToken();
                    aev2.g = boxresponse.refreshToken();
                    aev2.i = boxresponse.getRefreshTime().longValue() + boxresponse.expiresIn().longValue();
                    aev2.e = (new StringBuilder("uid:")).append(boxuser.getId()).toString();
                    aev2.f = boxuser.getLogin();
                    aev2.c = boxuser.getName();
                    boxresponse = aei.a().g;
                    if (aew.c(aev2))
                    {
                        act.b().a(i, false);
                    }
                }
                if (true) goto _L5; else goto _L2
_L2:
                Authentication authentication = a;
                boxresponse = boxresponse.getException();
                if (boxresponse != null)
                {
                    boxresponse.getMessage();
                }
                authentication.runOnUiThread(authentication. new Runnable() {

                    final Authentication a;

                    public final void run()
                    {
                        Toast.makeText(a.getApplicationContext(), a.getString(0x7f06024a, new Object[] {
                            a.getString(0x7f060274)
                        }), 1).show();
                        act.b().a(-1, false);
                    }

            
            {
                a = Authentication.this;
                super();
            }
                });
                authentication.finish();
                return;
            }

            
            {
                a = Authentication.this;
                super();
            }
        });
    }
}
