// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import com.box.androidsdk.content.BoxConfig;
import meanlabs.comicreader.cloud.box_content.Authentication;

public final class adn
    implements add
{

    public adn()
    {
        BoxConfig.IS_LOG_ENABLED = false;
        BoxConfig.CLIENT_ID = "hlwu9uterchhjxtxivzrbri7qffefrrm";
        BoxConfig.CLIENT_SECRET = "LWb2mwSbFHzmFY2kvpnrZf9h7vdu7sO9";
        BoxConfig.REDIRECT_URL = "https://www.meanlabs.com";
    }

    public final acs a(aev aev)
    {
        return new adm(aev);
    }

    public final String a()
    {
        return "box";
    }

    public final void a(Activity activity, int i)
    {
        Intent intent = new Intent(activity, meanlabs/comicreader/cloud/box_content/Authentication);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }
}
