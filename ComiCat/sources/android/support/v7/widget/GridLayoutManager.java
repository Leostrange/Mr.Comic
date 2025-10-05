package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import defpackage.bz;
import java.util.Arrays;

public final class GridLayoutManager extends LinearLayoutManager {
    static final int a = View.MeasureSpec.makeMeasureSpec(0, 0);
    boolean b;
    int c;
    int[] d;
    View[] e;
    final SparseIntArray f;
    final SparseIntArray g;
    a h;
    final Rect i;

    public static class LayoutParams extends RecyclerView.LayoutParams {
        /* access modifiers changed from: package-private */
        public int a = -1;
        /* access modifiers changed from: package-private */
        public int b = 0;

        public LayoutParams() {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public static abstract class a {
        final SparseIntArray a;
        private boolean b;

        /* JADX WARNING: Removed duplicated region for block: B:21:0x0055  */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x006c  */
        /* JADX WARNING: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private int c(int r7, int r8) {
            /*
                r6 = this;
                r1 = 0
                int r4 = r6.a()
                if (r4 != r8) goto L_0x0008
            L_0x0007:
                return r1
            L_0x0008:
                boolean r0 = r6.b
                if (r0 == 0) goto L_0x006e
                android.util.SparseIntArray r0 = r6.a
                int r0 = r0.size()
                if (r0 <= 0) goto L_0x006e
                android.util.SparseIntArray r0 = r6.a
                int r0 = r0.size()
                int r0 = r0 + -1
                r2 = r1
            L_0x001d:
                if (r2 > r0) goto L_0x0031
                int r3 = r2 + r0
                int r3 = r3 >>> 1
                android.util.SparseIntArray r5 = r6.a
                int r5 = r5.keyAt(r3)
                if (r5 >= r7) goto L_0x002e
                int r2 = r3 + 1
                goto L_0x001d
            L_0x002e:
                int r0 = r3 + -1
                goto L_0x001d
            L_0x0031:
                int r0 = r2 + -1
                if (r0 < 0) goto L_0x0062
                android.util.SparseIntArray r2 = r6.a
                int r2 = r2.size()
                if (r0 >= r2) goto L_0x0062
                android.util.SparseIntArray r2 = r6.a
                int r0 = r2.keyAt(r0)
            L_0x0043:
                if (r0 < 0) goto L_0x006e
                android.util.SparseIntArray r2 = r6.a
                int r2 = r2.get(r0)
                int r3 = r6.a()
                int r2 = r2 + r3
                int r0 = r0 + 1
            L_0x0052:
                r3 = r0
            L_0x0053:
                if (r3 >= r7) goto L_0x0068
                int r0 = r6.a()
                int r2 = r2 + r0
                if (r2 != r8) goto L_0x0064
                r0 = r1
            L_0x005d:
                int r2 = r3 + 1
                r3 = r2
                r2 = r0
                goto L_0x0053
            L_0x0062:
                r0 = -1
                goto L_0x0043
            L_0x0064:
                if (r2 > r8) goto L_0x005d
                r0 = r2
                goto L_0x005d
            L_0x0068:
                int r0 = r2 + r4
                if (r0 > r8) goto L_0x0007
                r1 = r2
                goto L_0x0007
            L_0x006e:
                r0 = r1
                r2 = r1
                goto L_0x0052
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.GridLayoutManager.a.c(int, int):int");
        }

        public abstract int a();

        /* access modifiers changed from: package-private */
        public final int a(int i, int i2) {
            if (!this.b) {
                return c(i, i2);
            }
            int i3 = this.a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int c = c(i, i2);
            this.a.put(i, c);
            return c;
        }

        public final int b(int i, int i2) {
            int a2 = a();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                int a3 = a();
                int i6 = i5 + a3;
                if (i6 == i2) {
                    i4++;
                    a3 = 0;
                } else if (i6 > i2) {
                    i4++;
                } else {
                    a3 = i6;
                }
                i3++;
                i5 = a3;
            }
            return i5 + a2 > i2 ? i4 + 1 : i4;
        }
    }

    private static int a(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i2) - i3) - i4, mode) : i2;
    }

    private int a(RecyclerView.l lVar, RecyclerView.p pVar, int i2) {
        if (!pVar.j) {
            return this.h.b(i2, this.c);
        }
        int a2 = lVar.a(i2);
        if (a2 != -1) {
            return this.h.b(a2, this.c);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i2);
        return 0;
    }

    private void a(RecyclerView.l lVar, RecyclerView.p pVar, int i2, boolean z) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (z) {
            i4 = 1;
            i3 = 0;
        } else {
            i3 = i2 - 1;
            i4 = -1;
            i2 = -1;
        }
        if (this.j != 1 || !g()) {
            i6 = 1;
            i5 = 0;
            i7 = i3;
        } else {
            i6 = -1;
            i5 = this.c - 1;
            i7 = i3;
        }
        while (i7 != i2) {
            View view = this.e[i7];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int unused = layoutParams.b = c(lVar, pVar, a(view));
            if (i6 != -1 || layoutParams.b <= 1) {
                int unused2 = layoutParams.a = i5;
            } else {
                int unused3 = layoutParams.a = i5 - (layoutParams.b - 1);
            }
            i5 += layoutParams.b * i6;
            i7 += i4;
        }
    }

    private void a(View view, int i2, int i3) {
        a(view, this.i);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        view.measure(a(i2, layoutParams.leftMargin + this.i.left, layoutParams.rightMargin + this.i.right), a(i3, layoutParams.topMargin + this.i.top, layoutParams.bottomMargin + this.i.bottom));
    }

    private int b(RecyclerView.l lVar, RecyclerView.p pVar, int i2) {
        if (!pVar.j) {
            return this.h.a(i2, this.c);
        }
        int i3 = this.g.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int a2 = lVar.a(i2);
        if (a2 != -1) {
            return this.h.a(a2, this.c);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 0;
    }

    private int c(RecyclerView.l lVar, RecyclerView.p pVar, int i2) {
        if (!pVar.j) {
            return this.h.a();
        }
        int i3 = this.f.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        if (lVar.a(i2) != -1) {
            return this.h.a();
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 1;
    }

    private static int g(int i2) {
        return i2 < 0 ? a : View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
    }

    public final int a(RecyclerView.l lVar, RecyclerView.p pVar) {
        if (this.j == 0) {
            return this.c;
        }
        if (pVar.a() <= 0) {
            return 0;
        }
        return a(lVar, pVar, pVar.a() - 1);
    }

    public final RecyclerView.LayoutParams a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public final RecyclerView.LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public final View a(RecyclerView.l lVar, RecyclerView.p pVar, int i2, int i3, int i4) {
        View view;
        View view2 = null;
        h();
        int b2 = this.k.b();
        int c2 = this.k.c();
        int i5 = i3 > i2 ? 1 : -1;
        View view3 = null;
        while (i2 != i3) {
            View c3 = c(i2);
            int a2 = a(c3);
            if (a2 >= 0 && a2 < i4 && b(lVar, pVar, a2) == 0) {
                if (((RecyclerView.LayoutParams) c3.getLayoutParams()).c.m()) {
                    if (view3 == null) {
                        view = view2;
                        i2 += i5;
                        view2 = view;
                        view3 = c3;
                    }
                } else if (this.k.a(c3) < c2 && this.k.b(c3) >= b2) {
                    return c3;
                } else {
                    if (view2 == null) {
                        view = c3;
                        c3 = view3;
                        i2 += i5;
                        view2 = view;
                        view3 = c3;
                    }
                }
            }
            view = view2;
            c3 = view3;
            i2 += i5;
            view2 = view;
            view3 = c3;
        }
        return view2 != null ? view2 : view3;
    }

    public final void a() {
        this.h.a.clear();
    }

    public final void a(int i2, int i3) {
        this.h.a.clear();
    }

    /* access modifiers changed from: package-private */
    public final void a(RecyclerView.l lVar, RecyclerView.p pVar, LinearLayoutManager.a aVar) {
        int i2;
        int i3 = 0;
        super.a(lVar, pVar, aVar);
        int l = this.j == 1 ? (l() - p()) - n() : (m() - q()) - o();
        if (!(this.d != null && this.d.length == this.c + 1 && this.d[this.d.length - 1] == l)) {
            this.d = new int[(this.c + 1)];
        }
        this.d[0] = 0;
        int i4 = l / this.c;
        int i5 = l % this.c;
        int i6 = 0;
        for (int i7 = 1; i7 <= this.c; i7++) {
            int i8 = i6 + i5;
            if (i8 <= 0 || this.c - i8 >= i5) {
                i6 = i8;
                i2 = i4;
            } else {
                i6 = i8 - this.c;
                i2 = i4 + 1;
            }
            i3 += i2;
            this.d[i7] = i3;
        }
        if (pVar.a() > 0 && !pVar.j) {
            int b2 = b(lVar, pVar, aVar.a);
            while (b2 > 0 && aVar.a > 0) {
                aVar.a--;
                b2 = b(lVar, pVar, aVar.a);
            }
        }
        if (this.e == null || this.e.length != this.c) {
            this.e = new View[this.c];
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(RecyclerView.l lVar, RecyclerView.p pVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i2;
        int i3;
        View a2;
        boolean z = cVar.e == 1;
        int i4 = 0;
        int i5 = this.c;
        if (!z) {
            i5 = b(lVar, pVar, cVar.d) + c(lVar, pVar, cVar.d);
        }
        while (i4 < this.c && cVar.a(pVar) && i5 > 0) {
            int i6 = cVar.d;
            int c2 = c(lVar, pVar, i6);
            if (c2 <= this.c) {
                i5 -= c2;
                if (i5 < 0 || (a2 = cVar.a(lVar)) == null) {
                    break;
                }
                this.e[i4] = a2;
                i4++;
            } else {
                throw new IllegalArgumentException("Item at position " + i6 + " requires " + c2 + " spans but GridLayoutManager has only " + this.c + " spans.");
            }
        }
        if (i4 == 0) {
            bVar.b = true;
            return;
        }
        int i7 = 0;
        a(lVar, pVar, i4, z);
        int i8 = 0;
        while (i8 < i4) {
            View view = this.e[i8];
            if (cVar.k == null) {
                if (z) {
                    super.a(view, -1, false);
                } else {
                    super.a(view, 0, false);
                }
            } else if (z) {
                super.a(view, -1, true);
            } else {
                super.a(view, 0, true);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.d[layoutParams.a + layoutParams.b] - this.d[layoutParams.a], 1073741824);
            if (this.j == 1) {
                a(view, makeMeasureSpec, g(layoutParams.height));
            } else {
                a(view, g(layoutParams.width), makeMeasureSpec);
            }
            int c3 = this.k.c(view);
            if (c3 <= i7) {
                c3 = i7;
            }
            i8++;
            i7 = c3;
        }
        int g2 = g(i7);
        for (int i9 = 0; i9 < i4; i9++) {
            View view2 = this.e[i9];
            if (this.k.c(view2) != i7) {
                LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.d[layoutParams2.a + layoutParams2.b] - this.d[layoutParams2.a], 1073741824);
                if (this.j == 1) {
                    a(view2, makeMeasureSpec2, g2);
                } else {
                    a(view2, g2, makeMeasureSpec2);
                }
            }
        }
        bVar.a = i7;
        int i10 = 0;
        int i11 = 0;
        if (this.j == 1) {
            if (cVar.f == -1) {
                i11 = cVar.b;
                i3 = i11 - i7;
                i2 = 0;
            } else {
                int i12 = cVar.b;
                i11 = i12 + i7;
                i3 = i12;
                i2 = 0;
            }
        } else if (cVar.f == -1) {
            int i13 = cVar.b;
            i10 = i13 - i7;
            i3 = 0;
            i2 = i13;
        } else {
            i10 = cVar.b;
            i2 = i7 + i10;
            i3 = 0;
        }
        int i14 = i2;
        int i15 = i3;
        int i16 = i11;
        int i17 = i10;
        for (int i18 = 0; i18 < i4; i18++) {
            View view3 = this.e[i18];
            LayoutParams layoutParams3 = (LayoutParams) view3.getLayoutParams();
            if (this.j == 1) {
                i17 = n() + this.d[layoutParams3.a];
                i14 = this.k.d(view3) + i17;
            } else {
                i15 = this.d[layoutParams3.a] + o();
                i16 = this.k.d(view3) + i15;
            }
            a(view3, layoutParams3.leftMargin + i17, layoutParams3.topMargin + i15, i14 - layoutParams3.rightMargin, i16 - layoutParams3.bottomMargin);
            if (layoutParams3.c.m() || layoutParams3.c.k()) {
                bVar.c = true;
            }
            bVar.d |= view3.isFocusable();
        }
        Arrays.fill(this.e, (Object) null);
    }

    public final void a(RecyclerView.l lVar, RecyclerView.p pVar, View view, bz bzVar) {
        boolean z = false;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.a(view, bzVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int a2 = a(lVar, pVar, layoutParams2.c.c());
        if (this.j == 0) {
            bzVar.a((Object) bz.j.a(layoutParams2.a, layoutParams2.b, a2, 1, this.c > 1 && layoutParams2.b == this.c));
            return;
        }
        int i2 = layoutParams2.a;
        int i3 = layoutParams2.b;
        if (this.c > 1 && layoutParams2.b == this.c) {
            z = true;
        }
        bzVar.a((Object) bz.j.a(a2, 1, i2, i3, z));
    }

    public final boolean a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final int b(RecyclerView.l lVar, RecyclerView.p pVar) {
        if (this.j == 1) {
            return this.c;
        }
        if (pVar.a() <= 0) {
            return 0;
        }
        return a(lVar, pVar, pVar.a() - 1);
    }

    public final RecyclerView.LayoutParams b() {
        return new LayoutParams();
    }

    public final void b(int i2, int i3) {
        this.h.a.clear();
    }

    public final void c(int i2, int i3) {
        this.h.a.clear();
    }

    public final void c(RecyclerView.l lVar, RecyclerView.p pVar) {
        if (pVar.j) {
            int k = k();
            for (int i2 = 0; i2 < k; i2++) {
                LayoutParams layoutParams = (LayoutParams) c(i2).getLayoutParams();
                int c2 = layoutParams.c.c();
                this.f.put(c2, layoutParams.b);
                this.g.put(c2, layoutParams.a);
            }
        }
        super.c(lVar, pVar);
        this.f.clear();
        this.g.clear();
        if (!pVar.j) {
            this.b = false;
        }
    }

    public final boolean c() {
        return this.o == null && !this.b;
    }

    public final void d(int i2, int i3) {
        this.h.a.clear();
    }
}
