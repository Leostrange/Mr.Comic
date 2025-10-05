package defpackage;

import android.app.Activity;

/* renamed from: ahe  reason: default package */
/* compiled from: UpgradeHandler */
public final class ahe {
    public int a = agv.e();
    public int b = ((int) aei.a().d.a("app-version", 0));
    public boolean c;
    public Activity d;

    public ahe(Activity activity, boolean z) {
        this.d = activity;
        this.c = z;
        aei.a().d.a("app-version", String.valueOf(this.a));
    }
}
