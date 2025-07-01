// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.box_content;

import act;
import aei;
import aev;
import aew;
import android.content.Intent;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.requests.BoxResponse;

// Referenced classes of package meanlabs.comicreader.cloud.box_content:
//            Authentication

final class a
    implements com.box.androidsdk.content.ompletedListener
{

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
        if (obj == null || ((com.box.androidsdk.content.auth..BoxAuthenticationInfo) (obj)).getUser() == null) goto _L2; else goto _L1
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
        authentication.runOnUiThread(new <init>(authentication));
        authentication.finish();
        return;
    }

    henticationInfo(Authentication authentication)
    {
        a = authentication;
        super();
    }
}
