package defpackage;

import android.net.Uri;

/* renamed from: sp  reason: default package */
/* compiled from: Config */
public enum sp {
    ;
    
    Uri b;
    String c;
    public Uri d;
    public Uri e;
    Uri f;
    Uri g;

    static {
        h = !sp.class.desiredAssertionStatus();
        a = new sp("INSTANCE");
        i = new sp[]{a};
    }

    private sp(String str) {
        this.b = Uri.parse("https://apis.live.net/v5.0");
        this.c = "5.0";
        this.d = Uri.parse("https://login.live.com/oauth20_authorize.srf");
        this.e = Uri.parse("https://login.live.com/oauth20_desktop.srf");
        this.f = Uri.parse("https://login.live.com/oauth20_logout.srf");
        this.g = Uri.parse("https://login.live.com/oauth20_token.srf");
    }
}
