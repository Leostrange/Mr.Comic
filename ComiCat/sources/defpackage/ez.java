package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ez  reason: default package */
/* compiled from: ChildHelper */
public final class ez {
    public final b a;
    public final a b = new a();
    public final List<View> c = new ArrayList();

    /* renamed from: ez$a */
    /* compiled from: ChildHelper */
    public static class a {
        public long a = 0;
        public a b;

        a() {
        }

        private void a() {
            if (this.b == null) {
                this.b = new a();
            }
        }

        public final void a(int i) {
            while (i >= 64) {
                this.a();
                this = this.b;
                i -= 64;
            }
            this.a |= 1 << i;
        }

        /* access modifiers changed from: package-private */
        public final void a(int i, boolean z) {
            int i2 = i;
            a aVar = this;
            while (true) {
                if (i2 >= 64) {
                    aVar.a();
                    aVar = aVar.b;
                    i2 -= 64;
                } else {
                    boolean z2 = (aVar.a & Long.MIN_VALUE) != 0;
                    long j = (1 << i2) - 1;
                    aVar.a = (((j ^ -1) & aVar.a) << 1) | (aVar.a & j);
                    if (!z) {
                        a aVar2 = aVar;
                        while (true) {
                            if (i2 >= 64) {
                                if (aVar2.b == null) {
                                    break;
                                }
                                aVar2 = aVar2.b;
                                i2 -= 64;
                            } else {
                                aVar2.a &= (1 << i2) ^ -1;
                                break;
                            }
                        }
                    } else {
                        aVar.a(i2);
                    }
                    if (z2 || aVar.b != null) {
                        aVar.a();
                        aVar = aVar.b;
                        i2 = 0;
                        z = z2;
                    } else {
                        return;
                    }
                }
            }
        }

        public final boolean b(int i) {
            while (i >= 64) {
                this.a();
                this = this.b;
                i -= 64;
            }
            return (this.a & (1 << i)) != 0;
        }

        public final boolean c(int i) {
            while (i >= 64) {
                this.a();
                this = this.b;
                i -= 64;
            }
            long j = 1 << i;
            boolean z = (this.a & j) != 0;
            this.a &= j ^ -1;
            long j2 = j - 1;
            this.a = Long.rotateRight((j2 ^ -1) & this.a, 1) | (this.a & j2);
            if (this.b != null) {
                if (this.b.b(0)) {
                    this.a(63);
                }
                this.b.c(0);
            }
            return z;
        }

        public final int d(int i) {
            return this.b == null ? i >= 64 ? Long.bitCount(this.a) : Long.bitCount(this.a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.a & ((1 << i) - 1)) : this.b.d(i - 64) + Long.bitCount(this.a);
        }

        public final String toString() {
            return this.b == null ? Long.toBinaryString(this.a) : this.b.toString() + "xx" + Long.toBinaryString(this.a);
        }
    }

    /* renamed from: ez$b */
    /* compiled from: ChildHelper */
    public interface b {
        int a();

        int a(View view);

        void a(int i);

        void a(View view, int i);

        void a(View view, int i, ViewGroup.LayoutParams layoutParams);

        RecyclerView.s b(View view);

        View b(int i);

        void b();

        void c(int i);
    }

    public ez(b bVar) {
        this.a = bVar;
    }

    public final int a() {
        return this.a.a() - this.c.size();
    }

    public final int a(int i) {
        if (i < 0) {
            return -1;
        }
        int a2 = this.a.a();
        int i2 = i;
        while (i2 < a2) {
            int d = i - (i2 - this.b.d(i2));
            if (d == 0) {
                while (this.b.b(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += d;
        }
        return -1;
    }

    public final void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int a2 = i < 0 ? this.a.a() : a(i);
        this.b.a(a2, z);
        if (z) {
            this.c.add(view);
        }
        this.a.a(view, a2, layoutParams);
    }

    public final void a(View view, int i, boolean z) {
        int a2 = i < 0 ? this.a.a() : a(i);
        this.b.a(a2, z);
        if (z) {
            this.c.add(view);
        }
        this.a.a(view, a2);
    }

    public final boolean a(View view) {
        return this.c.contains(view);
    }

    public final int b() {
        return this.a.a();
    }

    public final View b(int i) {
        return this.a.b(a(i));
    }

    public final View c(int i) {
        return this.a.b(i);
    }

    public final String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }
}
