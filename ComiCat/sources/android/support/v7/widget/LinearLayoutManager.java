package android.support.v7.widget;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager extends RecyclerView.h {
    private c a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    int j;
    fd k;
    boolean l;
    int m;
    int n;
    SavedState o;
    final a p;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int a;
        int b;
        boolean c;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            boolean z = true;
            this.a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt() != 1 ? false : z;
        }

        public SavedState(SavedState savedState) {
            this.a = savedState.a;
            this.b = savedState.b;
            this.c = savedState.c;
        }

        /* access modifiers changed from: package-private */
        public final boolean a() {
            return this.a >= 0;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c ? 1 : 0);
        }
    }

    class a {
        int a;
        int b;
        boolean c;
        final /* synthetic */ LinearLayoutManager d;

        /* access modifiers changed from: package-private */
        public final void a() {
            this.b = this.c ? this.d.k.c() : this.d.k.b();
        }

        public final void a(View view) {
            if (this.c) {
                this.b = this.d.k.b(view) + this.d.k.a();
            } else {
                this.b = this.d.k.a(view);
            }
            this.a = LinearLayoutManager.a(view);
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.a + ", mCoordinate=" + this.b + ", mLayoutFromEnd=" + this.c + '}';
        }
    }

    public static class b {
        public int a;
        public boolean b;
        public boolean c;
        public boolean d;

        protected b() {
        }
    }

    static class c {
        boolean a = true;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h = 0;
        boolean i = false;
        int j;
        List<RecyclerView.s> k = null;

        c() {
        }

        /* access modifiers changed from: package-private */
        public final View a(RecyclerView.l lVar) {
            if (this.k != null) {
                int size = this.k.size();
                int i2 = 0;
                while (i2 < size) {
                    RecyclerView.s sVar = this.k.get(i2);
                    if (sVar.m() || this.d != sVar.c()) {
                        i2++;
                    } else {
                        a(sVar);
                        return sVar.a;
                    }
                }
                return null;
            }
            View b2 = lVar.b(this.d);
            this.d += this.e;
            return b2;
        }

        public final void a(RecyclerView.s sVar) {
            RecyclerView.s sVar2;
            int i2;
            RecyclerView.s sVar3;
            int c2;
            int size = this.k.size();
            RecyclerView.s sVar4 = null;
            int i3 = Integer.MAX_VALUE;
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    sVar2 = sVar4;
                    break;
                }
                sVar2 = this.k.get(i4);
                if (sVar2 != sVar && !sVar2.m() && (c2 = (sVar2.c() - this.d) * this.e) >= 0 && c2 < i3) {
                    if (c2 == 0) {
                        break;
                    }
                    int i5 = c2;
                    sVar3 = sVar2;
                    i2 = i5;
                } else {
                    i2 = i3;
                    sVar3 = sVar4;
                }
                i4++;
                sVar4 = sVar3;
                i3 = i2;
            }
            this.d = sVar2 == null ? -1 : sVar2.c();
        }

        /* access modifiers changed from: package-private */
        public final boolean a(RecyclerView.p pVar) {
            return this.d >= 0 && this.d < pVar.a();
        }
    }

    private int a(int i, RecyclerView.l lVar, RecyclerView.p pVar, boolean z) {
        int c2;
        int c3 = this.k.c() - i;
        if (c3 <= 0) {
            return 0;
        }
        int i2 = -d(-c3, lVar, pVar);
        int i3 = i + i2;
        if (!z || (c2 = this.k.c() - i3) <= 0) {
            return i2;
        }
        this.k.a(c2);
        return i2 + c2;
    }

    private int a(RecyclerView.l lVar, c cVar, RecyclerView.p pVar, boolean z) {
        int i = cVar.c;
        if (cVar.g != Integer.MIN_VALUE) {
            if (cVar.c < 0) {
                cVar.g += cVar.c;
            }
            a(lVar, cVar);
        }
        int i2 = cVar.c + cVar.h;
        b bVar = new b();
        while (i2 > 0 && cVar.a(pVar)) {
            bVar.a = 0;
            bVar.b = false;
            bVar.c = false;
            bVar.d = false;
            a(lVar, pVar, cVar, bVar);
            if (bVar.b) {
                break;
            }
            cVar.b += bVar.a * cVar.f;
            if (!bVar.c || this.a.k != null || !pVar.j) {
                cVar.c -= bVar.a;
                i2 -= bVar.a;
            }
            if (cVar.g != Integer.MIN_VALUE) {
                cVar.g += bVar.a;
                if (cVar.c < 0) {
                    cVar.g += cVar.c;
                }
                a(lVar, cVar);
            }
            if (z && bVar.d) {
                break;
            }
        }
        return i - cVar.c;
    }

    private View a(int i, int i2, boolean z) {
        h();
        int b2 = this.k.b();
        int c2 = this.k.c();
        int i3 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View c3 = c(i);
            int a2 = this.k.a(c3);
            int b3 = this.k.b(c3);
            if (a2 < c2 && b3 > b2) {
                if (!z) {
                    return c3;
                }
                if (a2 >= b2 && b3 <= c2) {
                    return c3;
                }
                if (view == null) {
                    i += i3;
                    view = c3;
                }
            }
            c3 = view;
            i += i3;
            view = c3;
        }
        return view;
    }

    private View a(boolean z) {
        return this.l ? a(k() - 1, -1, z) : a(0, k(), z);
    }

    private void a(int i, int i2, boolean z, RecyclerView.p pVar) {
        int b2;
        int i3 = -1;
        int i4 = 1;
        this.a.h = g(pVar);
        this.a.f = i;
        if (i == 1) {
            this.a.h += this.k.f();
            View u = u();
            c cVar = this.a;
            if (!this.l) {
                i3 = 1;
            }
            cVar.e = i3;
            this.a.d = a(u) + this.a.e;
            this.a.b = this.k.b(u);
            b2 = this.k.b(u) - this.k.c();
        } else {
            View t = t();
            this.a.h += this.k.b();
            c cVar2 = this.a;
            if (!this.l) {
                i4 = -1;
            }
            cVar2.e = i4;
            this.a.d = a(t) + this.a.e;
            this.a.b = this.k.a(t);
            b2 = (-this.k.a(t)) + this.k.b();
        }
        this.a.c = i2;
        if (z) {
            this.a.c -= b2;
        }
        this.a.g = b2;
    }

    private void a(a aVar) {
        e(aVar.a, aVar.b);
    }

    private void a(RecyclerView.l lVar, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    a(i3, lVar);
                }
                return;
            }
            while (i > i2) {
                a(i, lVar);
                i--;
            }
        }
    }

    private void a(RecyclerView.l lVar, c cVar) {
        if (cVar.a) {
            if (cVar.f == -1) {
                int i = cVar.g;
                int k2 = k();
                if (i >= 0) {
                    int d2 = this.k.d() - i;
                    if (this.l) {
                        for (int i2 = 0; i2 < k2; i2++) {
                            if (this.k.a(c(i2)) < d2) {
                                a(lVar, 0, i2);
                                return;
                            }
                        }
                        return;
                    }
                    for (int i3 = k2 - 1; i3 >= 0; i3--) {
                        if (this.k.a(c(i3)) < d2) {
                            a(lVar, k2 - 1, i3);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            int i4 = cVar.g;
            if (i4 >= 0) {
                int k3 = k();
                if (this.l) {
                    for (int i5 = k3 - 1; i5 >= 0; i5--) {
                        if (this.k.b(c(i5)) > i4) {
                            a(lVar, k3 - 1, i5);
                            return;
                        }
                    }
                    return;
                }
                for (int i6 = 0; i6 < k3; i6++) {
                    if (this.k.b(c(i6)) > i4) {
                        a(lVar, 0, i6);
                        return;
                    }
                }
            }
        }
    }

    private int b(int i, RecyclerView.l lVar, RecyclerView.p pVar, boolean z) {
        int b2;
        int b3 = i - this.k.b();
        if (b3 <= 0) {
            return 0;
        }
        int i2 = -d(b3, lVar, pVar);
        int i3 = i + i2;
        if (!z || (b2 = i3 - this.k.b()) <= 0) {
            return i2;
        }
        this.k.a(-b2);
        return i2 - b2;
    }

    private View b(boolean z) {
        return this.l ? a(0, k(), z) : a(k() - 1, -1, z);
    }

    private void b(a aVar) {
        f(aVar.a, aVar.b);
    }

    private int d(int i, RecyclerView.l lVar, RecyclerView.p pVar) {
        if (k() == 0 || i == 0) {
            return 0;
        }
        this.a.a = true;
        h();
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        a(i2, abs, true, pVar);
        int a2 = this.a.g + a(lVar, this.a, pVar, false);
        if (a2 < 0) {
            return 0;
        }
        if (abs > a2) {
            i = i2 * a2;
        }
        this.k.a(-i);
        this.a.j = i;
        return i;
    }

    private View d(RecyclerView.l lVar, RecyclerView.p pVar) {
        return this.l ? f(lVar, pVar) : g(lVar, pVar);
    }

    private View e(RecyclerView.l lVar, RecyclerView.p pVar) {
        return this.l ? g(lVar, pVar) : f(lVar, pVar);
    }

    private void e(int i, int i2) {
        this.a.c = this.k.c() - i2;
        this.a.e = this.l ? -1 : 1;
        this.a.d = i;
        this.a.f = 1;
        this.a.b = i2;
        this.a.g = Integer.MIN_VALUE;
    }

    private View f(RecyclerView.l lVar, RecyclerView.p pVar) {
        return a(lVar, pVar, 0, k(), pVar.a());
    }

    private void f(int i, int i2) {
        this.a.c = i2 - this.k.b();
        this.a.d = i;
        this.a.e = this.l ? 1 : -1;
        this.a.f = -1;
        this.a.b = i2;
        this.a.g = Integer.MIN_VALUE;
    }

    private int g(RecyclerView.p pVar) {
        if (pVar.a != -1) {
            return this.k.e();
        }
        return 0;
    }

    private View g(RecyclerView.l lVar, RecyclerView.p pVar) {
        return a(lVar, pVar, k() - 1, -1, pVar.a());
    }

    private int h(RecyclerView.p pVar) {
        boolean z = true;
        if (k() == 0) {
            return 0;
        }
        h();
        fd fdVar = this.k;
        View a2 = a(!this.e);
        if (this.e) {
            z = false;
        }
        return ff.a(pVar, fdVar, a2, b(z), this, this.e, this.l);
    }

    private int i(RecyclerView.p pVar) {
        boolean z = true;
        if (k() == 0) {
            return 0;
        }
        h();
        fd fdVar = this.k;
        View a2 = a(!this.e);
        if (this.e) {
            z = false;
        }
        return ff.a(pVar, fdVar, a2, b(z), this, this.e);
    }

    private int j(RecyclerView.p pVar) {
        boolean z = true;
        if (k() == 0) {
            return 0;
        }
        h();
        fd fdVar = this.k;
        View a2 = a(!this.e);
        if (this.e) {
            z = false;
        }
        return ff.b(pVar, fdVar, a2, b(z), this, this.e);
    }

    private void s() {
        boolean z = true;
        if (this.j == 1 || !g()) {
            z = this.c;
        } else if (this.c) {
            z = false;
        }
        this.l = z;
    }

    private View t() {
        return c(this.l ? k() - 1 : 0);
    }

    private View u() {
        return c(this.l ? 0 : k() - 1);
    }

    public final int a(int i, RecyclerView.l lVar, RecyclerView.p pVar) {
        if (this.j == 1) {
            return 0;
        }
        return d(i, lVar, pVar);
    }

    public final int a(RecyclerView.p pVar) {
        return h(pVar);
    }

    public final View a(int i) {
        int k2 = k();
        if (k2 == 0) {
            return null;
        }
        int a2 = i - a(c(0));
        if (a2 >= 0 && a2 < k2) {
            View c2 = c(a2);
            if (a(c2) == i) {
                return c2;
            }
        }
        return super.a(i);
    }

    /* access modifiers changed from: package-private */
    public View a(RecyclerView.l lVar, RecyclerView.p pVar, int i, int i2, int i3) {
        View view;
        View view2 = null;
        h();
        int b2 = this.k.b();
        int c2 = this.k.c();
        int i4 = i2 > i ? 1 : -1;
        View view3 = null;
        while (i != i2) {
            View c3 = c(i);
            int a2 = a(c3);
            if (a2 >= 0 && a2 < i3) {
                if (((RecyclerView.LayoutParams) c3.getLayoutParams()).c.m()) {
                    if (view3 == null) {
                        view = view2;
                        i += i4;
                        view2 = view;
                        view3 = c3;
                    }
                } else if (this.k.a(c3) < c2 && this.k.b(c3) >= b2) {
                    return c3;
                } else {
                    if (view2 == null) {
                        view = c3;
                        c3 = view3;
                        i += i4;
                        view2 = view;
                        view3 = c3;
                    }
                }
            }
            view = view2;
            c3 = view3;
            i += i4;
            view2 = view;
            view3 = c3;
        }
        return view2 != null ? view2 : view3;
    }

    public final void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.o = (SavedState) parcelable;
            i();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.l lVar, RecyclerView.p pVar, a aVar) {
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.l lVar, RecyclerView.p pVar, c cVar, b bVar) {
        int o2;
        int d2;
        int i;
        int i2;
        int n2;
        int d3;
        View a2 = cVar.a(lVar);
        if (a2 == null) {
            bVar.b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) a2.getLayoutParams();
        if (cVar.k == null) {
            if (this.l == (cVar.f == -1)) {
                super.a(a2, -1, false);
            } else {
                super.a(a2, 0, false);
            }
        } else {
            if (this.l == (cVar.f == -1)) {
                super.a(a2, -1, true);
            } else {
                super.a(a2, 0, true);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) a2.getLayoutParams();
        Rect d4 = this.r.d(a2);
        a2.measure(RecyclerView.h.a(l(), d4.left + d4.right + 0 + n() + p() + layoutParams2.leftMargin + layoutParams2.rightMargin, layoutParams2.width, e()), RecyclerView.h.a(m(), d4.bottom + d4.top + 0 + o() + q() + layoutParams2.topMargin + layoutParams2.bottomMargin, layoutParams2.height, f()));
        bVar.a = this.k.c(a2);
        if (this.j == 1) {
            if (g()) {
                d3 = l() - p();
                n2 = d3 - this.k.d(a2);
            } else {
                n2 = n();
                d3 = this.k.d(a2) + n2;
            }
            if (cVar.f == -1) {
                int i3 = cVar.b;
                o2 = cVar.b - bVar.a;
                i = n2;
                i2 = d3;
                d2 = i3;
            } else {
                o2 = cVar.b;
                i = n2;
                i2 = d3;
                d2 = cVar.b + bVar.a;
            }
        } else {
            o2 = o();
            d2 = this.k.d(a2) + o2;
            if (cVar.f == -1) {
                i2 = cVar.b;
                i = cVar.b - bVar.a;
            } else {
                i = cVar.b;
                i2 = cVar.b + bVar.a;
            }
        }
        a(a2, i + layoutParams.leftMargin, o2 + layoutParams.topMargin, i2 - layoutParams.rightMargin, d2 - layoutParams.bottomMargin);
        if (layoutParams.c.m() || layoutParams.c.k()) {
            bVar.c = true;
        }
        bVar.d = a2.isFocusable();
    }

    public final void a(RecyclerView recyclerView, RecyclerView.l lVar) {
        super.a(recyclerView, lVar);
        if (this.f) {
            c(lVar);
            lVar.a();
        }
    }

    public final void a(AccessibilityEvent accessibilityEvent) {
        int i = -1;
        super.a(accessibilityEvent);
        if (k() > 0) {
            cd a2 = by.a(accessibilityEvent);
            View a3 = a(0, k(), false);
            a2.b(a3 == null ? -1 : a(a3));
            View a4 = a(k() - 1, -1, false);
            if (a4 != null) {
                i = a(a4);
            }
            a2.c(i);
        }
    }

    public final void a(String str) {
        if (this.o == null) {
            super.a(str);
        }
    }

    public final int b(int i, RecyclerView.l lVar, RecyclerView.p pVar) {
        if (this.j == 0) {
            return 0;
        }
        return d(i, lVar, pVar);
    }

    public final int b(RecyclerView.p pVar) {
        return h(pVar);
    }

    public RecyclerView.LayoutParams b() {
        return new RecyclerView.LayoutParams();
    }

    public final void b(int i) {
        this.m = i;
        this.n = Integer.MIN_VALUE;
        if (this.o != null) {
            this.o.a = -1;
        }
        i();
    }

    public final int c(RecyclerView.p pVar) {
        return i(pVar);
    }

    public final View c(int i, RecyclerView.l lVar, RecyclerView.p pVar) {
        int i2;
        s();
        if (k() == 0) {
            return null;
        }
        switch (i) {
            case 1:
                i2 = -1;
                break;
            case 2:
                i2 = 1;
                break;
            case 17:
                if (this.j != 0) {
                    i2 = Integer.MIN_VALUE;
                    break;
                } else {
                    i2 = -1;
                    break;
                }
            case 33:
                if (this.j != 1) {
                    i2 = Integer.MIN_VALUE;
                    break;
                } else {
                    i2 = -1;
                    break;
                }
            case 66:
                if (this.j != 0) {
                    i2 = Integer.MIN_VALUE;
                    break;
                } else {
                    i2 = 1;
                    break;
                }
            case 130:
                if (this.j != 1) {
                    i2 = Integer.MIN_VALUE;
                    break;
                } else {
                    i2 = 1;
                    break;
                }
            default:
                i2 = Integer.MIN_VALUE;
                break;
        }
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        h();
        View e2 = i2 == -1 ? e(lVar, pVar) : d(lVar, pVar);
        if (e2 == null) {
            return null;
        }
        h();
        a(i2, (int) (0.33f * ((float) this.k.e())), false, pVar);
        this.a.g = Integer.MIN_VALUE;
        this.a.a = false;
        a(lVar, this.a, pVar, true);
        View t = i2 == -1 ? t() : u();
        if (t == e2 || !t.isFocusable()) {
            return null;
        }
        return t;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0083  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(android.support.v7.widget.RecyclerView.l r13, android.support.v7.widget.RecyclerView.p r14) {
        /*
            r12 = this;
            android.support.v7.widget.LinearLayoutManager$SavedState r0 = r12.o
            if (r0 == 0) goto L_0x0012
            android.support.v7.widget.LinearLayoutManager$SavedState r0 = r12.o
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x0012
            android.support.v7.widget.LinearLayoutManager$SavedState r0 = r12.o
            int r0 = r0.a
            r12.m = r0
        L_0x0012:
            r12.h()
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r1 = 0
            r0.a = r1
            r12.s()
            android.support.v7.widget.LinearLayoutManager$a r0 = r12.p
            r1 = -1
            r0.a = r1
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0.b = r1
            r1 = 0
            r0.c = r1
            android.support.v7.widget.LinearLayoutManager$a r0 = r12.p
            boolean r1 = r12.l
            boolean r2 = r12.d
            r1 = r1 ^ r2
            r0.c = r1
            android.support.v7.widget.LinearLayoutManager$a r2 = r12.p
            boolean r0 = r14.j
            if (r0 != 0) goto L_0x003d
            int r0 = r12.m
            r1 = -1
            if (r0 != r1) goto L_0x0197
        L_0x003d:
            r0 = 0
        L_0x003e:
            if (r0 != 0) goto L_0x0092
            int r0 = r12.k()
            if (r0 == 0) goto L_0x03c0
            android.support.v7.widget.RecyclerView r0 = r12.r
            if (r0 != 0) goto L_0x029f
            r0 = 0
            r1 = r0
        L_0x004c:
            if (r1 == 0) goto L_0x0367
            android.view.ViewGroup$LayoutParams r0 = r1.getLayoutParams()
            android.support.v7.widget.RecyclerView$LayoutParams r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0
            android.support.v7.widget.RecyclerView$s r3 = r0.c
            boolean r3 = r3.m()
            if (r3 != 0) goto L_0x02b6
            android.support.v7.widget.RecyclerView$s r3 = r0.c
            int r3 = r3.c()
            if (r3 < 0) goto L_0x02b6
            android.support.v7.widget.RecyclerView$s r0 = r0.c
            int r0 = r0.c()
            int r3 = r14.a()
            if (r0 >= r3) goto L_0x02b6
            r0 = 1
        L_0x0071:
            if (r0 == 0) goto L_0x0367
            android.support.v7.widget.LinearLayoutManager r0 = r2.d
            fd r0 = r0.k
            int r0 = r0.a()
            if (r0 < 0) goto L_0x02b9
            r2.a(r1)
        L_0x0080:
            r0 = 1
        L_0x0081:
            if (r0 != 0) goto L_0x0092
            r2.a()
            boolean r0 = r12.d
            if (r0 == 0) goto L_0x03c3
            int r0 = r14.a()
            int r0 = r0 + -1
        L_0x0090:
            r2.a = r0
        L_0x0092:
            int r0 = r12.g(r14)
            android.support.v7.widget.LinearLayoutManager$c r1 = r12.a
            int r1 = r1.j
            if (r1 < 0) goto L_0x03c6
            r1 = 0
        L_0x009d:
            fd r2 = r12.k
            int r2 = r2.b()
            int r1 = r1 + r2
            fd r2 = r12.k
            int r2 = r2.f()
            int r0 = r0 + r2
            boolean r2 = r14.j
            if (r2 == 0) goto L_0x00da
            int r2 = r12.m
            r3 = -1
            if (r2 == r3) goto L_0x00da
            int r2 = r12.n
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r2 == r3) goto L_0x00da
            int r2 = r12.m
            android.view.View r2 = r12.a((int) r2)
            if (r2 == 0) goto L_0x00da
            boolean r3 = r12.l
            if (r3 == 0) goto L_0x03cc
            fd r3 = r12.k
            int r3 = r3.c()
            fd r4 = r12.k
            int r2 = r4.b(r2)
            int r2 = r3 - r2
            int r3 = r12.n
            int r2 = r2 - r3
        L_0x00d7:
            if (r2 <= 0) goto L_0x03df
            int r1 = r1 + r2
        L_0x00da:
            android.support.v7.widget.LinearLayoutManager$a r2 = r12.p
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.RecyclerView.p) r14, (android.support.v7.widget.LinearLayoutManager.a) r2)
            r12.a((android.support.v7.widget.RecyclerView.l) r13)
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            boolean r3 = r14.j
            r2.i = r3
            android.support.v7.widget.LinearLayoutManager$a r2 = r12.p
            boolean r2 = r2.c
            if (r2 == 0) goto L_0x03e2
            android.support.v7.widget.LinearLayoutManager$a r2 = r12.p
            r12.b((android.support.v7.widget.LinearLayoutManager.a) r2)
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            r2.h = r1
            android.support.v7.widget.LinearLayoutManager$c r1 = r12.a
            r2 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r1, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r2)
            android.support.v7.widget.LinearLayoutManager$c r1 = r12.a
            int r1 = r1.b
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            int r3 = r2.d
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            int r2 = r2.c
            if (r2 <= 0) goto L_0x0110
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            int r2 = r2.c
            int r0 = r0 + r2
        L_0x0110:
            android.support.v7.widget.LinearLayoutManager$a r2 = r12.p
            r12.a((android.support.v7.widget.LinearLayoutManager.a) r2)
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            r2.h = r0
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            int r2 = r0.d
            android.support.v7.widget.LinearLayoutManager$c r4 = r12.a
            int r4 = r4.e
            int r2 = r2 + r4
            r0.d = r2
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r2 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r0, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r2)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            int r2 = r0.b
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            int r0 = r0.c
            if (r0 <= 0) goto L_0x04f7
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            int r0 = r0.c
            r12.f((int) r3, (int) r1)
            android.support.v7.widget.LinearLayoutManager$c r1 = r12.a
            r1.h = r0
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r1 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r0, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r1)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            int r0 = r0.b
        L_0x0149:
            r1 = r0
            r0 = r2
        L_0x014b:
            int r2 = r12.k()
            if (r2 <= 0) goto L_0x04f3
            boolean r2 = r12.l
            boolean r3 = r12.d
            r2 = r2 ^ r3
            if (r2 == 0) goto L_0x043f
            r2 = 1
            int r2 = r12.a((int) r0, (android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r2)
            int r1 = r1 + r2
            int r0 = r0 + r2
            r2 = 0
            int r2 = r12.b(r1, r13, r14, r2)
            int r1 = r1 + r2
            int r0 = r0 + r2
            r2 = r1
            r1 = r0
        L_0x0168:
            boolean r0 = r14.l
            if (r0 == 0) goto L_0x017c
            int r0 = r12.k()
            if (r0 == 0) goto L_0x017c
            boolean r0 = r14.j
            if (r0 != 0) goto L_0x017c
            boolean r0 = r12.c()
            if (r0 != 0) goto L_0x0451
        L_0x017c:
            boolean r0 = r14.j
            if (r0 != 0) goto L_0x018f
            r0 = -1
            r12.m = r0
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r12.n = r0
            fd r0 = r12.k
            int r1 = r0.e()
            r0.b = r1
        L_0x018f:
            boolean r0 = r12.d
            r12.b = r0
            r0 = 0
            r12.o = r0
            return
        L_0x0197:
            int r0 = r12.m
            if (r0 < 0) goto L_0x01a3
            int r0 = r12.m
            int r1 = r14.a()
            if (r0 < r1) goto L_0x01ad
        L_0x01a3:
            r0 = -1
            r12.m = r0
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r12.n = r0
            r0 = 0
            goto L_0x003e
        L_0x01ad:
            int r0 = r12.m
            r2.a = r0
            android.support.v7.widget.LinearLayoutManager$SavedState r0 = r12.o
            if (r0 == 0) goto L_0x01e5
            android.support.v7.widget.LinearLayoutManager$SavedState r0 = r12.o
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x01e5
            android.support.v7.widget.LinearLayoutManager$SavedState r0 = r12.o
            boolean r0 = r0.c
            r2.c = r0
            boolean r0 = r2.c
            if (r0 == 0) goto L_0x01d7
            fd r0 = r12.k
            int r0 = r0.c()
            android.support.v7.widget.LinearLayoutManager$SavedState r1 = r12.o
            int r1 = r1.b
            int r0 = r0 - r1
            r2.b = r0
        L_0x01d4:
            r0 = 1
            goto L_0x003e
        L_0x01d7:
            fd r0 = r12.k
            int r0 = r0.b()
            android.support.v7.widget.LinearLayoutManager$SavedState r1 = r12.o
            int r1 = r1.b
            int r0 = r0 + r1
            r2.b = r0
            goto L_0x01d4
        L_0x01e5:
            int r0 = r12.n
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r1) goto L_0x027d
            int r0 = r12.m
            android.view.View r0 = r12.a((int) r0)
            if (r0 == 0) goto L_0x025a
            fd r1 = r12.k
            int r1 = r1.c(r0)
            fd r3 = r12.k
            int r3 = r3.e()
            if (r1 <= r3) goto L_0x0207
            r2.a()
        L_0x0204:
            r0 = 1
            goto L_0x003e
        L_0x0207:
            fd r1 = r12.k
            int r1 = r1.a((android.view.View) r0)
            fd r3 = r12.k
            int r3 = r3.b()
            int r1 = r1 - r3
            if (r1 >= 0) goto L_0x0222
            fd r0 = r12.k
            int r0 = r0.b()
            r2.b = r0
            r0 = 0
            r2.c = r0
            goto L_0x0204
        L_0x0222:
            fd r1 = r12.k
            int r1 = r1.c()
            fd r3 = r12.k
            int r3 = r3.b(r0)
            int r1 = r1 - r3
            if (r1 >= 0) goto L_0x023d
            fd r0 = r12.k
            int r0 = r0.c()
            r2.b = r0
            r0 = 1
            r2.c = r0
            goto L_0x0204
        L_0x023d:
            boolean r1 = r2.c
            if (r1 == 0) goto L_0x0253
            fd r1 = r12.k
            int r0 = r1.b(r0)
            fd r1 = r12.k
            int r1 = r1.a()
            int r0 = r0 + r1
        L_0x024e:
            r2.b = r0
        L_0x0250:
            r0 = 1
            goto L_0x003e
        L_0x0253:
            fd r1 = r12.k
            int r0 = r1.a((android.view.View) r0)
            goto L_0x024e
        L_0x025a:
            int r0 = r12.k()
            if (r0 <= 0) goto L_0x0275
            r0 = 0
            android.view.View r0 = r12.c((int) r0)
            int r0 = a((android.view.View) r0)
            int r1 = r12.m
            if (r1 >= r0) goto L_0x0279
            r0 = 1
        L_0x026e:
            boolean r1 = r12.l
            if (r0 != r1) goto L_0x027b
            r0 = 1
        L_0x0273:
            r2.c = r0
        L_0x0275:
            r2.a()
            goto L_0x0250
        L_0x0279:
            r0 = 0
            goto L_0x026e
        L_0x027b:
            r0 = 0
            goto L_0x0273
        L_0x027d:
            boolean r0 = r12.l
            r2.c = r0
            boolean r0 = r12.l
            if (r0 == 0) goto L_0x0292
            fd r0 = r12.k
            int r0 = r0.c()
            int r1 = r12.n
            int r0 = r0 - r1
            r2.b = r0
            goto L_0x0204
        L_0x0292:
            fd r0 = r12.k
            int r0 = r0.b()
            int r1 = r12.n
            int r0 = r0 + r1
            r2.b = r0
            goto L_0x0204
        L_0x029f:
            android.support.v7.widget.RecyclerView r0 = r12.r
            android.view.View r0 = r0.getFocusedChild()
            if (r0 == 0) goto L_0x02af
            ez r1 = r12.q
            boolean r1 = r1.a((android.view.View) r0)
            if (r1 == 0) goto L_0x02b3
        L_0x02af:
            r0 = 0
            r1 = r0
            goto L_0x004c
        L_0x02b3:
            r1 = r0
            goto L_0x004c
        L_0x02b6:
            r0 = 0
            goto L_0x0071
        L_0x02b9:
            int r3 = a((android.view.View) r1)
            r2.a = r3
            boolean r3 = r2.c
            if (r3 == 0) goto L_0x0316
            android.support.v7.widget.LinearLayoutManager r3 = r2.d
            fd r3 = r3.k
            int r3 = r3.c()
            int r0 = r3 - r0
            android.support.v7.widget.LinearLayoutManager r3 = r2.d
            fd r3 = r3.k
            int r3 = r3.b(r1)
            int r0 = r0 - r3
            android.support.v7.widget.LinearLayoutManager r3 = r2.d
            fd r3 = r3.k
            int r3 = r3.c()
            int r3 = r3 - r0
            r2.b = r3
            if (r0 <= 0) goto L_0x0080
            android.support.v7.widget.LinearLayoutManager r3 = r2.d
            fd r3 = r3.k
            int r3 = r3.c(r1)
            int r4 = r2.b
            int r3 = r4 - r3
            android.support.v7.widget.LinearLayoutManager r4 = r2.d
            fd r4 = r4.k
            int r4 = r4.b()
            android.support.v7.widget.LinearLayoutManager r5 = r2.d
            fd r5 = r5.k
            int r1 = r5.a((android.view.View) r1)
            int r1 = r1 - r4
            r5 = 0
            int r1 = java.lang.Math.min(r1, r5)
            int r1 = r1 + r4
            int r1 = r3 - r1
            if (r1 >= 0) goto L_0x0080
            int r3 = r2.b
            int r1 = -r1
            int r0 = java.lang.Math.min(r0, r1)
            int r0 = r0 + r3
            r2.b = r0
            goto L_0x0080
        L_0x0316:
            android.support.v7.widget.LinearLayoutManager r3 = r2.d
            fd r3 = r3.k
            int r3 = r3.a((android.view.View) r1)
            android.support.v7.widget.LinearLayoutManager r4 = r2.d
            fd r4 = r4.k
            int r4 = r4.b()
            int r4 = r3 - r4
            r2.b = r3
            if (r4 <= 0) goto L_0x0080
            android.support.v7.widget.LinearLayoutManager r5 = r2.d
            fd r5 = r5.k
            int r5 = r5.c(r1)
            int r3 = r3 + r5
            android.support.v7.widget.LinearLayoutManager r5 = r2.d
            fd r5 = r5.k
            int r5 = r5.c()
            int r0 = r5 - r0
            android.support.v7.widget.LinearLayoutManager r5 = r2.d
            fd r5 = r5.k
            int r1 = r5.b(r1)
            int r0 = r0 - r1
            android.support.v7.widget.LinearLayoutManager r1 = r2.d
            fd r1 = r1.k
            int r1 = r1.c()
            r5 = 0
            int r0 = java.lang.Math.min(r5, r0)
            int r0 = r1 - r0
            int r0 = r0 - r3
            if (r0 >= 0) goto L_0x0080
            int r1 = r2.b
            int r0 = -r0
            int r0 = java.lang.Math.min(r4, r0)
            int r0 = r1 - r0
            r2.b = r0
            goto L_0x0080
        L_0x0367:
            boolean r0 = r12.b
            boolean r1 = r12.d
            if (r0 != r1) goto L_0x03c0
            boolean r0 = r2.c
            if (r0 == 0) goto L_0x03b2
            android.view.View r0 = r12.d(r13, r14)
        L_0x0375:
            if (r0 == 0) goto L_0x03c0
            r2.a(r0)
            boolean r1 = r14.j
            if (r1 != 0) goto L_0x03af
            boolean r1 = r12.c()
            if (r1 == 0) goto L_0x03af
            fd r1 = r12.k
            int r1 = r1.a((android.view.View) r0)
            fd r3 = r12.k
            int r3 = r3.c()
            if (r1 >= r3) goto L_0x03a0
            fd r1 = r12.k
            int r0 = r1.b(r0)
            fd r1 = r12.k
            int r1 = r1.b()
            if (r0 >= r1) goto L_0x03b7
        L_0x03a0:
            r0 = 1
        L_0x03a1:
            if (r0 == 0) goto L_0x03af
            boolean r0 = r2.c
            if (r0 == 0) goto L_0x03b9
            fd r0 = r12.k
            int r0 = r0.c()
        L_0x03ad:
            r2.b = r0
        L_0x03af:
            r0 = 1
            goto L_0x0081
        L_0x03b2:
            android.view.View r0 = r12.e((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.RecyclerView.p) r14)
            goto L_0x0375
        L_0x03b7:
            r0 = 0
            goto L_0x03a1
        L_0x03b9:
            fd r0 = r12.k
            int r0 = r0.b()
            goto L_0x03ad
        L_0x03c0:
            r0 = 0
            goto L_0x0081
        L_0x03c3:
            r0 = 0
            goto L_0x0090
        L_0x03c6:
            r1 = 0
            r11 = r1
            r1 = r0
            r0 = r11
            goto L_0x009d
        L_0x03cc:
            fd r3 = r12.k
            int r2 = r3.a((android.view.View) r2)
            fd r3 = r12.k
            int r3 = r3.b()
            int r2 = r2 - r3
            int r3 = r12.n
            int r2 = r3 - r2
            goto L_0x00d7
        L_0x03df:
            int r0 = r0 - r2
            goto L_0x00da
        L_0x03e2:
            android.support.v7.widget.LinearLayoutManager$a r2 = r12.p
            r12.a((android.support.v7.widget.LinearLayoutManager.a) r2)
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            r2.h = r0
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r2 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r0, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r2)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            int r0 = r0.b
            android.support.v7.widget.LinearLayoutManager$c r2 = r12.a
            int r2 = r2.d
            android.support.v7.widget.LinearLayoutManager$c r3 = r12.a
            int r3 = r3.c
            if (r3 <= 0) goto L_0x0404
            android.support.v7.widget.LinearLayoutManager$c r3 = r12.a
            int r3 = r3.c
            int r1 = r1 + r3
        L_0x0404:
            android.support.v7.widget.LinearLayoutManager$a r3 = r12.p
            r12.b((android.support.v7.widget.LinearLayoutManager.a) r3)
            android.support.v7.widget.LinearLayoutManager$c r3 = r12.a
            r3.h = r1
            android.support.v7.widget.LinearLayoutManager$c r1 = r12.a
            int r3 = r1.d
            android.support.v7.widget.LinearLayoutManager$c r4 = r12.a
            int r4 = r4.e
            int r3 = r3 + r4
            r1.d = r3
            android.support.v7.widget.LinearLayoutManager$c r1 = r12.a
            r3 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r1, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r3)
            android.support.v7.widget.LinearLayoutManager$c r1 = r12.a
            int r1 = r1.b
            android.support.v7.widget.LinearLayoutManager$c r3 = r12.a
            int r3 = r3.c
            if (r3 <= 0) goto L_0x014b
            android.support.v7.widget.LinearLayoutManager$c r3 = r12.a
            int r3 = r3.c
            r12.e((int) r2, (int) r0)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r0.h = r3
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r2 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r0, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r2)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            int r0 = r0.b
            goto L_0x014b
        L_0x043f:
            r2 = 1
            int r2 = r12.b(r1, r13, r14, r2)
            int r1 = r1 + r2
            int r0 = r0 + r2
            r2 = 0
            int r2 = r12.a((int) r0, (android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r2)
            int r1 = r1 + r2
            int r0 = r0 + r2
            r2 = r1
            r1 = r0
            goto L_0x0168
        L_0x0451:
            r5 = 0
            r4 = 0
            java.util.List<android.support.v7.widget.RecyclerView$s> r7 = r13.d
            int r8 = r7.size()
            r0 = 0
            android.view.View r0 = r12.c((int) r0)
            int r9 = a((android.view.View) r0)
            r0 = 0
            r6 = r0
        L_0x0464:
            if (r6 >= r8) goto L_0x04a1
            java.lang.Object r0 = r7.get(r6)
            android.support.v7.widget.RecyclerView$s r0 = (android.support.v7.widget.RecyclerView.s) r0
            boolean r3 = r0.m()
            if (r3 != 0) goto L_0x04f0
            int r3 = r0.c()
            if (r3 >= r9) goto L_0x0492
            r3 = 1
        L_0x0479:
            boolean r10 = r12.l
            if (r3 == r10) goto L_0x0494
            r3 = -1
        L_0x047e:
            r10 = -1
            if (r3 != r10) goto L_0x0496
            fd r3 = r12.k
            android.view.View r0 = r0.a
            int r0 = r3.c(r0)
            int r0 = r0 + r5
            r3 = r0
            r0 = r4
        L_0x048c:
            int r4 = r6 + 1
            r5 = r3
            r6 = r4
            r4 = r0
            goto L_0x0464
        L_0x0492:
            r3 = 0
            goto L_0x0479
        L_0x0494:
            r3 = 1
            goto L_0x047e
        L_0x0496:
            fd r3 = r12.k
            android.view.View r0 = r0.a
            int r0 = r3.c(r0)
            int r0 = r0 + r4
            r3 = r5
            goto L_0x048c
        L_0x04a1:
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r0.k = r7
            if (r5 <= 0) goto L_0x04c7
            android.view.View r0 = r12.t()
            int r0 = a((android.view.View) r0)
            r12.f((int) r0, (int) r2)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r0.h = r5
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r2 = 0
            r0.c = r2
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r2 = 0
            r0.a((android.support.v7.widget.RecyclerView.s) r2)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r2 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r0, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r2)
        L_0x04c7:
            if (r4 <= 0) goto L_0x04e9
            android.view.View r0 = r12.u()
            int r0 = a((android.view.View) r0)
            r12.e((int) r0, (int) r1)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r0.h = r4
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r1 = 0
            r0.c = r1
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r1 = 0
            r0.a((android.support.v7.widget.RecyclerView.s) r1)
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r1 = 0
            r12.a((android.support.v7.widget.RecyclerView.l) r13, (android.support.v7.widget.LinearLayoutManager.c) r0, (android.support.v7.widget.RecyclerView.p) r14, (boolean) r1)
        L_0x04e9:
            android.support.v7.widget.LinearLayoutManager$c r0 = r12.a
            r1 = 0
            r0.k = r1
            goto L_0x017c
        L_0x04f0:
            r0 = r4
            r3 = r5
            goto L_0x048c
        L_0x04f3:
            r2 = r1
            r1 = r0
            goto L_0x0168
        L_0x04f7:
            r0 = r1
            goto L_0x0149
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.LinearLayoutManager.c(android.support.v7.widget.RecyclerView$l, android.support.v7.widget.RecyclerView$p):void");
    }

    public boolean c() {
        return this.o == null && this.b == this.d;
    }

    public final int d(RecyclerView.p pVar) {
        return i(pVar);
    }

    public final Parcelable d() {
        if (this.o != null) {
            return new SavedState(this.o);
        }
        SavedState savedState = new SavedState();
        if (k() > 0) {
            h();
            boolean z = this.b ^ this.l;
            savedState.c = z;
            if (z) {
                View u = u();
                savedState.b = this.k.c() - this.k.b(u);
                savedState.a = a(u);
                return savedState;
            }
            View t = t();
            savedState.a = a(t);
            savedState.b = this.k.a(t) - this.k.b();
            return savedState;
        }
        savedState.a = -1;
        return savedState;
    }

    public final int e(RecyclerView.p pVar) {
        return j(pVar);
    }

    public final boolean e() {
        return this.j == 0;
    }

    public final int f(RecyclerView.p pVar) {
        return j(pVar);
    }

    public final boolean f() {
        return this.j == 1;
    }

    /* access modifiers changed from: protected */
    public final boolean g() {
        return bh.h(this.r) == 1;
    }

    /* access modifiers changed from: package-private */
    public final void h() {
        if (this.a == null) {
            this.a = new c();
        }
        if (this.k == null) {
            this.k = fd.a(this, this.j);
        }
    }
}
