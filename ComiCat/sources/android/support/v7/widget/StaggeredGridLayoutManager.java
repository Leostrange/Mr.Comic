package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import defpackage.bz;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public final class StaggeredGridLayoutManager extends RecyclerView.h {
    private final a A;
    private boolean B;
    private boolean C;
    private final Runnable D;
    fd a;
    fd b;
    boolean c;
    int d;
    int e;
    LazySpanLookup f;
    private int g;
    private b[] h;
    private int i;
    private int j;
    private fb k;
    private boolean l;
    private BitSet m;
    private int n;
    private boolean o;
    private boolean p;
    private SavedState v;
    private int w;
    private int x;
    private int y;
    private final Rect z;

    public static class LayoutParams extends RecyclerView.LayoutParams {
        b a;
        boolean b;

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

        public final int a() {
            if (this.a == null) {
                return -1;
            }
            return this.a.e;
        }
    }

    static class LazySpanLookup {
        int[] a;
        List<FullSpanItem> b;

        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() {
                public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };
            int a;
            int b;
            int[] c;
            boolean d;

            public FullSpanItem() {
            }

            public FullSpanItem(Parcel parcel) {
                boolean z = true;
                this.a = parcel.readInt();
                this.b = parcel.readInt();
                this.d = parcel.readInt() != 1 ? false : z;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.c = new int[readInt];
                    parcel.readIntArray(this.c);
                }
            }

            /* access modifiers changed from: package-private */
            public final int a(int i) {
                if (this.c == null) {
                    return 0;
                }
                return this.c[i];
            }

            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.a + ", mGapDir=" + this.b + ", mHasUnwantedGapAfter=" + this.d + ", mGapPerSpan=" + Arrays.toString(this.c) + '}';
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.a);
                parcel.writeInt(this.b);
                parcel.writeInt(this.d ? 1 : 0);
                if (this.c == null || this.c.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(this.c.length);
                parcel.writeIntArray(this.c);
            }
        }

        /* access modifiers changed from: package-private */
        public final int a(int i) {
            if (this.b != null) {
                for (int size = this.b.size() - 1; size >= 0; size--) {
                    if (this.b.get(size).a >= i) {
                        this.b.remove(size);
                    }
                }
            }
            return b(i);
        }

        public final FullSpanItem a(int i, int i2, int i3) {
            if (this.b == null) {
                return null;
            }
            int size = this.b.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.b.get(i4);
                if (fullSpanItem.a >= i2) {
                    return null;
                }
                if (fullSpanItem.a >= i && (i3 == 0 || fullSpanItem.b == i3 || fullSpanItem.d)) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.a != null) {
                Arrays.fill(this.a, -1);
            }
            this.b = null;
        }

        /* access modifiers changed from: package-private */
        public final void a(int i, int i2) {
            if (this.a != null && i < this.a.length) {
                c(i + i2);
                System.arraycopy(this.a, i + i2, this.a, i, (this.a.length - i) - i2);
                Arrays.fill(this.a, this.a.length - i2, this.a.length, -1);
                if (this.b != null) {
                    int i3 = i + i2;
                    for (int size = this.b.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = this.b.get(size);
                        if (fullSpanItem.a >= i) {
                            if (fullSpanItem.a < i3) {
                                this.b.remove(size);
                            } else {
                                fullSpanItem.a -= i2;
                            }
                        }
                    }
                }
            }
        }

        public final void a(FullSpanItem fullSpanItem) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.b.get(i);
                if (fullSpanItem2.a == fullSpanItem.a) {
                    this.b.remove(i);
                }
                if (fullSpanItem2.a >= fullSpanItem.a) {
                    this.b.add(i, fullSpanItem);
                    return;
                }
            }
            this.b.add(fullSpanItem);
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:18:0x0045  */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x0056  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final int b(int r5) {
            /*
                r4 = this;
                r1 = -1
                int[] r0 = r4.a
                if (r0 != 0) goto L_0x0007
                r0 = r1
            L_0x0006:
                return r0
            L_0x0007:
                int[] r0 = r4.a
                int r0 = r0.length
                if (r5 < r0) goto L_0x000e
                r0 = r1
                goto L_0x0006
            L_0x000e:
                java.util.List<android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                if (r0 == 0) goto L_0x0054
                android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = r4.d(r5)
                if (r0 == 0) goto L_0x001d
                java.util.List<android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r2 = r4.b
                r2.remove(r0)
            L_0x001d:
                java.util.List<android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                int r3 = r0.size()
                r2 = 0
            L_0x0024:
                if (r2 >= r3) goto L_0x0060
                java.util.List<android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                java.lang.Object r0 = r0.get(r2)
                android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r0
                int r0 = r0.a
                if (r0 < r5) goto L_0x0051
            L_0x0032:
                if (r2 == r1) goto L_0x0054
                java.util.List<android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                java.lang.Object r0 = r0.get(r2)
                android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r0
                java.util.List<android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r4.b
                r3.remove(r2)
                int r0 = r0.a
            L_0x0043:
                if (r0 != r1) goto L_0x0056
                int[] r0 = r4.a
                int[] r2 = r4.a
                int r2 = r2.length
                java.util.Arrays.fill(r0, r5, r2, r1)
                int[] r0 = r4.a
                int r0 = r0.length
                goto L_0x0006
            L_0x0051:
                int r2 = r2 + 1
                goto L_0x0024
            L_0x0054:
                r0 = r1
                goto L_0x0043
            L_0x0056:
                int[] r2 = r4.a
                int r3 = r0 + 1
                java.util.Arrays.fill(r2, r5, r3, r1)
                int r0 = r0 + 1
                goto L_0x0006
            L_0x0060:
                r2 = r1
                goto L_0x0032
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.b(int):int");
        }

        /* access modifiers changed from: package-private */
        public final void b(int i, int i2) {
            if (this.a != null && i < this.a.length) {
                c(i + i2);
                System.arraycopy(this.a, i, this.a, i + i2, (this.a.length - i) - i2);
                Arrays.fill(this.a, i, i + i2, -1);
                if (this.b != null) {
                    for (int size = this.b.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = this.b.get(size);
                        if (fullSpanItem.a >= i) {
                            fullSpanItem.a += i2;
                        }
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void c(int i) {
            if (this.a == null) {
                this.a = new int[(Math.max(i, 10) + 1)];
                Arrays.fill(this.a, -1);
            } else if (i >= this.a.length) {
                int[] iArr = this.a;
                int length = this.a.length;
                while (length <= i) {
                    length *= 2;
                }
                this.a = new int[length];
                System.arraycopy(iArr, 0, this.a, 0, iArr.length);
                Arrays.fill(this.a, iArr.length, this.a.length, -1);
            }
        }

        public final FullSpanItem d(int i) {
            if (this.b == null) {
                return null;
            }
            for (int size = this.b.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                if (fullSpanItem.a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }
    }

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
        int c;
        int[] d;
        int e;
        int[] f;
        List<LazySpanLookup.FullSpanItem> g;
        boolean h;
        boolean i;
        boolean j;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            boolean z = true;
            this.a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            if (this.c > 0) {
                this.d = new int[this.c];
                parcel.readIntArray(this.d);
            }
            this.e = parcel.readInt();
            if (this.e > 0) {
                this.f = new int[this.e];
                parcel.readIntArray(this.f);
            }
            this.h = parcel.readInt() == 1;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() != 1 ? false : z;
            this.g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.c = savedState.c;
            this.a = savedState.a;
            this.b = savedState.b;
            this.d = savedState.d;
            this.e = savedState.e;
            this.f = savedState.f;
            this.h = savedState.h;
            this.i = savedState.i;
            this.j = savedState.j;
            this.g = savedState.g;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            int i3 = 1;
            parcel.writeInt(this.a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            if (this.c > 0) {
                parcel.writeIntArray(this.d);
            }
            parcel.writeInt(this.e);
            if (this.e > 0) {
                parcel.writeIntArray(this.f);
            }
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            if (!this.j) {
                i3 = 0;
            }
            parcel.writeInt(i3);
            parcel.writeList(this.g);
        }
    }

    class a {
        int a;
        int b;
        boolean c;
        boolean d;
        final /* synthetic */ StaggeredGridLayoutManager e;
    }

    class b {
        ArrayList<View> a;
        int b;
        int c;
        int d;
        final int e;
        final /* synthetic */ StaggeredGridLayoutManager f;

        private void f() {
            LazySpanLookup.FullSpanItem d2;
            View view = this.a.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.b = this.f.a.a(view);
            if (layoutParams.b && (d2 = this.f.f.d(layoutParams.c.c())) != null && d2.b == -1) {
                this.b -= d2.a(this.e);
            }
        }

        private void g() {
            LazySpanLookup.FullSpanItem d2;
            View view = this.a.get(this.a.size() - 1);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.c = this.f.a.b(view);
            if (layoutParams.b && (d2 = this.f.f.d(layoutParams.c.c())) != null && d2.b == 1) {
                this.c = d2.a(this.e) + this.c;
            }
        }

        /* access modifiers changed from: package-private */
        public final int a() {
            if (this.b != Integer.MIN_VALUE) {
                return this.b;
            }
            f();
            return this.b;
        }

        /* access modifiers changed from: package-private */
        public final int a(int i) {
            if (this.b != Integer.MIN_VALUE) {
                return this.b;
            }
            if (this.a.size() == 0) {
                return i;
            }
            f();
            return this.b;
        }

        /* access modifiers changed from: package-private */
        public final void a(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.a = this;
            this.a.add(0, view);
            this.b = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.c = Integer.MIN_VALUE;
            }
            if (layoutParams.c.m() || layoutParams.c.k()) {
                this.d += this.f.a.c(view);
            }
        }

        /* access modifiers changed from: package-private */
        public final int b() {
            if (this.c != Integer.MIN_VALUE) {
                return this.c;
            }
            g();
            return this.c;
        }

        /* access modifiers changed from: package-private */
        public final int b(int i) {
            if (this.c != Integer.MIN_VALUE) {
                return this.c;
            }
            if (this.a.size() == 0) {
                return i;
            }
            g();
            return this.c;
        }

        /* access modifiers changed from: package-private */
        public final void b(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.a = this;
            this.a.add(view);
            this.c = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.b = Integer.MIN_VALUE;
            }
            if (layoutParams.c.m() || layoutParams.c.k()) {
                this.d += this.f.a.c(view);
            }
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            this.a.clear();
            this.b = Integer.MIN_VALUE;
            this.c = Integer.MIN_VALUE;
            this.d = 0;
        }

        /* access modifiers changed from: package-private */
        public final void c(int i) {
            this.b = i;
            this.c = i;
        }

        /* access modifiers changed from: package-private */
        public final void d() {
            int size = this.a.size();
            View remove = this.a.remove(size - 1);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.a = null;
            if (layoutParams.c.m() || layoutParams.c.k()) {
                this.d -= this.f.a.c(remove);
            }
            if (size == 1) {
                this.b = Integer.MIN_VALUE;
            }
            this.c = Integer.MIN_VALUE;
        }

        /* access modifiers changed from: package-private */
        public final void d(int i) {
            if (this.b != Integer.MIN_VALUE) {
                this.b += i;
            }
            if (this.c != Integer.MIN_VALUE) {
                this.c += i;
            }
        }

        /* access modifiers changed from: package-private */
        public final void e() {
            View remove = this.a.remove(0);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.a = null;
            if (this.a.size() == 0) {
                this.c = Integer.MIN_VALUE;
            }
            if (layoutParams.c.m() || layoutParams.c.k()) {
                this.d -= this.f.a.c(remove);
            }
            this.b = Integer.MIN_VALUE;
        }
    }

    private static int a(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i2) - i3) - i4, mode) : i2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:178:0x0325  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int a(android.support.v7.widget.RecyclerView.l r16, defpackage.fb r17, android.support.v7.widget.RecyclerView.p r18) {
        /*
            r15 = this;
            java.util.BitSet r1 = r15.m
            r2 = 0
            int r3 = r15.g
            r4 = 1
            r1.set(r2, r3, r4)
            r0 = r17
            int r1 = r0.d
            r2 = 1
            if (r1 != r2) goto L_0x00f5
            r0 = r17
            int r1 = r0.f
            r0 = r17
            int r2 = r0.a
            int r1 = r1 + r2
            r2 = r1
        L_0x001a:
            r0 = r17
            int r1 = r0.d
            r15.f(r1, r2)
            boolean r1 = r15.c
            if (r1 == 0) goto L_0x0101
            fd r1 = r15.a
            int r1 = r1.c()
            r3 = r1
        L_0x002c:
            r1 = 0
        L_0x002d:
            r0 = r17
            int r4 = r0.b
            if (r4 < 0) goto L_0x010a
            r0 = r17
            int r4 = r0.b
            int r5 = r18.a()
            if (r4 >= r5) goto L_0x010a
            r4 = 1
        L_0x003e:
            if (r4 == 0) goto L_0x0323
            java.util.BitSet r4 = r15.m
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L_0x0323
            r0 = r17
            int r1 = r0.b
            r0 = r16
            android.view.View r12 = r0.b((int) r1)
            r0 = r17
            int r1 = r0.b
            r0 = r17
            int r4 = r0.c
            int r1 = r1 + r4
            r0 = r17
            r0.b = r1
            android.view.ViewGroup$LayoutParams r1 = r12.getLayoutParams()
            android.support.v7.widget.StaggeredGridLayoutManager$LayoutParams r1 = (android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams) r1
            android.support.v7.widget.RecyclerView$s r4 = r1.c
            int r13 = r4.c()
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r15.f
            int[] r5 = r4.a
            if (r5 == 0) goto L_0x0076
            int[] r5 = r4.a
            int r5 = r5.length
            if (r13 < r5) goto L_0x010d
        L_0x0076:
            r4 = -1
            r5 = r4
        L_0x0078:
            r4 = -1
            if (r5 != r4) goto L_0x0114
            r4 = 1
            r11 = r4
        L_0x007d:
            if (r11 == 0) goto L_0x0193
            boolean r4 = r1.b
            if (r4 == 0) goto L_0x0118
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r4 = r15.h
            r5 = 0
            r7 = r4[r5]
        L_0x0088:
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r15.f
            r4.c(r13)
            int[] r4 = r4.a
            int r5 = r7.e
            r4[r13] = r5
        L_0x0093:
            r1.a = r7
            r0 = r17
            int r4 = r0.d
            r5 = 1
            if (r4 != r5) goto L_0x0199
            r4 = -1
            r5 = 0
            super.a((android.view.View) r12, (int) r4, (boolean) r5)
        L_0x00a1:
            boolean r4 = r1.b
            if (r4 == 0) goto L_0x01af
            int r4 = r15.i
            r5 = 1
            if (r4 != r5) goto L_0x01a0
            int r4 = r15.w
            int r5 = r1.height
            int r6 = r15.y
            int r5 = e(r5, r6)
            r15.a((android.view.View) r12, (int) r4, (int) r5)
        L_0x00b7:
            r0 = r17
            int r4 = r0.d
            r5 = 1
            if (r4 != r5) goto L_0x0243
            boolean r4 = r1.b
            if (r4 == 0) goto L_0x01d2
            int r4 = r15.i((int) r3)
        L_0x00c6:
            fd r5 = r15.a
            int r5 = r5.c(r12)
            int r6 = r4 + r5
            if (r11 == 0) goto L_0x0364
            boolean r5 = r1.b
            if (r5 == 0) goto L_0x0364
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r8 = new android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem
            r8.<init>()
            int r5 = r15.g
            int[] r5 = new int[r5]
            r8.c = r5
            r5 = 0
        L_0x00e0:
            int r9 = r15.g
            if (r5 >= r9) goto L_0x01d8
            int[] r9 = r8.c
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r10 = r15.h
            r10 = r10[r5]
            int r10 = r10.b((int) r4)
            int r10 = r4 - r10
            r9[r5] = r10
            int r5 = r5 + 1
            goto L_0x00e0
        L_0x00f5:
            r0 = r17
            int r1 = r0.e
            r0 = r17
            int r2 = r0.a
            int r1 = r1 - r2
            r2 = r1
            goto L_0x001a
        L_0x0101:
            fd r1 = r15.a
            int r1 = r1.b()
            r3 = r1
            goto L_0x002c
        L_0x010a:
            r4 = 0
            goto L_0x003e
        L_0x010d:
            int[] r4 = r4.a
            r4 = r4[r13]
            r5 = r4
            goto L_0x0078
        L_0x0114:
            r4 = 0
            r11 = r4
            goto L_0x007d
        L_0x0118:
            r0 = r17
            int r4 = r0.d
            int r5 = r15.i
            if (r5 != 0) goto L_0x015a
            r5 = -1
            if (r4 != r5) goto L_0x0156
            r4 = 1
        L_0x0124:
            boolean r5 = r15.c
            if (r4 == r5) goto L_0x0158
            r4 = 1
        L_0x0129:
            if (r4 == 0) goto L_0x0171
            int r4 = r15.g
            int r5 = r4 + -1
            r6 = -1
            r4 = -1
        L_0x0131:
            r0 = r17
            int r7 = r0.d
            r8 = 1
            if (r7 != r8) goto L_0x0176
            r7 = 0
            r9 = 2147483647(0x7fffffff, float:NaN)
            fd r8 = r15.a
            int r14 = r8.b()
            r10 = r5
        L_0x0143:
            if (r10 == r6) goto L_0x0088
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r5 = r15.h
            r5 = r5[r10]
            int r8 = r5.b((int) r14)
            if (r8 >= r9) goto L_0x036c
            r7 = r8
        L_0x0150:
            int r8 = r10 + r4
            r10 = r8
            r9 = r7
            r7 = r5
            goto L_0x0143
        L_0x0156:
            r4 = 0
            goto L_0x0124
        L_0x0158:
            r4 = 0
            goto L_0x0129
        L_0x015a:
            r5 = -1
            if (r4 != r5) goto L_0x016b
            r4 = 1
        L_0x015e:
            boolean r5 = r15.c
            if (r4 != r5) goto L_0x016d
            r4 = 1
        L_0x0163:
            boolean r5 = r15.t()
            if (r4 != r5) goto L_0x016f
            r4 = 1
            goto L_0x0129
        L_0x016b:
            r4 = 0
            goto L_0x015e
        L_0x016d:
            r4 = 0
            goto L_0x0163
        L_0x016f:
            r4 = 0
            goto L_0x0129
        L_0x0171:
            r5 = 0
            int r6 = r15.g
            r4 = 1
            goto L_0x0131
        L_0x0176:
            r7 = 0
            r9 = -2147483648(0xffffffff80000000, float:-0.0)
            fd r8 = r15.a
            int r14 = r8.c()
            r10 = r5
        L_0x0180:
            if (r10 == r6) goto L_0x0088
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r5 = r15.h
            r5 = r5[r10]
            int r8 = r5.a((int) r14)
            if (r8 <= r9) goto L_0x0368
            r7 = r8
        L_0x018d:
            int r8 = r10 + r4
            r10 = r8
            r9 = r7
            r7 = r5
            goto L_0x0180
        L_0x0193:
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r4 = r15.h
            r7 = r4[r5]
            goto L_0x0093
        L_0x0199:
            r4 = 0
            r5 = 0
            super.a((android.view.View) r12, (int) r4, (boolean) r5)
            goto L_0x00a1
        L_0x01a0:
            int r4 = r1.width
            int r5 = r15.x
            int r4 = e(r4, r5)
            int r5 = r15.w
            r15.a((android.view.View) r12, (int) r4, (int) r5)
            goto L_0x00b7
        L_0x01af:
            int r4 = r15.i
            r5 = 1
            if (r4 != r5) goto L_0x01c3
            int r4 = r15.x
            int r5 = r1.height
            int r6 = r15.y
            int r5 = e(r5, r6)
            r15.a((android.view.View) r12, (int) r4, (int) r5)
            goto L_0x00b7
        L_0x01c3:
            int r4 = r1.width
            int r5 = r15.x
            int r4 = e(r4, r5)
            int r5 = r15.y
            r15.a((android.view.View) r12, (int) r4, (int) r5)
            goto L_0x00b7
        L_0x01d2:
            int r4 = r7.b((int) r3)
            goto L_0x00c6
        L_0x01d8:
            r5 = -1
            r8.b = r5
            r8.a = r13
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup r5 = r15.f
            r5.a((android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r8)
            r5 = r4
            r4 = r6
        L_0x01e4:
            boolean r6 = r1.b
            if (r6 == 0) goto L_0x0228
            r0 = r17
            int r6 = r0.c
            r8 = -1
            if (r6 != r8) goto L_0x0228
            if (r11 != 0) goto L_0x0225
            r0 = r17
            int r6 = r0.d
            r8 = 1
            if (r6 != r8) goto L_0x0293
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r6 = r15.h
            r8 = 0
            r6 = r6[r8]
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            int r8 = r6.b((int) r8)
            r6 = 1
        L_0x0204:
            int r9 = r15.g
            if (r6 >= r9) goto L_0x028f
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r9 = r15.h
            r9 = r9[r6]
            r10 = -2147483648(0xffffffff80000000, float:-0.0)
            int r9 = r9.b((int) r10)
            if (r9 == r8) goto L_0x028b
            r6 = 0
        L_0x0215:
            if (r6 != 0) goto L_0x0291
            r6 = 1
        L_0x0218:
            if (r6 == 0) goto L_0x0228
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup r6 = r15.f
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r6 = r6.d(r13)
            if (r6 == 0) goto L_0x0225
            r8 = 1
            r6.d = r8
        L_0x0225:
            r6 = 1
            r15.B = r6
        L_0x0228:
            r0 = r17
            int r6 = r0.d
            r8 = 1
            if (r6 != r8) goto L_0x02f0
            boolean r6 = r1.b
            if (r6 == 0) goto L_0x02bd
            int r6 = r15.g
            int r6 = r6 + -1
        L_0x0237:
            if (r6 < 0) goto L_0x02c2
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r8 = r15.h
            r8 = r8[r6]
            r8.b((android.view.View) r12)
            int r6 = r6 + -1
            goto L_0x0237
        L_0x0243:
            boolean r4 = r1.b
            if (r4 == 0) goto L_0x0279
            int r4 = r15.h((int) r3)
        L_0x024b:
            fd r5 = r15.a
            int r5 = r5.c(r12)
            int r6 = r4 - r5
            if (r11 == 0) goto L_0x0288
            boolean r5 = r1.b
            if (r5 == 0) goto L_0x0288
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r8 = new android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem
            r8.<init>()
            int r5 = r15.g
            int[] r5 = new int[r5]
            r8.c = r5
            r5 = 0
        L_0x0265:
            int r9 = r15.g
            if (r5 >= r9) goto L_0x027e
            int[] r9 = r8.c
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r10 = r15.h
            r10 = r10[r5]
            int r10 = r10.a((int) r4)
            int r10 = r10 - r4
            r9[r5] = r10
            int r5 = r5 + 1
            goto L_0x0265
        L_0x0279:
            int r4 = r7.a((int) r3)
            goto L_0x024b
        L_0x027e:
            r5 = 1
            r8.b = r5
            r8.a = r13
            android.support.v7.widget.StaggeredGridLayoutManager$LazySpanLookup r5 = r15.f
            r5.a((android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r8)
        L_0x0288:
            r5 = r6
            goto L_0x01e4
        L_0x028b:
            int r6 = r6 + 1
            goto L_0x0204
        L_0x028f:
            r6 = 1
            goto L_0x0215
        L_0x0291:
            r6 = 0
            goto L_0x0218
        L_0x0293:
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r6 = r15.h
            r8 = 0
            r6 = r6[r8]
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            int r8 = r6.a((int) r8)
            r6 = 1
        L_0x029f:
            int r9 = r15.g
            if (r6 >= r9) goto L_0x02b8
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r9 = r15.h
            r9 = r9[r6]
            r10 = -2147483648(0xffffffff80000000, float:-0.0)
            int r9 = r9.a((int) r10)
            if (r9 == r8) goto L_0x02b5
            r6 = 0
        L_0x02b0:
            if (r6 != 0) goto L_0x02ba
            r6 = 1
            goto L_0x0218
        L_0x02b5:
            int r6 = r6 + 1
            goto L_0x029f
        L_0x02b8:
            r6 = 1
            goto L_0x02b0
        L_0x02ba:
            r6 = 0
            goto L_0x0218
        L_0x02bd:
            android.support.v7.widget.StaggeredGridLayoutManager$b r6 = r1.a
            r6.b((android.view.View) r12)
        L_0x02c2:
            boolean r6 = r1.b
            if (r6 == 0) goto L_0x030a
            fd r6 = r15.b
            int r6 = r6.b()
        L_0x02cc:
            fd r8 = r15.b
            int r8 = r8.c(r12)
            int r8 = r8 + r6
            int r9 = r15.i
            r10 = 1
            if (r9 != r10) goto L_0x0317
            b(r12, r6, r5, r8, r4)
        L_0x02db:
            boolean r1 = r1.b
            if (r1 == 0) goto L_0x031b
            fb r1 = r15.k
            int r1 = r1.d
            r15.f(r1, r2)
        L_0x02e6:
            fb r1 = r15.k
            r0 = r16
            r15.a((android.support.v7.widget.RecyclerView.l) r0, (defpackage.fb) r1)
            r1 = 1
            goto L_0x002d
        L_0x02f0:
            boolean r6 = r1.b
            if (r6 == 0) goto L_0x0304
            int r6 = r15.g
            int r6 = r6 + -1
        L_0x02f8:
            if (r6 < 0) goto L_0x02c2
            android.support.v7.widget.StaggeredGridLayoutManager$b[] r8 = r15.h
            r8 = r8[r6]
            r8.a((android.view.View) r12)
            int r6 = r6 + -1
            goto L_0x02f8
        L_0x0304:
            android.support.v7.widget.StaggeredGridLayoutManager$b r6 = r1.a
            r6.a((android.view.View) r12)
            goto L_0x02c2
        L_0x030a:
            int r6 = r7.e
            int r8 = r15.j
            int r6 = r6 * r8
            fd r8 = r15.b
            int r8 = r8.b()
            int r6 = r6 + r8
            goto L_0x02cc
        L_0x0317:
            b(r12, r5, r6, r4, r8)
            goto L_0x02db
        L_0x031b:
            fb r1 = r15.k
            int r1 = r1.d
            r15.a((android.support.v7.widget.StaggeredGridLayoutManager.b) r7, (int) r1, (int) r2)
            goto L_0x02e6
        L_0x0323:
            if (r1 != 0) goto L_0x032c
            fb r1 = r15.k
            r0 = r16
            r15.a((android.support.v7.widget.RecyclerView.l) r0, (defpackage.fb) r1)
        L_0x032c:
            fb r1 = r15.k
            int r1 = r1.d
            r2 = -1
            if (r1 != r2) goto L_0x0350
            fd r1 = r15.a
            int r1 = r1.b()
            int r1 = r15.h((int) r1)
            fd r2 = r15.a
            int r2 = r2.b()
            int r1 = r2 - r1
        L_0x0345:
            if (r1 <= 0) goto L_0x0362
            r0 = r17
            int r2 = r0.a
            int r1 = java.lang.Math.min(r2, r1)
        L_0x034f:
            return r1
        L_0x0350:
            fd r1 = r15.a
            int r1 = r1.c()
            int r1 = r15.i((int) r1)
            fd r2 = r15.a
            int r2 = r2.c()
            int r1 = r1 - r2
            goto L_0x0345
        L_0x0362:
            r1 = 0
            goto L_0x034f
        L_0x0364:
            r5 = r4
            r4 = r6
            goto L_0x01e4
        L_0x0368:
            r5 = r7
            r7 = r9
            goto L_0x018d
        L_0x036c:
            r5 = r7
            r7 = r9
            goto L_0x0150
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.StaggeredGridLayoutManager.a(android.support.v7.widget.RecyclerView$l, fb, android.support.v7.widget.RecyclerView$p):int");
    }

    private View a(boolean z2) {
        h();
        int b2 = this.a.b();
        int c2 = this.a.c();
        int k2 = k();
        View view = null;
        int i2 = 0;
        while (i2 < k2) {
            View c3 = c(i2);
            int a2 = this.a.a(c3);
            if (this.a.b(c3) > b2 && a2 < c2) {
                if (a2 >= b2 || !z2) {
                    return c3;
                }
                if (view == null) {
                    i2++;
                    view = c3;
                }
            }
            c3 = view;
            i2++;
            view = c3;
        }
        return view;
    }

    private void a(int i2, RecyclerView.p pVar) {
        int i3;
        int i4;
        int i5;
        boolean z2 = false;
        this.k.a = 0;
        this.k.b = i2;
        if (!j() || (i5 = pVar.a) == -1) {
            i3 = 0;
            i4 = 0;
        } else {
            if (this.c == (i5 < i2)) {
                i3 = this.a.e();
                i4 = 0;
            } else {
                i4 = this.a.e();
                i3 = 0;
            }
        }
        if (this.r != null && this.r.u) {
            z2 = true;
        }
        if (z2) {
            this.k.e = this.a.b() - i4;
            this.k.f = i3 + this.a.c();
            return;
        }
        this.k.f = i3 + this.a.d();
        this.k.e = -i4;
    }

    private void a(RecyclerView.l lVar, int i2) {
        while (k() > 0) {
            View c2 = c(0);
            if (this.a.b(c2) <= i2) {
                LayoutParams layoutParams = (LayoutParams) c2.getLayoutParams();
                if (layoutParams.b) {
                    int i3 = 0;
                    while (i3 < this.g) {
                        if (this.h[i3].a.size() != 1) {
                            i3++;
                        } else {
                            return;
                        }
                    }
                    for (int i4 = 0; i4 < this.g; i4++) {
                        this.h[i4].e();
                    }
                } else if (layoutParams.a.a.size() != 1) {
                    layoutParams.a.e();
                } else {
                    return;
                }
                a(c2, lVar);
            } else {
                return;
            }
        }
    }

    private void a(RecyclerView.l lVar, RecyclerView.p pVar, boolean z2) {
        int c2 = this.a.c() - i(this.a.c());
        if (c2 > 0) {
            int i2 = c2 - (-d(-c2, lVar, pVar));
            if (z2 && i2 > 0) {
                this.a.a(i2);
            }
        }
    }

    private void a(RecyclerView.l lVar, fb fbVar) {
        int i2 = 1;
        if (fbVar.a == 0) {
            if (fbVar.d == -1) {
                b(lVar, fbVar.f);
            } else {
                a(lVar, fbVar.e);
            }
        } else if (fbVar.d == -1) {
            int i3 = fbVar.e;
            int i4 = fbVar.e;
            int a2 = this.h[0].a(i4);
            while (i2 < this.g) {
                int a3 = this.h[i2].a(i4);
                if (a3 > a2) {
                    a2 = a3;
                }
                i2++;
            }
            int i5 = i3 - a2;
            b(lVar, i5 < 0 ? fbVar.f : fbVar.f - Math.min(i5, fbVar.a));
        } else {
            int i6 = fbVar.f;
            int b2 = this.h[0].b(i6);
            while (i2 < this.g) {
                int b3 = this.h[i2].b(i6);
                if (b3 < b2) {
                    b2 = b3;
                }
                i2++;
            }
            int i7 = b2 - fbVar.f;
            a(lVar, i7 < 0 ? fbVar.e : Math.min(i7, fbVar.a) + fbVar.e);
        }
    }

    private void a(b bVar, int i2, int i3) {
        int i4 = bVar.d;
        if (i2 == -1) {
            if (i4 + bVar.a() <= i3) {
                this.m.set(bVar.e, false);
            }
        } else if (bVar.b() - i4 >= i3) {
            this.m.set(bVar.e, false);
        }
    }

    private void a(View view, int i2, int i3) {
        a(view, this.z);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        view.measure(a(i2, layoutParams.leftMargin + this.z.left, layoutParams.rightMargin + this.z.right), a(i3, layoutParams.topMargin + this.z.top, layoutParams.bottomMargin + this.z.bottom));
    }

    private View b(boolean z2) {
        h();
        int b2 = this.a.b();
        int c2 = this.a.c();
        View view = null;
        int k2 = k() - 1;
        while (k2 >= 0) {
            View c3 = c(k2);
            int a2 = this.a.a(c3);
            int b3 = this.a.b(c3);
            if (b3 > b2 && a2 < c2) {
                if (b3 <= c2 || !z2) {
                    return c3;
                }
                if (view == null) {
                    k2--;
                    view = c3;
                }
            }
            c3 = view;
            k2--;
            view = c3;
        }
        return view;
    }

    private void b(int i2, int i3, int i4) {
        int i5;
        int i6;
        int u = this.c ? u() : v();
        if (i4 != 3) {
            i5 = i2 + i3;
            i6 = i2;
        } else if (i2 < i3) {
            i5 = i3 + 1;
            i6 = i2;
        } else {
            i5 = i2 + 1;
            i6 = i3;
        }
        this.f.b(i6);
        switch (i4) {
            case 0:
                this.f.b(i2, i3);
                break;
            case 1:
                this.f.a(i2, i3);
                break;
            case 3:
                this.f.a(i2, 1);
                this.f.b(i3, 1);
                break;
        }
        if (i5 > u) {
            if (i6 <= (this.c ? v() : u())) {
                i();
            }
        }
    }

    private void b(RecyclerView.l lVar, int i2) {
        int k2 = k() - 1;
        while (k2 >= 0) {
            View c2 = c(k2);
            if (this.a.a(c2) >= i2) {
                LayoutParams layoutParams = (LayoutParams) c2.getLayoutParams();
                if (layoutParams.b) {
                    int i3 = 0;
                    while (i3 < this.g) {
                        if (this.h[i3].a.size() != 1) {
                            i3++;
                        } else {
                            return;
                        }
                    }
                    for (int i4 = 0; i4 < this.g; i4++) {
                        this.h[i4].d();
                    }
                } else if (layoutParams.a.a.size() != 1) {
                    layoutParams.a.d();
                } else {
                    return;
                }
                a(c2, lVar);
                k2--;
            } else {
                return;
            }
        }
    }

    private void b(RecyclerView.l lVar, RecyclerView.p pVar, boolean z2) {
        int h2 = h(this.a.b()) - this.a.b();
        if (h2 > 0) {
            int d2 = h2 - d(h2, lVar, pVar);
            if (z2 && d2 > 0) {
                this.a.a(-d2);
            }
        }
    }

    private static void b(View view, int i2, int i3, int i4, int i5) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        a(view, layoutParams.leftMargin + i2, layoutParams.topMargin + i3, i4 - layoutParams.rightMargin, i5 - layoutParams.bottomMargin);
    }

    private int d(int i2, RecyclerView.l lVar, RecyclerView.p pVar) {
        int i3;
        int v2;
        h();
        if (i2 > 0) {
            i3 = 1;
            v2 = u();
        } else {
            i3 = -1;
            v2 = v();
        }
        a(v2, pVar);
        g(i3);
        this.k.b = v2 + this.k.c;
        int abs = Math.abs(i2);
        this.k.a = abs;
        int a2 = a(lVar, this.k, pVar);
        if (abs >= a2) {
            i2 = i2 < 0 ? -a2 : a2;
        }
        this.a.a(-i2);
        this.o = this.c;
        return i2;
    }

    private static int e(int i2, int i3) {
        return i2 < 0 ? i3 : View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
    }

    private void f(int i2, int i3) {
        for (int i4 = 0; i4 < this.g; i4++) {
            if (!this.h[i4].a.isEmpty()) {
                a(this.h[i4], i2, i3);
            }
        }
    }

    private int g(RecyclerView.p pVar) {
        boolean z2 = true;
        if (k() == 0) {
            return 0;
        }
        h();
        fd fdVar = this.a;
        View a2 = a(!this.C);
        if (this.C) {
            z2 = false;
        }
        return ff.a(pVar, fdVar, a2, b(z2), this, this.C, this.c);
    }

    private View g() {
        int i2;
        boolean z2;
        boolean z3;
        int k2 = k() - 1;
        BitSet bitSet = new BitSet(this.g);
        bitSet.set(0, this.g, true);
        char c2 = (this.i != 1 || !t()) ? (char) 65535 : 1;
        if (this.c) {
            i2 = -1;
        } else {
            i2 = k2 + 1;
            k2 = 0;
        }
        int i3 = k2 < i2 ? 1 : -1;
        for (int i4 = k2; i4 != i2; i4 += i3) {
            View c3 = c(i4);
            LayoutParams layoutParams = (LayoutParams) c3.getLayoutParams();
            if (bitSet.get(layoutParams.a.e)) {
                b bVar = layoutParams.a;
                if (this.c) {
                    if (bVar.b() < this.a.c()) {
                        z3 = true;
                    }
                    z3 = false;
                } else {
                    if (bVar.a() > this.a.b()) {
                        z3 = true;
                    }
                    z3 = false;
                }
                if (z3) {
                    return c3;
                }
                bitSet.clear(layoutParams.a.e);
            }
            if (!layoutParams.b && i4 + i3 != i2) {
                View c4 = c(i4 + i3);
                if (this.c) {
                    int b2 = this.a.b(c3);
                    int b3 = this.a.b(c4);
                    if (b2 < b3) {
                        return c3;
                    }
                    if (b2 == b3) {
                        z2 = true;
                    }
                    z2 = false;
                } else {
                    int a2 = this.a.a(c3);
                    int a3 = this.a.a(c4);
                    if (a2 > a3) {
                        return c3;
                    }
                    if (a2 == a3) {
                        z2 = true;
                    }
                    z2 = false;
                }
                if (!z2) {
                    continue;
                } else {
                    if ((layoutParams.a.e - ((LayoutParams) c4.getLayoutParams()).a.e < 0) != (c2 < 0)) {
                        return c3;
                    }
                }
            }
        }
        return null;
    }

    private void g(int i2) {
        int i3 = 1;
        this.k.d = i2;
        fb fbVar = this.k;
        if (this.c != (i2 == -1)) {
            i3 = -1;
        }
        fbVar.c = i3;
    }

    private int h(int i2) {
        int a2 = this.h[0].a(i2);
        for (int i3 = 1; i3 < this.g; i3++) {
            int a3 = this.h[i3].a(i2);
            if (a3 < a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private int h(RecyclerView.p pVar) {
        boolean z2 = true;
        if (k() == 0) {
            return 0;
        }
        h();
        fd fdVar = this.a;
        View a2 = a(!this.C);
        if (this.C) {
            z2 = false;
        }
        return ff.a(pVar, fdVar, a2, b(z2), this, this.C);
    }

    private void h() {
        if (this.a == null) {
            this.a = fd.a(this, this.i);
            this.b = fd.a(this, 1 - this.i);
            this.k = new fb();
        }
    }

    private int i(int i2) {
        int b2 = this.h[0].b(i2);
        for (int i3 = 1; i3 < this.g; i3++) {
            int b3 = this.h[i3].b(i2);
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private int i(RecyclerView.p pVar) {
        boolean z2 = true;
        if (k() == 0) {
            return 0;
        }
        h();
        fd fdVar = this.a;
        View a2 = a(!this.C);
        if (this.C) {
            z2 = false;
        }
        return ff.b(pVar, fdVar, a2, b(z2), this, this.C);
    }

    private void s() {
        boolean z2 = true;
        if (this.i == 1 || !t()) {
            z2 = this.l;
        } else if (this.l) {
            z2 = false;
        }
        this.c = z2;
    }

    private boolean t() {
        return bh.h(this.r) == 1;
    }

    private int u() {
        int k2 = k();
        if (k2 == 0) {
            return 0;
        }
        return a(c(k2 - 1));
    }

    private int v() {
        if (k() == 0) {
            return 0;
        }
        return a(c(0));
    }

    public final int a(int i2, RecyclerView.l lVar, RecyclerView.p pVar) {
        return d(i2, lVar, pVar);
    }

    public final int a(RecyclerView.l lVar, RecyclerView.p pVar) {
        return this.i == 0 ? this.g : super.a(lVar, pVar);
    }

    public final int a(RecyclerView.p pVar) {
        return g(pVar);
    }

    public final RecyclerView.LayoutParams a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public final RecyclerView.LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public final void a() {
        this.f.a();
        i();
    }

    public final void a(int i2, int i3) {
        b(i2, i3, 0);
    }

    public final void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.v = (SavedState) parcelable;
            i();
        }
    }

    public final void a(RecyclerView.l lVar, RecyclerView.p pVar, View view, bz bzVar) {
        int i2;
        int i3;
        int i4 = 1;
        int i5 = -1;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.a(view, bzVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.i == 0) {
            int a2 = layoutParams2.a();
            if (layoutParams2.b) {
                i4 = this.g;
            }
            i2 = a2;
            i3 = i4;
            i4 = -1;
        } else {
            int a3 = layoutParams2.a();
            if (layoutParams2.b) {
                i4 = this.g;
                i2 = -1;
                i5 = a3;
                i3 = -1;
            } else {
                i2 = -1;
                i5 = a3;
                i3 = -1;
            }
        }
        bzVar.a((Object) bz.j.a(i2, i3, i5, i4, layoutParams2.b));
    }

    public final void a(RecyclerView recyclerView, RecyclerView.l lVar) {
        a(this.D);
        for (int i2 = 0; i2 < this.g; i2++) {
            this.h[i2].c();
        }
    }

    public final void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (k() > 0) {
            cd a2 = by.a(accessibilityEvent);
            View a3 = a(false);
            View b2 = b(false);
            if (a3 != null && b2 != null) {
                int a4 = a(a3);
                int a5 = a(b2);
                if (a4 < a5) {
                    a2.b(a4);
                    a2.c(a5);
                    return;
                }
                a2.b(a5);
                a2.c(a4);
            }
        }
    }

    public final void a(String str) {
        if (this.v == null) {
            super.a(str);
        }
    }

    public final boolean a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final int b(int i2, RecyclerView.l lVar, RecyclerView.p pVar) {
        return d(i2, lVar, pVar);
    }

    public final int b(RecyclerView.l lVar, RecyclerView.p pVar) {
        return this.i == 1 ? this.g : super.b(lVar, pVar);
    }

    public final int b(RecyclerView.p pVar) {
        return g(pVar);
    }

    public final RecyclerView.LayoutParams b() {
        return new LayoutParams();
    }

    public final void b(int i2) {
        if (!(this.v == null || this.v.a == i2)) {
            SavedState savedState = this.v;
            savedState.d = null;
            savedState.c = 0;
            savedState.a = -1;
            savedState.b = -1;
        }
        this.d = i2;
        this.e = Integer.MIN_VALUE;
        i();
    }

    public final void b(int i2, int i3) {
        b(i2, i3, 1);
    }

    public final int c(RecyclerView.p pVar) {
        return h(pVar);
    }

    public final void c(int i2, int i3) {
        b(i2, i3, 2);
    }

    public final void c(RecyclerView.l lVar, RecyclerView.p pVar) {
        boolean z2;
        int i2;
        boolean z3;
        boolean z4 = true;
        h();
        a aVar = this.A;
        aVar.a = -1;
        aVar.b = Integer.MIN_VALUE;
        aVar.c = false;
        aVar.d = false;
        if (this.v != null) {
            if (this.v.c > 0) {
                if (this.v.c == this.g) {
                    for (int i3 = 0; i3 < this.g; i3++) {
                        this.h[i3].c();
                        int i4 = this.v.d[i3];
                        if (i4 != Integer.MIN_VALUE) {
                            i4 = this.v.i ? i4 + this.a.c() : i4 + this.a.b();
                        }
                        this.h[i3].c(i4);
                    }
                } else {
                    SavedState savedState = this.v;
                    savedState.d = null;
                    savedState.c = 0;
                    savedState.e = 0;
                    savedState.f = null;
                    savedState.g = null;
                    this.v.a = this.v.b;
                }
            }
            this.p = this.v.j;
            boolean z5 = this.v.h;
            a((String) null);
            if (!(this.v == null || this.v.h == z5)) {
                this.v.h = z5;
            }
            this.l = z5;
            i();
            s();
            if (this.v.a != -1) {
                this.d = this.v.a;
                aVar.c = this.v.i;
            } else {
                aVar.c = this.c;
            }
            if (this.v.e > 1) {
                this.f.a = this.v.f;
                this.f.b = this.v.g;
            }
        } else {
            s();
            aVar.c = this.c;
        }
        if (pVar.j || this.d == -1) {
            z2 = false;
        } else if (this.d < 0 || this.d >= pVar.a()) {
            this.d = -1;
            this.e = Integer.MIN_VALUE;
            z2 = false;
        } else {
            if (this.v == null || this.v.a == -1 || this.v.c <= 0) {
                View a2 = a(this.d);
                if (a2 != null) {
                    aVar.a = this.c ? u() : v();
                    if (this.e != Integer.MIN_VALUE) {
                        if (aVar.c) {
                            aVar.b = (this.a.c() - this.e) - this.a.b(a2);
                        } else {
                            aVar.b = (this.a.b() + this.e) - this.a.a(a2);
                        }
                        z2 = true;
                    } else if (this.a.c(a2) > this.a.e()) {
                        aVar.b = aVar.c ? this.a.c() : this.a.b();
                    } else {
                        int a3 = this.a.a(a2) - this.a.b();
                        if (a3 < 0) {
                            aVar.b = -a3;
                        } else {
                            int c2 = this.a.c() - this.a.b(a2);
                            if (c2 < 0) {
                                aVar.b = c2;
                            } else {
                                aVar.b = Integer.MIN_VALUE;
                            }
                        }
                    }
                } else {
                    aVar.a = this.d;
                    if (this.e == Integer.MIN_VALUE) {
                        int i5 = aVar.a;
                        if (k() == 0) {
                            if (!this.c) {
                                z3 = true;
                            }
                            z3 = true;
                        } else {
                            if ((i5 < v()) != this.c) {
                                z3 = true;
                            }
                            z3 = true;
                        }
                        aVar.c = z3;
                        aVar.b = aVar.c ? aVar.e.a.c() : aVar.e.a.b();
                    } else {
                        int i6 = this.e;
                        if (aVar.c) {
                            aVar.b = aVar.e.a.c() - i6;
                        } else {
                            aVar.b = i6 + aVar.e.a.b();
                        }
                    }
                    aVar.d = true;
                }
            } else {
                aVar.b = Integer.MIN_VALUE;
                aVar.a = this.d;
            }
            z2 = true;
        }
        if (!z2) {
            if (!this.o) {
                int a4 = pVar.a();
                int k2 = k();
                int i7 = 0;
                while (true) {
                    if (i7 < k2) {
                        i2 = a(c(i7));
                        if (i2 >= 0 && i2 < a4) {
                            break;
                        }
                        i7++;
                    } else {
                        i2 = 0;
                        break;
                    }
                }
            } else {
                int a5 = pVar.a();
                int k3 = k() - 1;
                while (true) {
                    if (k3 >= 0) {
                        i2 = a(c(k3));
                        if (i2 >= 0 && i2 < a5) {
                            break;
                        }
                        k3--;
                    } else {
                        i2 = 0;
                        break;
                    }
                }
            }
            aVar.a = i2;
            aVar.b = Integer.MIN_VALUE;
        }
        if (this.v == null && !(aVar.c == this.o && t() == this.p)) {
            this.f.a();
            aVar.d = true;
        }
        if (k() > 0 && (this.v == null || this.v.c <= 0)) {
            if (aVar.d) {
                for (int i8 = 0; i8 < this.g; i8++) {
                    this.h[i8].c();
                    if (aVar.b != Integer.MIN_VALUE) {
                        this.h[i8].c(aVar.b);
                    }
                }
            } else {
                for (int i9 = 0; i9 < this.g; i9++) {
                    b bVar = this.h[i9];
                    boolean z6 = this.c;
                    int i10 = aVar.b;
                    int b2 = z6 ? bVar.b(Integer.MIN_VALUE) : bVar.a(Integer.MIN_VALUE);
                    bVar.c();
                    if (b2 != Integer.MIN_VALUE && ((!z6 || b2 >= bVar.f.a.c()) && (z6 || b2 <= bVar.f.a.b()))) {
                        if (i10 != Integer.MIN_VALUE) {
                            b2 += i10;
                        }
                        bVar.c = b2;
                        bVar.b = b2;
                    }
                }
            }
        }
        a(lVar);
        this.B = false;
        this.j = this.b.e() / this.g;
        this.w = View.MeasureSpec.makeMeasureSpec(this.b.e(), 1073741824);
        if (this.i == 1) {
            this.x = View.MeasureSpec.makeMeasureSpec(this.j, 1073741824);
            this.y = View.MeasureSpec.makeMeasureSpec(0, 0);
        } else {
            this.y = View.MeasureSpec.makeMeasureSpec(this.j, 1073741824);
            this.x = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        a(aVar.a, pVar);
        if (aVar.c) {
            g(-1);
            a(lVar, this.k, pVar);
            g(1);
            this.k.b = aVar.a + this.k.c;
            a(lVar, this.k, pVar);
        } else {
            g(1);
            a(lVar, this.k, pVar);
            g(-1);
            this.k.b = aVar.a + this.k.c;
            a(lVar, this.k, pVar);
        }
        if (k() > 0) {
            if (this.c) {
                a(lVar, pVar, true);
                b(lVar, pVar, false);
            } else {
                b(lVar, pVar, true);
                a(lVar, pVar, false);
            }
        }
        if (!pVar.j) {
            if (this.n == 0 || k() <= 0 || (!this.B && g() == null)) {
                z4 = false;
            }
            if (z4) {
                a(this.D);
                Runnable runnable = this.D;
                if (this.r != null) {
                    bh.a((View) this.r, runnable);
                }
            }
            this.d = -1;
            this.e = Integer.MIN_VALUE;
        }
        this.o = aVar.c;
        this.p = t();
        this.v = null;
    }

    public final boolean c() {
        return this.v == null;
    }

    public final int d(RecyclerView.p pVar) {
        return h(pVar);
    }

    public final Parcelable d() {
        int a2;
        if (this.v != null) {
            return new SavedState(this.v);
        }
        SavedState savedState = new SavedState();
        savedState.h = this.l;
        savedState.i = this.o;
        savedState.j = this.p;
        if (this.f == null || this.f.a == null) {
            savedState.e = 0;
        } else {
            savedState.f = this.f.a;
            savedState.e = savedState.f.length;
            savedState.g = this.f.b;
        }
        if (k() > 0) {
            h();
            savedState.a = this.o ? u() : v();
            View b2 = this.c ? b(true) : a(true);
            savedState.b = b2 == null ? -1 : a(b2);
            savedState.c = this.g;
            savedState.d = new int[this.g];
            for (int i2 = 0; i2 < this.g; i2++) {
                if (this.o) {
                    a2 = this.h[i2].b(Integer.MIN_VALUE);
                    if (a2 != Integer.MIN_VALUE) {
                        a2 -= this.a.c();
                    }
                } else {
                    a2 = this.h[i2].a(Integer.MIN_VALUE);
                    if (a2 != Integer.MIN_VALUE) {
                        a2 -= this.a.b();
                    }
                }
                savedState.d[i2] = a2;
            }
        } else {
            savedState.a = -1;
            savedState.b = -1;
            savedState.c = 0;
        }
        return savedState;
    }

    public final void d(int i2) {
        super.d(i2);
        for (int i3 = 0; i3 < this.g; i3++) {
            this.h[i3].d(i2);
        }
    }

    public final void d(int i2, int i3) {
        b(i2, i3, 3);
    }

    public final int e(RecyclerView.p pVar) {
        return i(pVar);
    }

    public final void e(int i2) {
        super.e(i2);
        for (int i3 = 0; i3 < this.g; i3++) {
            this.h[i3].d(i2);
        }
    }

    public final boolean e() {
        return this.i == 0;
    }

    public final int f(RecyclerView.p pVar) {
        return i(pVar);
    }

    public final void f(int i2) {
        int v2;
        int u;
        if (i2 == 0 && k() != 0 && this.n != 0 && this.u) {
            if (this.c) {
                v2 = u();
                u = v();
            } else {
                v2 = v();
                u = u();
            }
            if (v2 == 0 && g() != null) {
                this.f.a();
            } else if (this.B) {
                int i3 = this.c ? -1 : 1;
                LazySpanLookup.FullSpanItem a2 = this.f.a(v2, u + 1, i3);
                if (a2 == null) {
                    this.B = false;
                    this.f.a(u + 1);
                    return;
                }
                LazySpanLookup.FullSpanItem a3 = this.f.a(v2, a2.a, i3 * -1);
                if (a3 == null) {
                    this.f.a(a2.a);
                } else {
                    this.f.a(a3.a + 1);
                }
            } else {
                return;
            }
            this.t = true;
            i();
        }
    }

    public final boolean f() {
        return this.i == 1;
    }
}
