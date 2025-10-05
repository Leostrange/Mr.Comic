package defpackage;

import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.view.KeyEvent;

/* renamed from: aq  reason: default package */
/* compiled from: KeyEventCompat */
public final class aq {
    static final d a;

    /* renamed from: aq$a */
    /* compiled from: KeyEventCompat */
    static class a implements d {
        a() {
        }

        private static int a(int i, int i2, int i3, int i4) {
            boolean z = true;
            boolean z2 = (i2 & 1) != 0;
            int i5 = i3 | i4;
            if ((i5 & 1) == 0) {
                z = false;
            }
            if (!z2) {
                return z ? i & (i2 ^ -1) : i;
            }
            if (!z) {
                return i & (i5 ^ -1);
            }
            throw new IllegalArgumentException("bad arguments");
        }

        public int a(int i) {
            int i2 = (i & 192) != 0 ? i | 1 : i;
            if ((i2 & 48) != 0) {
                i2 |= 2;
            }
            return i2 & 247;
        }

        public void a(KeyEvent keyEvent) {
        }

        public boolean b(int i) {
            return a(a(a(i) & 247, 1, 64, NotificationCompat.FLAG_HIGH_PRIORITY), 2, 16, 32) == 1;
        }

        public boolean c(int i) {
            return (a(i) & 247) == 0;
        }
    }

    /* renamed from: aq$b */
    /* compiled from: KeyEventCompat */
    static class b extends a {
        b() {
        }

        public final void a(KeyEvent keyEvent) {
            keyEvent.startTracking();
        }
    }

    /* renamed from: aq$c */
    /* compiled from: KeyEventCompat */
    static class c extends b {
        c() {
        }

        public final int a(int i) {
            return KeyEvent.normalizeMetaState(i);
        }

        public final boolean b(int i) {
            return KeyEvent.metaStateHasModifiers(i, 1);
        }

        public final boolean c(int i) {
            return KeyEvent.metaStateHasNoModifiers(i);
        }
    }

    /* renamed from: aq$d */
    /* compiled from: KeyEventCompat */
    interface d {
        void a(KeyEvent keyEvent);

        boolean b(int i);

        boolean c(int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new c();
        } else {
            a = new a();
        }
    }

    public static boolean a(KeyEvent keyEvent) {
        return a.b(keyEvent.getMetaState());
    }

    public static boolean b(KeyEvent keyEvent) {
        return a.c(keyEvent.getMetaState());
    }

    public static void c(KeyEvent keyEvent) {
        a.a(keyEvent);
    }
}
