package defpackage;

import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* renamed from: gt  reason: default package */
/* compiled from: ThreadUtils */
public final class gt {
    public static final Executor a = Executors.newCachedThreadPool(new ThreadFactory() {
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AmazonAuthorzationLibrary#" + gt.b());
        }
    });
    private static int b = 0;

    public static boolean a() {
        return Looper.getMainLooper() != null && Looper.getMainLooper() == Looper.myLooper();
    }

    static /* synthetic */ int b() {
        int i = b + 1;
        b = i;
        return i;
    }
}
