package defpackage;

import android.os.Build;
import android.os.Trace;

/* renamed from: v  reason: default package */
/* compiled from: TraceCompat */
public final class v {
    public static void a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
