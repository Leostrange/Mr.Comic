package defpackage;

import android.content.Context;

/* renamed from: fk  reason: default package */
/* compiled from: AbstractAppIdentifier */
public abstract class fk implements fl {
    static final /* synthetic */ boolean a = (!fk.class.desiredAssertionStatus());
    private static final String b = fk.class.getName();

    public final fz a(String str, Context context) {
        String str2;
        gz.c(b, "getAppInfo : packageName=" + str);
        if (str == null) {
            gz.d(b, "packageName can't be null!");
            return null;
        }
        gz.c(b, "Finding API Key for " + str);
        if (a || str != null) {
            hb hbVar = new hb(context, str);
            if (!(hbVar.b != null)) {
                gz.d(hb.a, "Unable to get API Key from Assests");
                str2 = hbVar.a("APIKey");
            } else {
                str2 = hbVar.b;
            }
            return fj.a(str, str2, context);
        }
        throw new AssertionError();
    }
}
