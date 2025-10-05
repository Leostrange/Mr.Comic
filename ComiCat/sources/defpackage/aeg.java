package defpackage;

import android.app.Activity;
import android.content.Intent;
import meanlabs.comicreader.cloud.smb.SMBShareChooserActivity;

/* renamed from: aeg  reason: default package */
/* compiled from: SMBServiceFactory */
public final class aeg implements add {
    public final acs a(aev aev) {
        aeh.a();
        return new aef(aev);
    }

    public final String a() {
        return "smb";
    }

    public final void a(Activity activity, int i) {
        aeh.a();
        Intent intent = new Intent(activity, SMBShareChooserActivity.class);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }
}
