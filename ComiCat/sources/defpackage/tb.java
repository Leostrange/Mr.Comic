package defpackage;

import android.text.TextUtils;

/* renamed from: tb  reason: default package */
/* compiled from: LiveConnectUtils */
public final class tb {
    static final /* synthetic */ boolean a = (!tb.class.desiredAssertionStatus());

    private tb() {
        throw new AssertionError("Non-instantiable class");
    }

    public static void a(Object obj, String str) {
        if (!a && TextUtils.isEmpty(str)) {
            throw new AssertionError();
        } else if (obj == null) {
            throw new NullPointerException(String.format("Input parameter '%1$s' is invalid. '%1$s' cannot be null.", new Object[]{str}));
        }
    }

    public static void a(String str, String str2) {
        if (a || !TextUtils.isEmpty(str2)) {
            a((Object) str, str2);
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException(String.format("Input parameter '%1$s' is invalid. '%1$s' cannot be empty.", new Object[]{str2}));
            }
            return;
        }
        throw new AssertionError();
    }
}
