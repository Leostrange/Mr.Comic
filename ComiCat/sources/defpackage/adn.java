package defpackage;

import android.app.Activity;
import android.content.Intent;
import com.box.androidsdk.content.BoxConfig;
import meanlabs.comicreader.cloud.box_content.Authentication;

/* renamed from: adn  reason: default package */
/* compiled from: BoxContentServiceFactory */
public final class adn implements add {
    public adn() {
        BoxConfig.IS_LOG_ENABLED = false;
        BoxConfig.CLIENT_ID = "hlwu9uterchhjxtxivzrbri7qffefrrm";
        BoxConfig.CLIENT_SECRET = "LWb2mwSbFHzmFY2kvpnrZf9h7vdu7sO9";
        BoxConfig.REDIRECT_URL = "https://www.meanlabs.com";
    }

    public final acs a(aev aev) {
        return new adm(aev);
    }

    public final String a() {
        return "box";
    }

    public final void a(Activity activity, int i) {
        Intent intent = new Intent(activity, Authentication.class);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }
}
