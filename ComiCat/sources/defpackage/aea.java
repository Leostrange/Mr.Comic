package defpackage;

import android.app.Activity;
import android.content.Intent;
import meanlabs.comicreader.cloud.onedrive.OneDriveAuthActivity;

/* renamed from: aea  reason: default package */
/* compiled from: OneDriveServiceFactory */
public final class aea implements add {
    public final acs a(aev aev) {
        return new adz(aev);
    }

    public final String a() {
        return "onedrive";
    }

    public final void a(Activity activity, int i) {
        Intent intent = new Intent(activity, OneDriveAuthActivity.class);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }
}
