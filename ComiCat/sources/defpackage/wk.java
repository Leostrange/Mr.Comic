package defpackage;

import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;

/* renamed from: wk  reason: default package */
/* compiled from: ArrayFactory */
public abstract class wk<T> {
    public static final wk<boolean[]> a = new wk() {
        public final void a(Object obj) {
            a(obj, ((boolean[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new boolean[i];
        }
    };
    public static final wk<byte[]> b = new wk() {
        public final void a(Object obj) {
            a(obj, ((byte[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new byte[i];
        }
    };
    public static final wk<char[]> c = new wk() {
        public final void a(Object obj) {
            a(obj, ((char[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new char[i];
        }
    };
    public static final wk<short[]> d = new wk() {
        public final void a(Object obj) {
            a(obj, ((short[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new short[i];
        }
    };
    public static final wk<int[]> e = new wk() {
        public final void a(Object obj) {
            a(obj, ((int[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new int[i];
        }
    };
    public static final wk<long[]> f = new wk() {
        public final void a(Object obj) {
            a(obj, ((long[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new long[i];
        }
    };
    public static final wk<float[]> g = new wk() {
        public final void a(Object obj) {
            a(obj, ((float[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new float[i];
        }
    };
    public static final wk<double[]> h = new wk() {
        public final void a(Object obj) {
            a(obj, ((double[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new double[i];
        }
    };
    public static final wk<Object[]> i = new wk() {
        public final void a(Object obj) {
            a(obj, ((Object[]) obj).length);
        }

        /* access modifiers changed from: protected */
        public final Object b(int i) {
            return new Object[i];
        }
    };
    private final wp j = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(4);
        }
    };
    private final wp k = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(8);
        }
    };
    private final wp l = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(16);
        }
    };
    private final wp m = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(32);
        }
    };
    private final wp n = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(64);
        }
    };
    private final wp o = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(NotificationCompat.FLAG_HIGH_PRIORITY);
        }
    };
    private final wp p = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(NotificationCompat.FLAG_LOCAL_ONLY);
        }
    };
    private final wp q = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(NotificationCompat.FLAG_GROUP_SUMMARY);
        }
    };
    private final wp r = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(1024);
        }
    };
    private final wp s = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(2048);
        }
    };
    private final wp t = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(FragmentTransaction.TRANSIT_ENTER_MASK);
        }
    };
    private final wp u = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(FragmentTransaction.TRANSIT_EXIT_MASK);
        }
    };
    private final wp v = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(16384);
        }
    };
    private final wp w = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(32768);
        }
    };
    private final wp x = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return wk.this.b(65536);
        }
    };

    public final T a(int i2) {
        return i2 <= 4 ? this.j.b() : i2 <= 8 ? this.k.b() : i2 <= 16 ? this.l.b() : i2 <= 32 ? this.m.b() : i2 <= 64 ? this.n.b() : i2 <= 128 ? this.o.b() : i2 <= 256 ? this.p.b() : i2 <= 512 ? this.q.b() : i2 <= 1024 ? this.r.b() : i2 <= 2048 ? this.s.b() : i2 <= 4096 ? this.t.b() : i2 <= 8192 ? this.u.b() : i2 <= 16384 ? this.v.b() : i2 <= 32768 ? this.w.b() : i2 <= 65536 ? this.x.b() : b(i2);
    }

    public void a(T t2) {
        int length = ((Object[]) t2).length;
        if (length <= 4) {
            this.j.a(t2);
        } else {
            a(t2, length);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Object obj, int i2) {
        if (i2 <= 8) {
            this.k.a(obj);
        } else if (i2 <= 16) {
            this.l.a(obj);
        } else if (i2 <= 32) {
            this.m.a(obj);
        } else if (i2 <= 64) {
            this.n.a(obj);
        } else if (i2 <= 128) {
            this.o.a(obj);
        } else if (i2 <= 256) {
            this.p.a(obj);
        } else if (i2 <= 512) {
            this.q.a(obj);
        } else if (i2 <= 1024) {
            this.r.a(obj);
        } else if (i2 <= 2048) {
            this.s.a(obj);
        } else if (i2 <= 4096) {
            this.t.a(obj);
        } else if (i2 <= 8192) {
            this.u.a(obj);
        } else if (i2 <= 16384) {
            this.v.a(obj);
        } else if (i2 <= 32768) {
            this.w.a(obj);
        } else if (i2 <= 65536) {
            this.x.a(obj);
        }
    }

    /* access modifiers changed from: protected */
    public abstract T b(int i2);
}
