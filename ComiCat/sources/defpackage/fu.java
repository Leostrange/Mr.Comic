package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import defpackage.fn;

/* renamed from: fu  reason: default package */
/* compiled from: ThirdPartyAuthorizationServiceConnection */
public class fu extends fs<fn> {
    private static final String b = fu.class.getName();

    public fu() {
        gz.c(b, "ThirdPartyAuthorizationServiceInterface created");
    }

    public final IInterface a(IBinder iBinder) {
        return fn.a.a(iBinder);
    }

    public final Class<fn> a() {
        return fn.class;
    }
}
