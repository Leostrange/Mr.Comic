package defpackage;

import android.view.WindowInsets;

/* renamed from: bx  reason: default package */
/* compiled from: WindowInsetsCompatApi21 */
final class bx extends bw {
    final WindowInsets a;

    bx(WindowInsets windowInsets) {
        this.a = windowInsets;
    }

    public final int a() {
        return this.a.getSystemWindowInsetLeft();
    }

    public final bw a(int i, int i2, int i3, int i4) {
        return new bx(this.a.replaceSystemWindowInsets(i, i2, i3, i4));
    }

    public final int b() {
        return this.a.getSystemWindowInsetTop();
    }

    public final int c() {
        return this.a.getSystemWindowInsetRight();
    }

    public final int d() {
        return this.a.getSystemWindowInsetBottom();
    }

    public final boolean e() {
        return this.a.isConsumed();
    }

    public final bw f() {
        return new bx(this.a.consumeSystemWindowInsets());
    }
}
