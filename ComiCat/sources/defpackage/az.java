package defpackage;

import android.view.View;
import android.view.ViewParent;

/* renamed from: az  reason: default package */
/* compiled from: NestedScrollingChildHelper */
public final class az {
    public boolean a;
    private final View b;
    private ViewParent c;
    private int[] d;

    public az(View view) {
        this.b = view;
    }

    public final void a(boolean z) {
        if (this.a) {
            bh.B(this.b);
        }
        this.a = z;
    }

    public final boolean a() {
        return this.c != null;
    }

    public final boolean a(float f, float f2) {
        if (!this.a || this.c == null) {
            return false;
        }
        return bn.a(this.c, this.b, f, f2);
    }

    public final boolean a(float f, float f2, boolean z) {
        if (!this.a || this.c == null) {
            return false;
        }
        return bn.a(this.c, this.b, f, f2, z);
    }

    public final boolean a(int i) {
        if (a()) {
            return true;
        }
        if (this.a) {
            View view = this.b;
            for (ViewParent parent = this.b.getParent(); parent != null; parent = parent.getParent()) {
                if (bn.a(parent, view, this.b, i)) {
                    this.c = parent;
                    bn.b(parent, view, this.b, i);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public final boolean a(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        if (!this.a || this.c == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr != null) {
                this.b.getLocationInWindow(iArr);
                int i7 = iArr[0];
                i5 = iArr[1];
                i6 = i7;
            } else {
                i5 = 0;
                i6 = 0;
            }
            bn.a(this.c, this.b, i, i2, i3, i4);
            if (iArr != null) {
                this.b.getLocationInWindow(iArr);
                iArr[0] = iArr[0] - i6;
                iArr[1] = iArr[1] - i5;
            }
            return true;
        } else if (iArr == null) {
            return false;
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
    }

    public final boolean a(int i, int i2, int[] iArr, int[] iArr2) {
        int i3;
        int i4;
        if (!this.a || this.c == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.b.getLocationInWindow(iArr2);
                i4 = iArr2[0];
                i3 = iArr2[1];
            } else {
                i3 = 0;
                i4 = 0;
            }
            if (iArr == null) {
                if (this.d == null) {
                    this.d = new int[2];
                }
                iArr = this.d;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            bn.a(this.c, this.b, i, i2, iArr);
            if (iArr2 != null) {
                this.b.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i4;
                iArr2[1] = iArr2[1] - i3;
            }
            return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
        } else if (iArr2 == null) {
            return false;
        } else {
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
    }

    public final void b() {
        if (this.c != null) {
            bn.a(this.c, this.b);
            this.c = null;
        }
    }
}
