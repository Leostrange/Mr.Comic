package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import defpackage.fh;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: gj  reason: default package */
/* compiled from: AbstractOauthTokenRequest */
public abstract class gj extends gk {
    private static final String j = gk.class.getName();
    final String a;
    protected final Context b;
    protected final String c;

    public gj(String str, String str2, String str3, String str4, Context context, String str5, Bundle bundle) {
        super(str, str2, str3, bundle);
        this.a = str4;
        this.b = context;
        this.c = str5;
    }

    private static String a(Context context, String str) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, NotificationCompat.FLAG_HIGH_PRIORITY);
            if (applicationInfo.metaData == null) {
                return "www";
            }
            String string = applicationInfo.metaData.getString("host.type");
            gz.a(j, "Host Type " + string + " found in package " + str);
            return string;
        } catch (PackageManager.NameNotFoundException e) {
            gz.a(j, "No host type found in package " + str);
            return "www";
        }
    }

    public final String a() {
        return "/auth/O2/token";
    }

    public final String a(Bundle bundle) {
        String str;
        gz.c(j, " domain: .amazon.com");
        String a2 = a(this.b, this.b.getPackageName());
        if ("development".equalsIgnoreCase(a2)) {
            gy.a(fh.a.FORCE_DEVO);
        } else if ("gamma".equalsIgnoreCase(a2)) {
            gy.a(fh.a.FORCE_PRE_PROD);
        }
        switch (gy.b()) {
            case FORCE_DEVO:
                str = "api.integ";
                break;
            case FORCE_PRE_PROD:
                str = "api.pre-prod";
                break;
            default:
                str = "api";
                break;
        }
        String str2 = str + ".amazon.com";
        gz.c(j, "host for request: " + str2);
        return str2;
    }

    public final String b() {
        return ".amazon.com";
    }

    public abstract String c();

    /* access modifiers changed from: protected */
    public void d() {
        this.h.add(new BasicNameValuePair("grant_type", c()));
        this.h.add(new BasicNameValuePair("client_id", this.c));
    }
}
