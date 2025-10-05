package defpackage;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* renamed from: fv  reason: default package */
/* compiled from: ThirdPartyServiceHelper */
public class fv {
    static String a = "2e0b46f8d04a06ac187a2eb0429558fe";
    static final /* synthetic */ boolean b = (!fv.class.desiredAssertionStatus());
    private static final String c = fv.class.getName();
    private static String d = "97e83c003bded24445aefd4c72dc4b85";
    private static Object e = new Object();

    /* renamed from: fv$a */
    /* compiled from: ThirdPartyServiceHelper */
    static class a {
        static b a = null;
        static long b = 0;

        public static b a() {
            return a;
        }

        static void b() {
            a = null;
            b = 0;
        }
    }

    /* renamed from: fv$b */
    /* compiled from: ThirdPartyServiceHelper */
    class b {
        fu a;
        Intent b;
    }

    public static void a(Context context) {
        synchronized (e) {
            gz.c(c, "Clearing Highest Versioned Service");
            b a2 = a.a();
            if (a2 != null) {
                fu fuVar = a2.a;
                Intent intent = a2.b;
                String str = null;
                if (intent != null) {
                    str = intent.getComponent().getPackageName();
                }
                gz.a(c, "Unbinding pkg=" + str);
                if (fuVar != null) {
                    try {
                        context.unbindService(fuVar);
                    } catch (IllegalArgumentException e2) {
                        Log.w(c, String.format("IllegalArgumentException is received during unbinding from %s. Ignored.", new Object[]{str}));
                    }
                }
                a.b();
            }
        }
    }
}
