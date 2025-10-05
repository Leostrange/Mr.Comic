package defpackage;

import android.app.Activity;
import android.content.Intent;
import meanlabs.comicreader.cloud.dropbox.DropboxAuthActivity;

/* renamed from: adr  reason: default package */
/* compiled from: DropboxServiceFactory */
public final class adr implements add {
    public final acs a(aev aev) {
        return new adq(aev);
    }

    public final String a() {
        return "dropbox";
    }

    public final void a(Activity activity, int i) {
        Intent intent = new Intent(activity, DropboxAuthActivity.class);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }
}
