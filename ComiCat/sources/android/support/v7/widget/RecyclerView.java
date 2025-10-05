package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import defpackage.bz;
import defpackage.ev;
import defpackage.ey;
import defpackage.ez;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView extends ViewGroup implements ay, bf {
    /* access modifiers changed from: private */
    public static final Interpolator al = new Interpolator() {
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    /* access modifiers changed from: private */
    public static final boolean q = (Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20);
    private static final Class<?>[] r = {Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
    private i A;
    private boolean B;
    private boolean C;
    private boolean D;
    /* access modifiers changed from: private */
    public boolean E;
    private int F;
    private boolean G;
    private final boolean H;
    /* access modifiers changed from: private */
    public final AccessibilityManager I;
    private List<Object> J;
    private int K;
    private int L;
    private int M;
    private VelocityTracker N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private final int T;
    private final int U;
    private float V;
    private j W;
    public final l a;
    private List<j> aa;
    private e.a ab;
    /* access modifiers changed from: private */
    public boolean ac;
    /* access modifiers changed from: private */
    public fe ad;
    private d ae;
    private final int[] af;
    private final az ag;
    private final int[] ah;
    private final int[] ai;
    private final int[] aj;
    private Runnable ak;
    public ey b;
    ez c;
    /* access modifiers changed from: package-private */
    public a d;
    /* access modifiers changed from: package-private */
    public h e;
    public boolean f;
    public boolean g;
    cm h;
    cm i;
    cm j;
    cm k;
    e l;
    /* access modifiers changed from: package-private */
    public final r m;
    public final p n;
    boolean o;
    boolean p;
    private final n s;
    private SavedState t;
    /* access modifiers changed from: private */
    public boolean u;
    private final Runnable v;
    private final Rect w;
    /* access modifiers changed from: private */
    public m x;
    /* access modifiers changed from: private */
    public final ArrayList<Object> y;
    private final ArrayList<i> z;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        s c;
        final Rect d = new Rect();
        boolean e = true;
        boolean f = false;

        public LayoutParams() {
            super(-2, -2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        /* access modifiers changed from: package-private */
        public Parcelable a;

        SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readParcelable(h.class.getClassLoader());
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.a, 0);
        }
    }

    public static abstract class a<VH extends s> {
        final b a;
        boolean b;

        public abstract VH a();

        public final void a(VH vh, int i) {
            vh.b = i;
            if (this.b) {
                vh.d = -1;
            }
            vh.a(1, 519);
            v.a("RV OnBindView");
            v.a();
        }

        public abstract int b();
    }

    static class b extends Observable<c> {
    }

    public static abstract class c {
    }

    public interface d {
        int a();
    }

    public static abstract class e {
        private ArrayList<Object> a = new ArrayList<>();
        a h = null;
        public long i = 120;
        protected long j = 120;
        public long k = 250;
        public long l = 250;
        boolean m = true;

        interface a {
            void a(s sVar);

            void b(s sVar);

            void c(s sVar);

            void d(s sVar);
        }

        public abstract void a();

        public abstract boolean a(s sVar);

        public abstract boolean a(s sVar, int i2, int i3, int i4, int i5);

        public abstract boolean a(s sVar, s sVar2, int i2, int i3, int i4, int i5);

        public abstract boolean b();

        public abstract boolean b(s sVar);

        public abstract void c(s sVar);

        public abstract void d();

        public final void d(s sVar) {
            if (this.h != null) {
                this.h.a(sVar);
            }
        }

        public final void e() {
            int size = this.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.a.get(i2);
            }
            this.a.clear();
        }

        public final void e(s sVar) {
            if (this.h != null) {
                this.h.c(sVar);
            }
        }

        public final void f(s sVar) {
            if (this.h != null) {
                this.h.b(sVar);
            }
        }

        public final void g(s sVar) {
            if (this.h != null) {
                this.h.d(sVar);
            }
        }
    }

    class f implements e.a {
        private f() {
        }

        /* synthetic */ f(RecyclerView recyclerView, byte b) {
            this();
        }

        public final void a(s sVar) {
            sVar.a(true);
            if (!RecyclerView.c(RecyclerView.this, sVar.a) && sVar.n()) {
                RecyclerView.this.removeDetachedView(sVar.a, false);
            }
        }

        public final void b(s sVar) {
            sVar.a(true);
            if (!s.a(sVar)) {
                RecyclerView.c(RecyclerView.this, sVar.a);
            }
        }

        public final void c(s sVar) {
            sVar.a(true);
            if (!s.a(sVar)) {
                RecyclerView.c(RecyclerView.this, sVar.a);
            }
        }

        public final void d(s sVar) {
            sVar.a(true);
            if (sVar.g != null && sVar.h == null) {
                sVar.g = null;
                sVar.a(-65, sVar.i);
            }
            sVar.h = null;
            if (!s.a(sVar)) {
                RecyclerView.c(RecyclerView.this, sVar.a);
            }
        }
    }

    static class g {
        s a;
        int b;
        int c;
        int d;
        int e;

        g(s sVar, int i, int i2, int i3, int i4) {
            this.a = sVar;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }
    }

    public static abstract class h {
        ez q;
        public RecyclerView r;
        o s;
        /* access modifiers changed from: package-private */
        public boolean t = false;
        boolean u = false;

        public static int a(int i, int i2, int i3, boolean z) {
            int i4 = 1073741824;
            int max = Math.max(0, i - i2);
            if (z) {
                if (i3 < 0) {
                    i4 = 0;
                    i3 = 0;
                }
            } else if (i3 < 0) {
                if (i3 == -1) {
                    i3 = max;
                } else if (i3 == -2) {
                    i4 = Integer.MIN_VALUE;
                    i3 = max;
                } else {
                    i4 = 0;
                    i3 = 0;
                }
            }
            return View.MeasureSpec.makeMeasureSpec(i3, i4);
        }

        public static int a(View view) {
            return ((LayoutParams) view.getLayoutParams()).c.c();
        }

        static /* synthetic */ void a(h hVar, o oVar) {
            if (hVar.s == oVar) {
                hVar.s = null;
            }
        }

        public static void a(View view, int i, int i2, int i3, int i4) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).d;
            view.layout(rect.left + i, rect.top + i2, i3 - rect.right, i4 - rect.bottom);
        }

        public static int b(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).d;
            return rect.right + view.getMeasuredWidth() + rect.left;
        }

        public static int c(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).d;
            return rect.bottom + view.getMeasuredHeight() + rect.top;
        }

        public static int d(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.top;
        }

        public static int e(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.bottom;
        }

        public static int f(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.left;
        }

        public static int g(View view) {
            return ((LayoutParams) view.getLayoutParams()).d.right;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:2:0x0006, code lost:
            r0 = r4.q;
            r1 = r0.a(r5);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void g(int r5) {
            /*
                r4 = this;
                android.view.View r0 = r4.c((int) r5)
                if (r0 == 0) goto L_0x0026
                ez r0 = r4.q
                int r1 = r0.a((int) r5)
                ez$b r2 = r0.a
                android.view.View r2 = r2.b((int) r1)
                if (r2 == 0) goto L_0x0026
                ez$a r3 = r0.b
                boolean r3 = r3.c(r1)
                if (r3 == 0) goto L_0x0021
                java.util.List<android.view.View> r3 = r0.c
                r3.remove(r2)
            L_0x0021:
                ez$b r0 = r0.a
                r0.a((int) r1)
            L_0x0026:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.h.g(int):void");
        }

        private void h(int i) {
            c(i);
            ez ezVar = this.q;
            int a = ezVar.a(i);
            ezVar.b.c(a);
            ezVar.a.c(a);
        }

        public int a(int i, l lVar, p pVar) {
            return 0;
        }

        public int a(l lVar, p pVar) {
            if (this.r == null || this.r.d == null || !f()) {
                return 1;
            }
            return this.r.d.b();
        }

        public int a(p pVar) {
            return 0;
        }

        public LayoutParams a(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public LayoutParams a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        public View a(int i) {
            int k = k();
            for (int i2 = 0; i2 < k; i2++) {
                View c = c(i2);
                s b = RecyclerView.b(c);
                if (b != null && b.c() == i && !b.b() && (this.r.n.j || !b.m())) {
                    return c;
                }
            }
            return null;
        }

        public void a() {
        }

        public void a(int i, int i2) {
        }

        public final void a(int i, l lVar) {
            View c = c(i);
            g(i);
            lVar.a(c);
        }

        public void a(Parcelable parcelable) {
        }

        public final void a(l lVar) {
            for (int k = k() - 1; k >= 0; k--) {
                View c = c(k);
                s b = RecyclerView.b(c);
                if (!b.b()) {
                    if (!b.i() || b.m() || b.k() || this.r.d.b) {
                        h(k);
                        s b2 = RecyclerView.b(c);
                        b2.j = lVar;
                        if (b2.k() && RecyclerView.this.g()) {
                            if (lVar.b == null) {
                                lVar.b = new ArrayList<>();
                            }
                            lVar.b.add(b2);
                        } else if (!b2.i() || b2.m() || RecyclerView.this.d.b) {
                            lVar.a.add(b2);
                        } else {
                            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
                        }
                    } else {
                        g(k);
                        lVar.a(b);
                    }
                }
            }
        }

        public void a(l lVar, p pVar, View view, bz bzVar) {
            bzVar.a((Object) bz.j.a(f() ? a(view) : 0, 1, e() ? a(view) : 0, 1, false));
        }

        /* access modifiers changed from: package-private */
        public final void a(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.r = null;
                this.q = null;
                return;
            }
            this.r = recyclerView;
            this.q = recyclerView.c;
        }

        public void a(RecyclerView recyclerView, l lVar) {
        }

        /* access modifiers changed from: package-private */
        public final void a(View view, int i, boolean z) {
            s b = RecyclerView.b(view);
            if (z || b.m()) {
                this.r.n.b(view);
            } else {
                this.r.n.a(view);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (b.f() || b.d()) {
                if (b.d()) {
                    b.e();
                } else {
                    b.g();
                }
                this.q.a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.r) {
                ez ezVar = this.q;
                int a = ezVar.a.a(view);
                int d = a == -1 ? -1 : ezVar.b.b(a) ? -1 : a - ezVar.b.d(a);
                if (i == -1) {
                    i = this.q.a();
                }
                if (d == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.r.indexOfChild(view));
                } else if (d != i) {
                    h e = this.r.e;
                    View c = e.c(d);
                    if (c == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + d);
                    }
                    e.h(d);
                    LayoutParams layoutParams2 = (LayoutParams) c.getLayoutParams();
                    s b2 = RecyclerView.b(c);
                    if (b2.m()) {
                        e.r.n.b(c);
                    } else {
                        e.r.n.a(c);
                    }
                    e.q.a(c, i, layoutParams2, b2.m());
                }
            } else {
                this.q.a(view, i, false);
                layoutParams.e = true;
                if (this.s != null && this.s.c) {
                    o oVar = this.s;
                    if (RecyclerView.c(view) == oVar.a) {
                        oVar.d = view;
                    }
                }
            }
            if (layoutParams.f) {
                b.a.invalidate();
                layoutParams.f = false;
            }
        }

        public final void a(View view, Rect rect) {
            if (this.r == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(this.r.d(view));
            }
        }

        public final void a(View view, l lVar) {
            ez ezVar = this.q;
            int a = ezVar.a.a(view);
            if (a >= 0) {
                if (ezVar.b.c(a)) {
                    ezVar.c.remove(view);
                }
                ezVar.a.a(a);
            }
            lVar.a(view);
        }

        public final void a(View view, bz bzVar) {
            s b = RecyclerView.b(view);
            if (b != null && !b.m() && !this.q.a(b.a)) {
                a(this.r.a, this.r.n, view, bzVar);
            }
        }

        public void a(AccessibilityEvent accessibilityEvent) {
            boolean z = true;
            l lVar = this.r.a;
            p pVar = this.r.n;
            cd a = by.a(accessibilityEvent);
            if (this.r != null) {
                if (!bh.b((View) this.r, 1) && !bh.b((View) this.r, -1) && !bh.a((View) this.r, -1) && !bh.a((View) this.r, 1)) {
                    z = false;
                }
                a.a(z);
                if (this.r.d != null) {
                    a.a(this.r.d.b());
                }
            }
        }

        public void a(String str) {
            if (this.r != null && this.r.f()) {
                if (str == null) {
                    throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
                }
                throw new IllegalStateException(str);
            }
        }

        public boolean a(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public final boolean a(Runnable runnable) {
            if (this.r != null) {
                return this.r.removeCallbacks(runnable);
            }
            return false;
        }

        public int b(int i, l lVar, p pVar) {
            return 0;
        }

        public int b(l lVar, p pVar) {
            if (this.r == null || this.r.d == null || !e()) {
                return 1;
            }
            return this.r.d.b();
        }

        public int b(p pVar) {
            return 0;
        }

        public abstract LayoutParams b();

        public void b(int i) {
        }

        public void b(int i, int i2) {
        }

        /* access modifiers changed from: package-private */
        public final void b(l lVar) {
            int size = lVar.a.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = lVar.a.get(i).a;
                s b = RecyclerView.b(view);
                if (!b.b()) {
                    b.a(false);
                    if (b.n()) {
                        this.r.removeDetachedView(view, false);
                    }
                    if (this.r.l != null) {
                        this.r.l.c(b);
                    }
                    b.a(true);
                    lVar.b(view);
                }
            }
            lVar.a.clear();
            if (size > 0) {
                this.r.invalidate();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b(RecyclerView recyclerView, l lVar) {
            this.u = false;
            a(recyclerView, lVar);
        }

        public int c(p pVar) {
            return 0;
        }

        public final View c(int i) {
            if (this.q != null) {
                return this.q.b(i);
            }
            return null;
        }

        public View c(int i, l lVar, p pVar) {
            return null;
        }

        public void c(int i, int i2) {
        }

        public final void c(l lVar) {
            for (int k = k() - 1; k >= 0; k--) {
                if (!RecyclerView.b(c(k)).b()) {
                    a(k, lVar);
                }
            }
        }

        public void c(l lVar, p pVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public boolean c() {
            return false;
        }

        public int d(p pVar) {
            return 0;
        }

        public Parcelable d() {
            return null;
        }

        public void d(int i) {
            if (this.r != null) {
                RecyclerView recyclerView = this.r;
                int a = recyclerView.c.a();
                for (int i2 = 0; i2 < a; i2++) {
                    recyclerView.c.b(i2).offsetLeftAndRight(i);
                }
            }
        }

        public void d(int i, int i2) {
        }

        public int e(p pVar) {
            return 0;
        }

        public void e(int i) {
            if (this.r != null) {
                RecyclerView recyclerView = this.r;
                int a = recyclerView.c.a();
                for (int i2 = 0; i2 < a; i2++) {
                    recyclerView.c.b(i2).offsetTopAndBottom(i);
                }
            }
        }

        public boolean e() {
            return false;
        }

        public int f(p pVar) {
            return 0;
        }

        public void f(int i) {
        }

        public boolean f() {
            return false;
        }

        public final void i() {
            if (this.r != null) {
                this.r.requestLayout();
            }
        }

        public final boolean j() {
            return this.s != null && this.s.c;
        }

        public final int k() {
            if (this.q != null) {
                return this.q.a();
            }
            return 0;
        }

        public final int l() {
            if (this.r != null) {
                return this.r.getWidth();
            }
            return 0;
        }

        public final int m() {
            if (this.r != null) {
                return this.r.getHeight();
            }
            return 0;
        }

        public final int n() {
            if (this.r != null) {
                return this.r.getPaddingLeft();
            }
            return 0;
        }

        public final int o() {
            if (this.r != null) {
                return this.r.getPaddingTop();
            }
            return 0;
        }

        public final int p() {
            if (this.r != null) {
                return this.r.getPaddingRight();
            }
            return 0;
        }

        public final int q() {
            if (this.r != null) {
                return this.r.getPaddingBottom();
            }
            return 0;
        }

        /* access modifiers changed from: package-private */
        public final void r() {
            if (this.s != null) {
                this.s.a();
            }
        }
    }

    public interface i {
        boolean a();
    }

    public static abstract class j {
    }

    public static class k {
        SparseArray<ArrayList<s>> a = new SparseArray<>();
        SparseIntArray b = new SparseIntArray();
        int c = 0;

        /* access modifiers changed from: package-private */
        public final void a() {
            this.c++;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            this.c--;
        }
    }

    public final class l {
        final ArrayList<s> a = new ArrayList<>();
        ArrayList<s> b = null;
        final ArrayList<s> c = new ArrayList<>();
        final List<s> d = Collections.unmodifiableList(this.a);
        int e = 2;
        k f;
        q g;

        public l() {
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        private void c(s sVar) {
            bh.a(sVar.a, (al) null);
            if (RecyclerView.this.x != null) {
                m unused = RecyclerView.this.x;
            }
            if (RecyclerView.this.d != null) {
                a unused2 = RecyclerView.this.d;
            }
            if (RecyclerView.this.n != null) {
                RecyclerView.this.n.a(sVar);
            }
            sVar.k = null;
            k c2 = c();
            int i = sVar.e;
            ArrayList arrayList = c2.a.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList();
                c2.a.put(i, arrayList);
                if (c2.b.indexOfKey(i) < 0) {
                    c2.b.put(i, 5);
                }
            }
            if (c2.b.get(i) > arrayList.size()) {
                sVar.o();
                arrayList.add(sVar);
            }
        }

        private s d() {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                s sVar = this.a.get(size);
                if (sVar.d == -1 && !sVar.f()) {
                    if (sVar.e == 0) {
                        sVar.a(32);
                        if (!sVar.m() || RecyclerView.this.n.j) {
                            return sVar;
                        }
                        sVar.a(2, 14);
                        return sVar;
                    }
                    this.a.remove(size);
                    RecyclerView.this.removeDetachedView(sVar.a, false);
                    b(sVar.a);
                }
            }
            for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
                s sVar2 = this.c.get(size2);
                if (sVar2.d == -1) {
                    if (sVar2.e == 0) {
                        this.c.remove(size2);
                        return sVar2;
                    }
                    c(size2);
                }
            }
            return null;
        }

        private s d(int i) {
            int size;
            int a2;
            int i2 = 0;
            if (this.b == null || (size = this.b.size()) == 0) {
                return null;
            }
            int i3 = 0;
            while (i3 < size) {
                s sVar = this.b.get(i3);
                if (sVar.f() || sVar.c() != i) {
                    i3++;
                } else {
                    sVar.a(32);
                    return sVar;
                }
            }
            if (RecyclerView.this.d.b && (a2 = RecyclerView.this.b.a(i, 0)) > 0 && a2 < RecyclerView.this.d.b()) {
                a unused = RecyclerView.this.d;
                while (i2 < size) {
                    s sVar2 = this.b.get(i2);
                    if (sVar2.f() || sVar2.d != -1) {
                        i2++;
                    } else {
                        sVar2.a(32);
                        return sVar2;
                    }
                }
            }
            return null;
        }

        private s e(int i) {
            View view;
            int i2 = 0;
            int size = this.a.size();
            int i3 = 0;
            while (i3 < size) {
                s sVar = this.a.get(i3);
                if (sVar.f() || sVar.c() != i || sVar.i() || (!RecyclerView.this.n.j && sVar.m())) {
                    i3++;
                } else {
                    sVar.a(32);
                    return sVar;
                }
            }
            ez ezVar = RecyclerView.this.c;
            int size2 = ezVar.c.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size2) {
                    view = null;
                    break;
                }
                view = ezVar.c.get(i4);
                s b2 = ezVar.a.b(view);
                if (b2.c() == i && !b2.i()) {
                    break;
                }
                i4++;
            }
            if (view != null) {
                RecyclerView.this.l.c(RecyclerView.this.a(view));
            }
            int size3 = this.c.size();
            while (i2 < size3) {
                s sVar2 = this.c.get(i2);
                if (sVar2.i() || sVar2.c() != i) {
                    i2++;
                } else {
                    this.c.remove(i2);
                    return sVar2;
                }
            }
            return null;
        }

        public final int a(int i) {
            if (i >= 0 && i < RecyclerView.this.n.a()) {
                return !RecyclerView.this.n.j ? i : RecyclerView.this.b.a(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.n.a());
        }

        public final void a() {
            this.a.clear();
            b();
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:40:0x00ae  */
        /* JADX WARNING: Removed duplicated region for block: B:48:0x00c8  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(android.support.v7.widget.RecyclerView.s r6) {
            /*
                r5 = this;
                r0 = 1
                r1 = 0
                boolean r2 = r6.d()
                if (r2 != 0) goto L_0x0010
                android.view.View r2 = r6.a
                android.view.ViewParent r2 = r2.getParent()
                if (r2 == 0) goto L_0x003d
            L_0x0010:
                java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                java.lang.String r4 = "Scrapped or attached views may not be recycled. isScrap:"
                r3.<init>(r4)
                boolean r4 = r6.d()
                java.lang.StringBuilder r3 = r3.append(r4)
                java.lang.String r4 = " isAttached:"
                java.lang.StringBuilder r3 = r3.append(r4)
                android.view.View r4 = r6.a
                android.view.ViewParent r4 = r4.getParent()
                if (r4 == 0) goto L_0x003b
            L_0x002f:
                java.lang.StringBuilder r0 = r3.append(r0)
                java.lang.String r0 = r0.toString()
                r2.<init>(r0)
                throw r2
            L_0x003b:
                r0 = r1
                goto L_0x002f
            L_0x003d:
                boolean r2 = r6.n()
                if (r2 == 0) goto L_0x0058
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "Tmp detached view should be removed from RecyclerView before it can be recycled: "
                r1.<init>(r2)
                java.lang.StringBuilder r1 = r1.append(r6)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x0058:
                boolean r2 = r6.b()
                if (r2 == 0) goto L_0x0066
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r1 = "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."
                r0.<init>(r1)
                throw r0
            L_0x0066:
                int r2 = r6.i
                r2 = r2 & 16
                if (r2 != 0) goto L_0x00c4
                android.view.View r2 = r6.a
                boolean r2 = defpackage.bh.c(r2)
                if (r2 == 0) goto L_0x00c4
                r2 = r0
            L_0x0075:
                android.support.v7.widget.RecyclerView r3 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r3 = r3.d
                if (r3 == 0) goto L_0x0084
                if (r2 == 0) goto L_0x0084
                android.support.v7.widget.RecyclerView r3 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView.a unused = r3.d
            L_0x0084:
                boolean r3 = r6.p()
                if (r3 == 0) goto L_0x00cc
                int r3 = r6.i
                r3 = r3 & 78
                if (r3 == 0) goto L_0x00c6
                r3 = r0
            L_0x0091:
                if (r3 != 0) goto L_0x00ca
                java.util.ArrayList<android.support.v7.widget.RecyclerView$s> r3 = r5.c
                int r3 = r3.size()
                int r4 = r5.e
                if (r3 != r4) goto L_0x00a2
                if (r3 <= 0) goto L_0x00a2
                r5.c((int) r1)
            L_0x00a2:
                int r4 = r5.e
                if (r3 >= r4) goto L_0x00ca
                java.util.ArrayList<android.support.v7.widget.RecyclerView$s> r3 = r5.c
                r3.add(r6)
                r3 = r0
            L_0x00ac:
                if (r3 != 0) goto L_0x00c8
                r5.c((android.support.v7.widget.RecyclerView.s) r6)
                r1 = r0
                r0 = r3
            L_0x00b3:
                android.support.v7.widget.RecyclerView r3 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r3 = r3.n
                r3.a((android.support.v7.widget.RecyclerView.s) r6)
                if (r0 != 0) goto L_0x00c3
                if (r1 != 0) goto L_0x00c3
                if (r2 == 0) goto L_0x00c3
                r0 = 0
                r6.k = r0
            L_0x00c3:
                return
            L_0x00c4:
                r2 = r1
                goto L_0x0075
            L_0x00c6:
                r3 = r1
                goto L_0x0091
            L_0x00c8:
                r0 = r3
                goto L_0x00b3
            L_0x00ca:
                r3 = r1
                goto L_0x00ac
            L_0x00cc:
                r0 = r1
                goto L_0x00b3
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.l.a(android.support.v7.widget.RecyclerView$s):void");
        }

        public final void a(View view) {
            s b2 = RecyclerView.b(view);
            if (b2.n()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (b2.d()) {
                b2.e();
            } else if (b2.f()) {
                b2.g();
            }
            a(b2);
        }

        /* JADX WARNING: Removed duplicated region for block: B:30:0x009d  */
        /* JADX WARNING: Removed duplicated region for block: B:50:0x0123  */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x0158  */
        /* JADX WARNING: Removed duplicated region for block: B:65:0x0160  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final android.view.View b(int r12) {
            /*
                r11 = this;
                r5 = 0
                r2 = 1
                r3 = 0
                if (r12 < 0) goto L_0x000f
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r0 = r0.n
                int r0 = r0.a()
                if (r12 < r0) goto L_0x0040
            L_0x000f:
                java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "Invalid item position "
                r1.<init>(r2)
                java.lang.StringBuilder r1 = r1.append(r12)
                java.lang.String r2 = "("
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r1 = r1.append(r12)
                java.lang.String r2 = "). Item count:"
                java.lang.StringBuilder r1 = r1.append(r2)
                android.support.v7.widget.RecyclerView r2 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r2 = r2.n
                int r2 = r2.a()
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x0040:
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r0 = r0.n
                boolean r0 = r0.j
                if (r0 == 0) goto L_0x0285
                android.support.v7.widget.RecyclerView$s r1 = r11.d(r12)
                if (r1 == 0) goto L_0x0087
                r0 = r2
            L_0x004f:
                r10 = r1
                r1 = r0
                r0 = r10
            L_0x0052:
                if (r0 != 0) goto L_0x00b5
                android.support.v7.widget.RecyclerView$s r0 = r11.e(r12)
                if (r0 == 0) goto L_0x00b5
                boolean r4 = r0.m()
                if (r4 != 0) goto L_0x0117
                int r4 = r0.b
                if (r4 < 0) goto L_0x0072
                int r4 = r0.b
                android.support.v7.widget.RecyclerView r6 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r6 = r6.d
                int r6 = r6.b()
                if (r4 < r6) goto L_0x0089
            L_0x0072:
                java.lang.IndexOutOfBoundsException r1 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "Inconsistency detected. Invalid view holder adapter position"
                r2.<init>(r3)
                java.lang.StringBuilder r0 = r2.append(r0)
                java.lang.String r0 = r0.toString()
                r1.<init>(r0)
                throw r1
            L_0x0087:
                r0 = r3
                goto L_0x004f
            L_0x0089:
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r4 = r4.n
                boolean r4 = r4.j
                if (r4 != 0) goto L_0x00fe
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView.a unused = r4.d
                int r4 = r0.e
                if (r4 == 0) goto L_0x00fe
                r4 = r3
            L_0x009b:
                if (r4 != 0) goto L_0x0123
                r4 = 4
                r0.a((int) r4)
                boolean r4 = r0.d()
                if (r4 == 0) goto L_0x0119
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.view.View r6 = r0.a
                r4.removeDetachedView(r6, r3)
                r0.e()
            L_0x00b1:
                r11.a((android.support.v7.widget.RecyclerView.s) r0)
                r0 = r5
            L_0x00b5:
                if (r0 != 0) goto L_0x0281
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                ey r4 = r4.b
                int r4 = r4.a((int) r12)
                if (r4 < 0) goto L_0x00cd
                android.support.v7.widget.RecyclerView r6 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r6 = r6.d
                int r6 = r6.b()
                if (r4 < r6) goto L_0x0125
            L_0x00cd:
                java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "Inconsistency detected. Invalid item position "
                r1.<init>(r2)
                java.lang.StringBuilder r1 = r1.append(r12)
                java.lang.String r2 = "(offset:"
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r1 = r1.append(r4)
                java.lang.String r2 = ").state:"
                java.lang.StringBuilder r1 = r1.append(r2)
                android.support.v7.widget.RecyclerView r2 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r2 = r2.n
                int r2 = r2.a()
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x00fe:
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r4 = r4.d
                boolean r4 = r4.b
                if (r4 == 0) goto L_0x0117
                long r6 = r0.d
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView.a unused = r4.d
                r8 = -1
                int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r4 == 0) goto L_0x0117
                r4 = r3
                goto L_0x009b
            L_0x0117:
                r4 = r2
                goto L_0x009b
            L_0x0119:
                boolean r4 = r0.f()
                if (r4 == 0) goto L_0x00b1
                r0.g()
                goto L_0x00b1
            L_0x0123:
                r1 = r2
                goto L_0x00b5
            L_0x0125:
                android.support.v7.widget.RecyclerView r6 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView.a unused = r6.d
                android.support.v7.widget.RecyclerView r6 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r6 = r6.d
                boolean r6 = r6.b
                if (r6 == 0) goto L_0x027e
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView.a unused = r0.d
                android.support.v7.widget.RecyclerView$s r0 = r11.d()
                if (r0 == 0) goto L_0x027e
                r0.b = r4
                r4 = r2
            L_0x0142:
                if (r0 != 0) goto L_0x016e
                android.support.v7.widget.RecyclerView$q r1 = r11.g
                if (r1 == 0) goto L_0x016e
                android.support.v7.widget.RecyclerView$q r1 = r11.g
                android.view.View r1 = r1.a()
                if (r1 == 0) goto L_0x016e
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$s r0 = r0.a((android.view.View) r1)
                if (r0 != 0) goto L_0x0160
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r1 = "getViewForPositionAndType returned a view which does not have a ViewHolder"
                r0.<init>(r1)
                throw r0
            L_0x0160:
                boolean r1 = r0.b()
                if (r1 == 0) goto L_0x016e
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r1 = "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."
                r0.<init>(r1)
                throw r0
            L_0x016e:
                if (r0 != 0) goto L_0x01ac
                android.support.v7.widget.RecyclerView$k r0 = r11.c()
                android.util.SparseArray<java.util.ArrayList<android.support.v7.widget.RecyclerView$s>> r0 = r0.a
                java.lang.Object r0 = r0.get(r3)
                java.util.ArrayList r0 = (java.util.ArrayList) r0
                if (r0 == 0) goto L_0x01f4
                boolean r1 = r0.isEmpty()
                if (r1 != 0) goto L_0x01f4
                int r1 = r0.size()
                int r5 = r1 + -1
                java.lang.Object r1 = r0.get(r5)
                android.support.v7.widget.RecyclerView$s r1 = (android.support.v7.widget.RecyclerView.s) r1
                r0.remove(r5)
            L_0x0193:
                if (r1 == 0) goto L_0x01ab
                r1.o()
                boolean r0 = android.support.v7.widget.RecyclerView.q
                if (r0 == 0) goto L_0x01ab
                android.view.View r0 = r1.a
                boolean r0 = r0 instanceof android.view.ViewGroup
                if (r0 == 0) goto L_0x01ab
                android.view.View r0 = r1.a
                android.view.ViewGroup r0 = (android.view.ViewGroup) r0
                r11.a(r0, r3)
            L_0x01ab:
                r0 = r1
            L_0x01ac:
                if (r0 != 0) goto L_0x027b
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r0 = r0.d
                java.lang.String r1 = "RV CreateView"
                defpackage.v.a(r1)
                android.support.v7.widget.RecyclerView$s r0 = r0.a()
                r0.e = r3
                r1 = r0
                defpackage.v.a()
            L_0x01c3:
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r0 = r0.n
                boolean r0 = r0.j
                if (r0 == 0) goto L_0x01f6
                boolean r0 = r1.l()
                if (r0 == 0) goto L_0x01f6
                r1.f = r12
                r5 = r3
            L_0x01d4:
                android.view.View r0 = r1.a
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                if (r0 != 0) goto L_0x025a
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.view.ViewGroup$LayoutParams r0 = r0.generateDefaultLayoutParams()
                android.support.v7.widget.RecyclerView$LayoutParams r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0
                android.view.View r6 = r1.a
                r6.setLayoutParams(r0)
            L_0x01e9:
                r0.c = r1
                if (r4 == 0) goto L_0x0275
                if (r5 == 0) goto L_0x0275
            L_0x01ef:
                r0.f = r2
                android.view.View r0 = r1.a
                return r0
            L_0x01f4:
                r1 = r5
                goto L_0x0193
            L_0x01f6:
                boolean r0 = r1.l()
                if (r0 == 0) goto L_0x0208
                boolean r0 = r1.j()
                if (r0 != 0) goto L_0x0208
                boolean r0 = r1.i()
                if (r0 == 0) goto L_0x0278
            L_0x0208:
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                ey r0 = r0.b
                int r0 = r0.a((int) r12)
                android.support.v7.widget.RecyclerView r5 = android.support.v7.widget.RecyclerView.this
                r1.k = r5
                android.support.v7.widget.RecyclerView r5 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r5 = r5.d
                r5.a(r1, r0)
                android.view.View r0 = r1.a
                android.support.v7.widget.RecyclerView r5 = android.support.v7.widget.RecyclerView.this
                android.view.accessibility.AccessibilityManager r5 = r5.I
                if (r5 == 0) goto L_0x024d
                android.support.v7.widget.RecyclerView r5 = android.support.v7.widget.RecyclerView.this
                android.view.accessibility.AccessibilityManager r5 = r5.I
                boolean r5 = r5.isEnabled()
                if (r5 == 0) goto L_0x024d
                int r5 = defpackage.bh.e(r0)
                if (r5 != 0) goto L_0x023c
                defpackage.bh.c((android.view.View) r0, (int) r2)
            L_0x023c:
                boolean r5 = defpackage.bh.b(r0)
                if (r5 != 0) goto L_0x024d
                android.support.v7.widget.RecyclerView r5 = android.support.v7.widget.RecyclerView.this
                fe r5 = r5.ad
                al r5 = r5.b
                defpackage.bh.a((android.view.View) r0, (defpackage.al) r5)
            L_0x024d:
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r0 = r0.n
                boolean r0 = r0.j
                if (r0 == 0) goto L_0x0257
                r1.f = r12
            L_0x0257:
                r5 = r2
                goto L_0x01d4
            L_0x025a:
                android.support.v7.widget.RecyclerView r6 = android.support.v7.widget.RecyclerView.this
                boolean r6 = r6.checkLayoutParams(r0)
                if (r6 != 0) goto L_0x0271
                android.support.v7.widget.RecyclerView r6 = android.support.v7.widget.RecyclerView.this
                android.view.ViewGroup$LayoutParams r0 = r6.generateLayoutParams((android.view.ViewGroup.LayoutParams) r0)
                android.support.v7.widget.RecyclerView$LayoutParams r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0
                android.view.View r6 = r1.a
                r6.setLayoutParams(r0)
                goto L_0x01e9
            L_0x0271:
                android.support.v7.widget.RecyclerView$LayoutParams r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0
                goto L_0x01e9
            L_0x0275:
                r2 = r3
                goto L_0x01ef
            L_0x0278:
                r5 = r3
                goto L_0x01d4
            L_0x027b:
                r1 = r0
                goto L_0x01c3
            L_0x027e:
                r4 = r1
                goto L_0x0142
            L_0x0281:
                r4 = r1
                r1 = r0
                goto L_0x01c3
            L_0x0285:
                r0 = r5
                r1 = r3
                goto L_0x0052
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.l.b(int):android.view.View");
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                c(size);
            }
            this.c.clear();
        }

        /* access modifiers changed from: package-private */
        public final void b(s sVar) {
            if (!sVar.k() || !RecyclerView.this.g() || this.b == null) {
                this.a.remove(sVar);
            } else {
                this.b.remove(sVar);
            }
            sVar.j = null;
            sVar.g();
        }

        /* access modifiers changed from: package-private */
        public final void b(View view) {
            s b2 = RecyclerView.b(view);
            b2.j = null;
            b2.g();
            a(b2);
        }

        /* access modifiers changed from: package-private */
        public final k c() {
            if (this.f == null) {
                this.f = new k();
            }
            return this.f;
        }

        /* access modifiers changed from: package-private */
        public final void c(int i) {
            c(this.c.get(i));
            this.c.remove(i);
        }
    }

    public interface m {
    }

    class n extends c {
        private n() {
        }

        /* synthetic */ n(RecyclerView recyclerView, byte b) {
            this();
        }
    }

    public static abstract class o {
        int a;
        boolean b;
        boolean c;
        View d;
        private RecyclerView e;
        private h f;
        private final a g;

        public static class a {
            int a;
            private int b;
            private int c;
            private int d;
            private Interpolator e;
            private boolean f;
            private int g;

            static /* synthetic */ void a(a aVar, RecyclerView recyclerView) {
                if (aVar.a >= 0) {
                    int i = aVar.a;
                    aVar.a = -1;
                    RecyclerView.c(recyclerView, i);
                    aVar.f = false;
                } else if (!aVar.f) {
                    aVar.g = 0;
                } else if (aVar.e != null && aVar.d <= 0) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                } else if (aVar.d <= 0) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                } else {
                    if (aVar.e != null) {
                        recyclerView.m.a(aVar.b, aVar.c, aVar.d, aVar.e);
                    } else if (aVar.d == Integer.MIN_VALUE) {
                        recyclerView.m.a(aVar.b, aVar.c);
                    } else {
                        recyclerView.m.a(aVar.b, aVar.c, aVar.d);
                    }
                    aVar.g++;
                    if (aVar.g > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    aVar.f = false;
                }
            }
        }

        static /* synthetic */ void a(o oVar) {
            boolean z = false;
            RecyclerView recyclerView = oVar.e;
            if (!oVar.c || oVar.a == -1 || recyclerView == null) {
                oVar.a();
            }
            oVar.b = false;
            if (oVar.d != null) {
                if (RecyclerView.c(oVar.d) == oVar.a) {
                    p pVar = recyclerView.n;
                    a.a(oVar.g, recyclerView);
                    oVar.a();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    oVar.d = null;
                }
            }
            if (oVar.c) {
                p pVar2 = recyclerView.n;
                if (oVar.g.a >= 0) {
                    z = true;
                }
                a.a(oVar.g, recyclerView);
                if (!z) {
                    return;
                }
                if (oVar.c) {
                    oVar.b = true;
                    recyclerView.m.a();
                    return;
                }
                oVar.a();
            }
        }

        /* access modifiers changed from: protected */
        public final void a() {
            if (this.c) {
                this.e.n.a = -1;
                this.d = null;
                this.a = -1;
                this.b = false;
                this.c = false;
                h.a(this.f, this);
                this.f = null;
                this.e = null;
            }
        }
    }

    public static class p {
        int a = -1;
        ab<s, g> b = new ab<>();
        ab<s, g> c = new ab<>();
        ab<Long, s> d = new ab<>();
        final List<View> e = new ArrayList();
        int f = 0;
        int g = 0;
        int h = 0;
        boolean i = false;
        boolean j = false;
        boolean k = false;
        boolean l = false;
        private SparseArray<Object> m;

        public final int a() {
            return this.j ? this.g - this.h : this.f;
        }

        /* access modifiers changed from: package-private */
        public final void a(s sVar) {
            this.b.remove(sVar);
            this.c.remove(sVar);
            if (this.d != null) {
                ab<Long, s> abVar = this.d;
                int size = abVar.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    } else if (sVar == abVar.c(size)) {
                        abVar.d(size);
                        break;
                    } else {
                        size--;
                    }
                }
            }
            this.e.remove(sVar.a);
        }

        /* access modifiers changed from: package-private */
        public final void a(View view) {
            this.e.remove(view);
        }

        /* access modifiers changed from: package-private */
        public final void b(View view) {
            if (!this.e.contains(view)) {
                this.e.add(view);
            }
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.a + ", mPreLayoutHolderMap=" + this.b + ", mPostLayoutHolderMap=" + this.c + ", mData=" + this.m + ", mItemCount=" + this.f + ", mPreviousLayoutItemCount=" + this.g + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.h + ", mStructureChanged=" + this.i + ", mInPreLayout=" + this.j + ", mRunSimpleAnimations=" + this.k + ", mRunPredictiveAnimations=" + this.l + '}';
        }
    }

    public static abstract class q {
        public abstract View a();
    }

    class r implements Runnable {
        int a;
        int b;
        cs c;
        private Interpolator e = RecyclerView.al;
        private boolean f = false;
        private boolean g = false;

        public r() {
            this.c = cs.a(RecyclerView.this.getContext(), RecyclerView.al);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.f) {
                this.g = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            bh.a((View) RecyclerView.this, (Runnable) this);
        }

        public final void a(int i, int i2) {
            int i3;
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt(0.0d);
            int sqrt2 = (int) Math.sqrt((double) ((i * i) + (i2 * i2)));
            int width = z ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            int i4 = width / 2;
            float sin = (((float) Math.sin((double) ((float) (((double) (Math.min(1.0f, (((float) sqrt2) * 1.0f) / ((float) width)) - 0.5f)) * 0.4712389167638204d)))) * ((float) i4)) + ((float) i4);
            if (sqrt > 0) {
                i3 = Math.round(1000.0f * Math.abs(sin / ((float) sqrt))) * 4;
            } else {
                i3 = (int) (((((float) (z ? abs : abs2)) / ((float) width)) + 1.0f) * 300.0f);
            }
            a(i, i2, Math.min(i3, 2000));
        }

        public final void a(int i, int i2, int i3) {
            a(i, i2, i3, RecyclerView.al);
        }

        public final void a(int i, int i2, int i3, Interpolator interpolator) {
            if (this.e != interpolator) {
                this.e = interpolator;
                this.c = cs.a(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.b = 0;
            this.a = 0;
            this.c.a(0, 0, i, i2, i3);
            a();
        }

        /* JADX WARNING: Removed duplicated region for block: B:118:0x028e  */
        /* JADX WARNING: Removed duplicated region for block: B:122:0x029a  */
        /* JADX WARNING: Removed duplicated region for block: B:123:0x029d  */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x0151  */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x0163  */
        /* JADX WARNING: Removed duplicated region for block: B:42:0x0178  */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x017f  */
        /* JADX WARNING: Removed duplicated region for block: B:51:0x0190  */
        /* JADX WARNING: Removed duplicated region for block: B:73:0x01e5  */
        /* JADX WARNING: Removed duplicated region for block: B:79:0x0200  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
                r22 = this;
                r4 = 0
                r0 = r22
                r0.g = r4
                r4 = 1
                r0 = r22
                r0.f = r4
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                r4.l()
                r0 = r22
                cs r11 = r0.c
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$h r4 = r4.e
                android.support.v7.widget.RecyclerView$o r12 = r4.s
                boolean r4 = r11.g()
                if (r4 == 0) goto L_0x022e
                int r13 = r11.b()
                int r14 = r11.c()
                r0 = r22
                int r4 = r0.a
                int r15 = r13 - r4
                r0 = r22
                int r4 = r0.b
                int r16 = r14 - r4
                r7 = 0
                r5 = 0
                r0 = r22
                r0.a = r13
                r0 = r22
                r0.b = r14
                r6 = 0
                r4 = 0
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$a r8 = r8.d
                if (r8 == 0) goto L_0x025a
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                r8.a()
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                r8.q()
                java.lang.String r8 = "RV Scroll"
                defpackage.v.a(r8)
                if (r15 == 0) goto L_0x007e
                r0 = r22
                android.support.v7.widget.RecyclerView r6 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$h r6 = r6.e
                r0 = r22
                android.support.v7.widget.RecyclerView r7 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$l r7 = r7.a
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r8 = r8.n
                int r7 = r6.a((int) r15, (android.support.v7.widget.RecyclerView.l) r7, (android.support.v7.widget.RecyclerView.p) r8)
                int r6 = r15 - r7
            L_0x007e:
                if (r16 == 0) goto L_0x009c
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$h r4 = r4.e
                r0 = r22
                android.support.v7.widget.RecyclerView r5 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$l r5 = r5.a
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r8 = r8.n
                r0 = r16
                int r5 = r4.b(r0, r5, r8)
                int r4 = r16 - r5
            L_0x009c:
                defpackage.v.a()
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                boolean r8 = r8.g()
                if (r8 == 0) goto L_0x0116
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                ez r8 = r8.c
                int r9 = r8.a()
                r8 = 0
            L_0x00b4:
                if (r8 >= r9) goto L_0x0116
                r0 = r22
                android.support.v7.widget.RecyclerView r10 = android.support.v7.widget.RecyclerView.this
                ez r10 = r10.c
                android.view.View r10 = r10.b(r8)
                r0 = r22
                android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
                r17 = r0
                r0 = r17
                android.support.v7.widget.RecyclerView$s r17 = r0.a((android.view.View) r10)
                if (r17 == 0) goto L_0x0113
                r0 = r17
                android.support.v7.widget.RecyclerView$s r0 = r0.h
                r18 = r0
                if (r18 == 0) goto L_0x0113
                r0 = r17
                android.support.v7.widget.RecyclerView$s r0 = r0.h
                r17 = r0
                r0 = r17
                android.view.View r0 = r0.a
                r17 = r0
                int r18 = r10.getLeft()
                int r10 = r10.getTop()
                int r19 = r17.getLeft()
                r0 = r18
                r1 = r19
                if (r0 != r1) goto L_0x00fc
                int r19 = r17.getTop()
                r0 = r19
                if (r10 == r0) goto L_0x0113
            L_0x00fc:
                int r19 = r17.getWidth()
                int r19 = r19 + r18
                int r20 = r17.getHeight()
                int r20 = r20 + r10
                r0 = r17
                r1 = r18
                r2 = r19
                r3 = r20
                r0.layout(r1, r10, r2, r3)
            L_0x0113:
                int r8 = r8 + 1
                goto L_0x00b4
            L_0x0116:
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                r8.r()
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                r9 = 0
                r8.a((boolean) r9)
                if (r12 == 0) goto L_0x025a
                boolean r8 = r12.b
                if (r8 != 0) goto L_0x025a
                boolean r8 = r12.c
                if (r8 == 0) goto L_0x025a
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$p r8 = r8.n
                int r8 = r8.a()
                if (r8 != 0) goto L_0x024f
                r12.a()
                r21 = r6
                r6 = r5
                r5 = r21
            L_0x0143:
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                java.util.ArrayList r8 = r8.y
                boolean r8 = r8.isEmpty()
                if (r8 != 0) goto L_0x0158
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                r8.invalidate()
            L_0x0158:
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                int r8 = defpackage.bh.a((android.view.View) r8)
                r9 = 2
                if (r8 == r9) goto L_0x016c
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                r0 = r16
                r8.a((int) r15, (int) r0)
            L_0x016c:
                if (r5 != 0) goto L_0x0170
                if (r4 == 0) goto L_0x01d0
            L_0x0170:
                float r8 = r11.f()
                int r9 = (int) r8
                r8 = 0
                if (r5 == r13) goto L_0x029d
                if (r5 >= 0) goto L_0x0261
                int r8 = -r9
            L_0x017b:
                r10 = r8
            L_0x017c:
                r8 = 0
                if (r4 == r14) goto L_0x029a
                if (r4 >= 0) goto L_0x0269
                int r9 = -r9
            L_0x0182:
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                int r8 = defpackage.bh.a((android.view.View) r8)
                r17 = 2
                r0 = r17
                if (r8 == r0) goto L_0x01b9
                r0 = r22
                android.support.v7.widget.RecyclerView r8 = android.support.v7.widget.RecyclerView.this
                if (r10 >= 0) goto L_0x026e
                r8.b()
                cm r0 = r8.h
                r17 = r0
                int r0 = -r10
                r18 = r0
                r17.a((int) r18)
            L_0x01a3:
                if (r9 >= 0) goto L_0x027e
                r8.d()
                cm r0 = r8.i
                r17 = r0
                int r0 = -r9
                r18 = r0
                r17.a((int) r18)
            L_0x01b2:
                if (r10 != 0) goto L_0x01b6
                if (r9 == 0) goto L_0x01b9
            L_0x01b6:
                defpackage.bh.d(r8)
            L_0x01b9:
                if (r10 != 0) goto L_0x01c3
                if (r5 == r13) goto L_0x01c3
                int r5 = r11.d()
                if (r5 != 0) goto L_0x01d0
            L_0x01c3:
                if (r9 != 0) goto L_0x01cd
                if (r4 == r14) goto L_0x01cd
                int r4 = r11.e()
                if (r4 != 0) goto L_0x01d0
            L_0x01cd:
                r11.h()
            L_0x01d0:
                if (r7 != 0) goto L_0x01d4
                if (r6 == 0) goto L_0x01db
            L_0x01d4:
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                r4.i()
            L_0x01db:
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                boolean r4 = r4.awakenScrollBars()
                if (r4 != 0) goto L_0x01ec
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                r4.invalidate()
            L_0x01ec:
                if (r16 == 0) goto L_0x028e
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$h r4 = r4.e
                boolean r4 = r4.f()
                if (r4 == 0) goto L_0x028e
                r0 = r16
                if (r6 != r0) goto L_0x028e
                r4 = 1
                r5 = r4
            L_0x0202:
                if (r15 == 0) goto L_0x0292
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                android.support.v7.widget.RecyclerView$h r4 = r4.e
                boolean r4 = r4.e()
                if (r4 == 0) goto L_0x0292
                if (r7 != r15) goto L_0x0292
                r4 = 1
            L_0x0215:
                if (r15 != 0) goto L_0x0219
                if (r16 == 0) goto L_0x021d
            L_0x0219:
                if (r4 != 0) goto L_0x021d
                if (r5 == 0) goto L_0x0294
            L_0x021d:
                r4 = 1
            L_0x021e:
                boolean r5 = r11.a()
                if (r5 != 0) goto L_0x0226
                if (r4 != 0) goto L_0x0296
            L_0x0226:
                r0 = r22
                android.support.v7.widget.RecyclerView r4 = android.support.v7.widget.RecyclerView.this
                r5 = 0
                r4.setScrollState(r5)
            L_0x022e:
                if (r12 == 0) goto L_0x0240
                boolean r4 = r12.b
                if (r4 == 0) goto L_0x0237
                android.support.v7.widget.RecyclerView.o.a(r12)
            L_0x0237:
                r0 = r22
                boolean r4 = r0.g
                if (r4 != 0) goto L_0x0240
                r12.a()
            L_0x0240:
                r4 = 0
                r0 = r22
                r0.f = r4
                r0 = r22
                boolean r4 = r0.g
                if (r4 == 0) goto L_0x024e
                r22.a()
            L_0x024e:
                return
            L_0x024f:
                int r9 = r12.a
                if (r9 < r8) goto L_0x0257
                int r8 = r8 + -1
                r12.a = r8
            L_0x0257:
                android.support.v7.widget.RecyclerView.o.a(r12)
            L_0x025a:
                r21 = r6
                r6 = r5
                r5 = r21
                goto L_0x0143
            L_0x0261:
                if (r5 <= 0) goto L_0x0266
                r8 = r9
                goto L_0x017b
            L_0x0266:
                r8 = 0
                goto L_0x017b
            L_0x0269:
                if (r4 > 0) goto L_0x0182
                r9 = 0
                goto L_0x0182
            L_0x026e:
                if (r10 <= 0) goto L_0x01a3
                r8.c()
                cm r0 = r8.j
                r17 = r0
                r0 = r17
                r0.a((int) r10)
                goto L_0x01a3
            L_0x027e:
                if (r9 <= 0) goto L_0x01b2
                r8.e()
                cm r0 = r8.k
                r17 = r0
                r0 = r17
                r0.a((int) r9)
                goto L_0x01b2
            L_0x028e:
                r4 = 0
                r5 = r4
                goto L_0x0202
            L_0x0292:
                r4 = 0
                goto L_0x0215
            L_0x0294:
                r4 = 0
                goto L_0x021e
            L_0x0296:
                r22.a()
                goto L_0x022e
            L_0x029a:
                r9 = r8
                goto L_0x0182
            L_0x029d:
                r10 = r8
                goto L_0x017c
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.r.run():void");
        }
    }

    public static abstract class s {
        public final View a;
        int b;
        int c;
        long d;
        int e;
        int f;
        s g;
        s h;
        int i;
        l j;
        RecyclerView k;
        private int l;

        static /* synthetic */ boolean a(s sVar) {
            return (sVar.i & 16) != 0;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.c = -1;
            this.f = -1;
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2) {
            this.i |= i2;
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2, int i3) {
            this.i = (this.i & (i3 ^ -1)) | (i2 & i3);
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2, boolean z) {
            if (this.c == -1) {
                this.c = this.b;
            }
            if (this.f == -1) {
                this.f = this.b;
            }
            if (z) {
                this.f += i2;
            }
            this.b += i2;
            if (this.a.getLayoutParams() != null) {
                ((LayoutParams) this.a.getLayoutParams()).e = true;
            }
        }

        public final void a(boolean z) {
            this.l = z ? this.l - 1 : this.l + 1;
            if (this.l < 0) {
                this.l = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && this.l == 1) {
                this.i |= 16;
            } else if (z && this.l == 0) {
                this.i &= -17;
            }
        }

        /* access modifiers changed from: package-private */
        public final boolean b() {
            return (this.i & NotificationCompat.FLAG_HIGH_PRIORITY) != 0;
        }

        public final int c() {
            return this.f == -1 ? this.b : this.f;
        }

        /* access modifiers changed from: package-private */
        public final boolean d() {
            return this.j != null;
        }

        /* access modifiers changed from: package-private */
        public final void e() {
            this.j.b(this);
        }

        /* access modifiers changed from: package-private */
        public final boolean f() {
            return (this.i & 32) != 0;
        }

        /* access modifiers changed from: package-private */
        public final void g() {
            this.i &= -33;
        }

        /* access modifiers changed from: package-private */
        public final void h() {
            this.i &= -257;
        }

        /* access modifiers changed from: package-private */
        public final boolean i() {
            return (this.i & 4) != 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean j() {
            return (this.i & 2) != 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean k() {
            return (this.i & 64) != 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean l() {
            return (this.i & 1) != 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean m() {
            return (this.i & 8) != 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean n() {
            return (this.i & NotificationCompat.FLAG_LOCAL_ONLY) != 0;
        }

        /* access modifiers changed from: package-private */
        public final void o() {
            this.i = 0;
            this.b = -1;
            this.c = -1;
            this.d = -1;
            this.f = -1;
            this.l = 0;
            this.g = null;
            this.h = null;
        }

        public final boolean p() {
            return (this.i & 16) == 0 && !bh.c(this.a);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.b + " id=" + this.d + ", oldPos=" + this.c + ", pLpos:" + this.f);
            if (d()) {
                sb.append(" scrap");
            }
            if (i()) {
                sb.append(" invalid");
            }
            if (!l()) {
                sb.append(" unbound");
            }
            if (j()) {
                sb.append(" update");
            }
            if (m()) {
                sb.append(" removed");
            }
            if (b()) {
                sb.append(" ignored");
            }
            if (k()) {
                sb.append(" changed");
            }
            if (n()) {
                sb.append(" tmpDetached");
            }
            if (!p()) {
                sb.append(" not recyclable(" + this.l + ")");
            }
            if ((this.i & NotificationCompat.FLAG_GROUP_SUMMARY) != 0 || i()) {
                sb.append("undefined adapter position");
            }
            if (this.a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public RecyclerView(Context context) {
        this(context, (AttributeSet) null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Constructor<? extends U> constructor;
        Object[] objArr;
        this.s = new n(this, (byte) 0);
        this.a = new l();
        this.v = new Runnable() {
            public final void run() {
                if (RecyclerView.this.f) {
                    if (RecyclerView.this.g) {
                        v.a("RV FullInvalidate");
                        RecyclerView.this.h();
                        v.a();
                    } else if (RecyclerView.this.b.d()) {
                        v.a("RV PartialInvalidate");
                        RecyclerView.this.a();
                        RecyclerView.this.b.b();
                        if (!RecyclerView.this.E) {
                            RecyclerView recyclerView = RecyclerView.this;
                            int a2 = recyclerView.c.a();
                            int i = 0;
                            while (true) {
                                if (i >= a2) {
                                    break;
                                }
                                s b = RecyclerView.b(recyclerView.c.b(i));
                                if (b != null && !b.b()) {
                                    if (!b.m() && !b.i()) {
                                        if (b.j()) {
                                            if (b.e != 0) {
                                                recyclerView.requestLayout();
                                                break;
                                            } else if (!b.k() || !recyclerView.g()) {
                                                recyclerView.d.a(b, b.b);
                                            } else {
                                                recyclerView.requestLayout();
                                            }
                                        } else {
                                            continue;
                                        }
                                    } else {
                                        recyclerView.requestLayout();
                                    }
                                }
                                i++;
                            }
                        }
                        RecyclerView.this.a(true);
                        v.a();
                    }
                }
            }
        };
        this.w = new Rect();
        this.y = new ArrayList<>();
        this.z = new ArrayList<>();
        this.g = false;
        this.K = 0;
        this.l = new fa();
        this.L = 0;
        this.M = -1;
        this.V = Float.MIN_VALUE;
        this.m = new r();
        this.n = new p();
        this.o = false;
        this.p = false;
        this.ab = new f(this, (byte) 0);
        this.ac = false;
        this.af = new int[2];
        this.ah = new int[2];
        this.ai = new int[2];
        this.aj = new int[2];
        this.ak = new Runnable() {
            public final void run() {
                if (RecyclerView.this.l != null) {
                    RecyclerView.this.l.a();
                }
                boolean unused = RecyclerView.this.ac = false;
            }
        };
        setFocusableInTouchMode(true);
        this.H = Build.VERSION.SDK_INT >= 16;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.S = viewConfiguration.getScaledTouchSlop();
        this.T = viewConfiguration.getScaledMinimumFlingVelocity();
        this.U = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(bh.a((View) this) == 2);
        this.l.h = this.ab;
        this.b = new ey(new ey.a() {
            private void c(ey.b bVar) {
                switch (bVar.a) {
                    case 0:
                        RecyclerView.this.e.a(bVar.b, bVar.c);
                        return;
                    case 1:
                        RecyclerView.this.e.b(bVar.b, bVar.c);
                        return;
                    case 2:
                        RecyclerView.this.e.c(bVar.b, bVar.c);
                        return;
                    case 3:
                        RecyclerView.this.e.d(bVar.b, bVar.c);
                        return;
                    default:
                        return;
                }
            }

            public final s a(int i) {
                s sVar;
                RecyclerView recyclerView = RecyclerView.this;
                int b = recyclerView.c.b();
                int i2 = 0;
                while (true) {
                    if (i2 < b) {
                        sVar = RecyclerView.b(recyclerView.c.c(i2));
                        if (sVar != null && !sVar.m() && sVar.b == i) {
                            break;
                        }
                        i2++;
                    } else {
                        sVar = null;
                        break;
                    }
                }
                if (sVar != null && !RecyclerView.this.c.a(sVar.a)) {
                    return sVar;
                }
                return null;
            }

            public final void a(int i, int i2) {
                RecyclerView.this.a(i, i2, true);
                RecyclerView.this.o = true;
                RecyclerView.this.n.h += i2;
            }

            public final void a(ey.b bVar) {
                c(bVar);
            }

            public final void b(int i, int i2) {
                RecyclerView.this.a(i, i2, false);
                RecyclerView.this.o = true;
            }

            public final void b(ey.b bVar) {
                c(bVar);
            }

            public final void c(int i, int i2) {
                int c;
                RecyclerView recyclerView = RecyclerView.this;
                int b = recyclerView.c.b();
                int i3 = i + i2;
                for (int i4 = 0; i4 < b; i4++) {
                    View c2 = recyclerView.c.c(i4);
                    s b2 = RecyclerView.b(c2);
                    if (b2 != null && !b2.b() && b2.b >= i && b2.b < i3) {
                        b2.a(2);
                        if (recyclerView.g()) {
                            b2.a(64);
                        }
                        ((LayoutParams) c2.getLayoutParams()).e = true;
                    }
                }
                l lVar = recyclerView.a;
                int i5 = i + i2;
                for (int size = lVar.c.size() - 1; size >= 0; size--) {
                    s sVar = lVar.c.get(size);
                    if (sVar != null && (c = sVar.c()) >= i && c < i5) {
                        sVar.a(2);
                        lVar.c(size);
                    }
                }
                RecyclerView.this.p = true;
            }

            public final void d(int i, int i2) {
                RecyclerView recyclerView = RecyclerView.this;
                int b = recyclerView.c.b();
                for (int i3 = 0; i3 < b; i3++) {
                    s b2 = RecyclerView.b(recyclerView.c.c(i3));
                    if (b2 != null && !b2.b() && b2.b >= i) {
                        b2.a(i2, false);
                        recyclerView.n.i = true;
                    }
                }
                l lVar = recyclerView.a;
                int size = lVar.c.size();
                for (int i4 = 0; i4 < size; i4++) {
                    s sVar = lVar.c.get(i4);
                    if (sVar != null && sVar.c() >= i) {
                        sVar.a(i2, true);
                    }
                }
                recyclerView.requestLayout();
                RecyclerView.this.o = true;
            }

            public final void e(int i, int i2) {
                int i3;
                int i4;
                int i5;
                int i6;
                int i7;
                int i8 = -1;
                RecyclerView recyclerView = RecyclerView.this;
                int b = recyclerView.c.b();
                if (i < i2) {
                    i3 = -1;
                    i4 = i2;
                    i5 = i;
                } else {
                    i3 = 1;
                    i4 = i;
                    i5 = i2;
                }
                for (int i9 = 0; i9 < b; i9++) {
                    s b2 = RecyclerView.b(recyclerView.c.c(i9));
                    if (b2 != null && b2.b >= i5 && b2.b <= i4) {
                        if (b2.b == i) {
                            b2.a(i2 - i, false);
                        } else {
                            b2.a(i3, false);
                        }
                        recyclerView.n.i = true;
                    }
                }
                l lVar = recyclerView.a;
                if (i < i2) {
                    i6 = i2;
                    i7 = i;
                } else {
                    i8 = 1;
                    i6 = i;
                    i7 = i2;
                }
                int size = lVar.c.size();
                for (int i10 = 0; i10 < size; i10++) {
                    s sVar = lVar.c.get(i10);
                    if (sVar != null && sVar.b >= i7 && sVar.b <= i6) {
                        if (sVar.b == i) {
                            sVar.a(i2 - i, false);
                        } else {
                            sVar.a(i8, false);
                        }
                    }
                }
                recyclerView.requestLayout();
                RecyclerView.this.o = true;
            }
        });
        this.c = new ez(new ez.b() {
            public final int a() {
                return RecyclerView.this.getChildCount();
            }

            public final int a(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            public final void a(int i) {
                View childAt = RecyclerView.this.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.this.e(childAt);
                }
                RecyclerView.this.removeViewAt(i);
            }

            public final void a(View view, int i) {
                RecyclerView.this.addView(view, i);
                RecyclerView.a(RecyclerView.this, view);
            }

            public final void a(View view, int i, ViewGroup.LayoutParams layoutParams) {
                s b = RecyclerView.b(view);
                if (b != null) {
                    if (b.n() || b.b()) {
                        b.h();
                    } else {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + b);
                    }
                }
                RecyclerView.this.attachViewToParent(view, i, layoutParams);
            }

            public final s b(View view) {
                return RecyclerView.b(view);
            }

            public final View b(int i) {
                return RecyclerView.this.getChildAt(i);
            }

            public final void b() {
                int childCount = RecyclerView.this.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    RecyclerView.this.e(b(i));
                }
                RecyclerView.this.removeAllViews();
            }

            public final void c(int i) {
                s b;
                View b2 = b(i);
                if (!(b2 == null || (b = RecyclerView.b(b2)) == null)) {
                    if (!b.n() || b.b()) {
                        b.a((int) NotificationCompat.FLAG_LOCAL_ONLY);
                    } else {
                        throw new IllegalArgumentException("called detach on an already detached child " + b);
                    }
                }
                RecyclerView.this.detachViewFromParent(i);
            }
        });
        if (bh.e(this) == 0) {
            bh.c((View) this, 1);
        }
        this.I = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new fe(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ev.a.RecyclerView, i2, 0);
            String string = obtainStyledAttributes.getString(ev.a.RecyclerView_layoutManager);
            obtainStyledAttributes.recycle();
            if (string != null) {
                String trim = string.trim();
                if (trim.length() != 0) {
                    String str = trim.charAt(0) == '.' ? context.getPackageName() + trim : trim.contains(".") ? trim : RecyclerView.class.getPackage().getName() + '.' + trim;
                    try {
                        Class<? extends U> asSubclass = (isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).loadClass(str).asSubclass(h.class);
                        try {
                            Constructor<? extends U> constructor2 = asSubclass.getConstructor(r);
                            objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), 0};
                            constructor = constructor2;
                        } catch (NoSuchMethodException e2) {
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        }
                        constructor.setAccessible(true);
                        setLayoutManager((h) constructor.newInstance(objArr));
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(e2);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e3);
                    } catch (ClassNotFoundException e4) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e4);
                    } catch (InvocationTargetException e5) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e5);
                    } catch (InstantiationException e6) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e6);
                    } catch (IllegalAccessException e7) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e7);
                    } catch (ClassCastException e8) {
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e8);
                    }
                }
            }
        }
        this.ag = new az(this);
        setNestedScrollingEnabled(true);
    }

    /* access modifiers changed from: private */
    public void a(int i2, int i3) {
        boolean z2 = false;
        if (this.h != null && !this.h.a() && i2 > 0) {
            z2 = this.h.c();
        }
        if (this.j != null && !this.j.a() && i2 < 0) {
            z2 |= this.j.c();
        }
        if (this.i != null && !this.i.a() && i3 > 0) {
            z2 |= this.i.c();
        }
        if (this.k != null && !this.k.a() && i3 < 0) {
            z2 |= this.k.c();
        }
        if (z2) {
            bh.d(this);
        }
    }

    private void a(ab<View, Rect> abVar) {
        List<View> list = this.n.e;
        for (int size = list.size() - 1; size >= 0; size--) {
            View view = list.get(size);
            s b2 = b(view);
            g remove = this.n.b.remove(b2);
            if (!this.n.j) {
                this.n.c.remove(b2);
            }
            if (abVar.remove(view) != null) {
                this.e.a(view, this.a);
            } else if (remove != null) {
                a(remove);
            } else {
                a(new g(b2, view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            }
        }
        list.clear();
    }

    private void a(g gVar) {
        View view = gVar.a.a;
        a(gVar.a);
        int i2 = gVar.b;
        int i3 = gVar.c;
        int left = view.getLeft();
        int top = view.getTop();
        if (gVar.a.m() || (i2 == left && i3 == top)) {
            gVar.a.a(false);
            this.l.a(gVar.a);
            s();
            return;
        }
        gVar.a.a(false);
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        if (this.l.a(gVar.a, i2, i3, left, top)) {
            s();
        }
    }

    private void a(s sVar) {
        View view = sVar.a;
        boolean z2 = view.getParent() == this;
        this.a.b(a(view));
        if (sVar.n()) {
            this.c.a(view, -1, view.getLayoutParams(), true);
        } else if (!z2) {
            this.c.a(view, -1, true);
        } else {
            ez ezVar = this.c;
            int a2 = ezVar.a.a(view);
            if (a2 < 0) {
                throw new IllegalArgumentException("view is not a child, cannot hide " + view);
            }
            ezVar.b.a(a2);
            ezVar.c.add(view);
        }
    }

    static /* synthetic */ void a(RecyclerView recyclerView, View view) {
        b(view);
        if (recyclerView.J != null) {
            for (int size = recyclerView.J.size() - 1; size >= 0; size--) {
                recyclerView.J.get(size);
            }
        }
    }

    private void a(MotionEvent motionEvent) {
        int b2 = ax.b(motionEvent);
        if (ax.b(motionEvent, b2) == this.M) {
            int i2 = b2 == 0 ? 1 : 0;
            this.M = ax.b(motionEvent, i2);
            int c2 = (int) (ax.c(motionEvent, i2) + 0.5f);
            this.Q = c2;
            this.O = c2;
            int d2 = (int) (ax.d(motionEvent, i2) + 0.5f);
            this.R = d2;
            this.P = d2;
        }
    }

    private boolean a(int i2, int i3, MotionEvent motionEvent) {
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        l();
        if (this.d != null) {
            a();
            q();
            v.a("RV Scroll");
            if (i2 != 0) {
                i6 = this.e.a(i2, this.a, this.n);
                i4 = i2 - i6;
            }
            if (i3 != 0) {
                i7 = this.e.b(i3, this.a, this.n);
                i5 = i3 - i7;
            }
            v.a();
            if (g()) {
                int a2 = this.c.a();
                for (int i8 = 0; i8 < a2; i8++) {
                    View b2 = this.c.b(i8);
                    s a3 = a(b2);
                    if (!(a3 == null || a3.h == null)) {
                        s sVar = a3.h;
                        View view = sVar != null ? sVar.a : null;
                        if (view != null) {
                            int left = b2.getLeft();
                            int top = b2.getTop();
                            if (left != view.getLeft() || top != view.getTop()) {
                                view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                            }
                        }
                    }
                }
            }
            r();
            a(false);
        }
        int i9 = i5;
        int i10 = i6;
        int i11 = i7;
        if (!this.y.isEmpty()) {
            invalidate();
        }
        if (dispatchNestedScroll(i10, i11, i4, i9, this.ah)) {
            this.Q -= this.ah[0];
            this.R -= this.ah[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation((float) this.ah[0], (float) this.ah[1]);
            }
            int[] iArr = this.aj;
            iArr[0] = iArr[0] + this.ah[0];
            int[] iArr2 = this.aj;
            iArr2[1] = iArr2[1] + this.ah[1];
        } else if (bh.a((View) this) != 2) {
            if (motionEvent != null) {
                float x2 = motionEvent.getX();
                float f2 = (float) i4;
                float y2 = motionEvent.getY();
                float f3 = (float) i9;
                boolean z2 = false;
                if (f2 < 0.0f) {
                    b();
                    if (this.h.a((-f2) / ((float) getWidth()), 1.0f - (y2 / ((float) getHeight())))) {
                        z2 = true;
                    }
                } else if (f2 > 0.0f) {
                    c();
                    if (this.j.a(f2 / ((float) getWidth()), y2 / ((float) getHeight()))) {
                        z2 = true;
                    }
                }
                if (f3 < 0.0f) {
                    d();
                    if (this.i.a((-f3) / ((float) getHeight()), x2 / ((float) getWidth()))) {
                        z2 = true;
                    }
                } else if (f3 > 0.0f) {
                    e();
                    if (this.k.a(f3 / ((float) getHeight()), 1.0f - (x2 / ((float) getWidth())))) {
                        z2 = true;
                    }
                }
                if (!(!z2 && f2 == 0.0f && f3 == 0.0f)) {
                    bh.d(this);
                }
            }
            a(i2, i3);
        }
        if (!(i10 == 0 && i11 == 0)) {
            i();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i10 == 0 && i11 == 0) ? false : true;
    }

    private long b(s sVar) {
        return this.d.b ? sVar.d : (long) sVar.b;
    }

    static s b(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).c;
    }

    private void b(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        switch (mode) {
            case Integer.MIN_VALUE:
            case 1073741824:
                break;
            default:
                size = bh.q(this);
                break;
        }
        switch (mode2) {
            case Integer.MIN_VALUE:
            case 1073741824:
                break;
            default:
                size2 = bh.r(this);
                break;
        }
        setMeasuredDimension(size, size2);
    }

    public static int c(View view) {
        s b2 = b(view);
        if (b2 != null) {
            return b2.c();
        }
        return -1;
    }

    static /* synthetic */ void c(RecyclerView recyclerView, int i2) {
        if (recyclerView.e != null) {
            recyclerView.e.b(i2);
            recyclerView.awakenScrollBars();
        }
    }

    private boolean c(int i2, int i3) {
        int c2;
        int a2 = this.c.a();
        if (a2 == 0) {
            return (i2 == 0 && i3 == 0) ? false : true;
        }
        for (int i4 = 0; i4 < a2; i4++) {
            s b2 = b(this.c.b(i4));
            if (!b2.b() && ((c2 = b2.c()) < i2 || c2 > i3)) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean c(RecyclerView recyclerView, View view) {
        boolean z2 = true;
        recyclerView.a();
        ez ezVar = recyclerView.c;
        int a2 = ezVar.a.a(view);
        if (a2 == -1) {
            ezVar.c.remove(view);
        } else if (ezVar.b.b(a2)) {
            ezVar.b.c(a2);
            ezVar.c.remove(view);
            ezVar.a.a(a2);
        } else {
            z2 = false;
        }
        if (z2) {
            s b2 = b(view);
            recyclerView.a.b(b2);
            recyclerView.a.a(b2);
        }
        recyclerView.a(false);
        return z2;
    }

    /* access modifiers changed from: private */
    public void e(View view) {
        b(view);
        if (this.J != null) {
            for (int size = this.J.size() - 1; size >= 0; size--) {
                this.J.get(size);
            }
        }
    }

    private float getScrollFactor() {
        if (this.V == Float.MIN_VALUE) {
            TypedValue typedValue = new TypedValue();
            if (!getContext().getTheme().resolveAttribute(16842829, typedValue, true)) {
                return 0.0f;
            }
            this.V = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
        }
        return this.V;
    }

    /* access modifiers changed from: private */
    public void l() {
        this.v.run();
    }

    private void m() {
        r rVar = this.m;
        RecyclerView.this.removeCallbacks(rVar);
        rVar.c.h();
        if (this.e != null) {
            this.e.r();
        }
    }

    private void n() {
        boolean z2 = false;
        if (this.h != null) {
            z2 = this.h.c();
        }
        if (this.i != null) {
            z2 |= this.i.c();
        }
        if (this.j != null) {
            z2 |= this.j.c();
        }
        if (this.k != null) {
            z2 |= this.k.c();
        }
        if (z2) {
            bh.d(this);
        }
    }

    private void o() {
        this.k = null;
        this.i = null;
        this.j = null;
        this.h = null;
    }

    private void p() {
        if (this.N != null) {
            this.N.clear();
        }
        stopNestedScroll();
        n();
        setScrollState(0);
    }

    /* access modifiers changed from: private */
    public void q() {
        this.K++;
    }

    /* access modifiers changed from: private */
    public void r() {
        this.K--;
        if (this.K <= 0) {
            this.K = 0;
            int i2 = this.F;
            this.F = 0;
            if (i2 != 0 && this.I != null && this.I.isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(2048);
                by.a(obtain, i2);
                sendAccessibilityEventUnchecked(obtain);
            }
        }
    }

    private void s() {
        if (!this.ac && this.B) {
            bh.a((View) this, this.ak);
            this.ac = true;
        }
    }

    /* access modifiers changed from: private */
    public void setScrollState(int i2) {
        if (i2 != this.L) {
            this.L = i2;
            if (i2 != 2) {
                m();
            }
            if (this.e != null) {
                this.e.f(i2);
            }
            if (this.aa != null) {
                for (int size = this.aa.size() - 1; size >= 0; size--) {
                    this.aa.get(size);
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:43:0x007b, code lost:
        if ((r5.l != null && r5.e.c()) != false) goto L_0x007d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void t() {
        /*
            r5 = this;
            r2 = 1
            r1 = 0
            boolean r0 = r5.g
            if (r0 == 0) goto L_0x0013
            ey r0 = r5.b
            r0.a()
            r5.v()
            android.support.v7.widget.RecyclerView$h r0 = r5.e
            r0.a()
        L_0x0013:
            android.support.v7.widget.RecyclerView$e r0 = r5.l
            if (r0 == 0) goto L_0x0080
            android.support.v7.widget.RecyclerView$h r0 = r5.e
            boolean r0 = r0.c()
            if (r0 == 0) goto L_0x0080
            ey r0 = r5.b
            r0.b()
        L_0x0024:
            boolean r0 = r5.o
            if (r0 == 0) goto L_0x002c
            boolean r0 = r5.p
            if (r0 == 0) goto L_0x003a
        L_0x002c:
            boolean r0 = r5.o
            if (r0 != 0) goto L_0x003a
            boolean r0 = r5.p
            if (r0 == 0) goto L_0x0086
            boolean r0 = r5.g()
            if (r0 == 0) goto L_0x0086
        L_0x003a:
            r0 = r2
        L_0x003b:
            android.support.v7.widget.RecyclerView$p r4 = r5.n
            boolean r3 = r5.f
            if (r3 == 0) goto L_0x0088
            android.support.v7.widget.RecyclerView$e r3 = r5.l
            if (r3 == 0) goto L_0x0088
            boolean r3 = r5.g
            if (r3 != 0) goto L_0x0053
            if (r0 != 0) goto L_0x0053
            android.support.v7.widget.RecyclerView$h r3 = r5.e
            boolean r3 = r3.t
            if (r3 == 0) goto L_0x0088
        L_0x0053:
            boolean r3 = r5.g
            if (r3 == 0) goto L_0x005d
            android.support.v7.widget.RecyclerView$a r3 = r5.d
            boolean r3 = r3.b
            if (r3 == 0) goto L_0x0088
        L_0x005d:
            r3 = r2
        L_0x005e:
            r4.k = r3
            android.support.v7.widget.RecyclerView$p r3 = r5.n
            android.support.v7.widget.RecyclerView$p r4 = r5.n
            boolean r4 = r4.k
            if (r4 == 0) goto L_0x008c
            if (r0 == 0) goto L_0x008c
            boolean r0 = r5.g
            if (r0 != 0) goto L_0x008c
            android.support.v7.widget.RecyclerView$e r0 = r5.l
            if (r0 == 0) goto L_0x008a
            android.support.v7.widget.RecyclerView$h r0 = r5.e
            boolean r0 = r0.c()
            if (r0 == 0) goto L_0x008a
            r0 = r2
        L_0x007b:
            if (r0 == 0) goto L_0x008c
        L_0x007d:
            r3.l = r2
            return
        L_0x0080:
            ey r0 = r5.b
            r0.e()
            goto L_0x0024
        L_0x0086:
            r0 = r1
            goto L_0x003b
        L_0x0088:
            r3 = r1
            goto L_0x005e
        L_0x008a:
            r0 = r1
            goto L_0x007b
        L_0x008c:
            r2 = r1
            goto L_0x007d
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.t():void");
    }

    private void u() {
        int b2 = this.c.b();
        for (int i2 = 0; i2 < b2; i2++) {
            s b3 = b(this.c.c(i2));
            if (!b3.b()) {
                b3.a();
            }
        }
        l lVar = this.a;
        int size = lVar.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            lVar.c.get(i3).a();
        }
        int size2 = lVar.a.size();
        for (int i4 = 0; i4 < size2; i4++) {
            lVar.a.get(i4).a();
        }
        if (lVar.b != null) {
            int size3 = lVar.b.size();
            for (int i5 = 0; i5 < size3; i5++) {
                lVar.b.get(i5).a();
            }
        }
    }

    private void v() {
        int b2 = this.c.b();
        for (int i2 = 0; i2 < b2; i2++) {
            s b3 = b(this.c.c(i2));
            if (b3 != null && !b3.b()) {
                b3.a(6);
            }
        }
        int b4 = this.c.b();
        for (int i3 = 0; i3 < b4; i3++) {
            ((LayoutParams) this.c.c(i3).getLayoutParams()).e = true;
        }
        l lVar = this.a;
        int size = lVar.c.size();
        for (int i4 = 0; i4 < size; i4++) {
            LayoutParams layoutParams = (LayoutParams) lVar.c.get(i4).a.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.e = true;
            }
        }
        l lVar2 = this.a;
        if (RecyclerView.this.d == null || !RecyclerView.this.d.b) {
            lVar2.b();
            return;
        }
        int size2 = lVar2.c.size();
        for (int i5 = 0; i5 < size2; i5++) {
            s sVar = lVar2.c.get(i5);
            if (sVar != null) {
                sVar.a(6);
            }
        }
    }

    public final s a(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return b(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (!this.D) {
            this.D = true;
            this.E = false;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int b2 = this.c.b();
        for (int i5 = 0; i5 < b2; i5++) {
            s b3 = b(this.c.c(i5));
            if (b3 != null && !b3.b()) {
                if (b3.b >= i4) {
                    b3.a(-i3, z2);
                    this.n.i = true;
                } else if (b3.b >= i2) {
                    b3.a(8);
                    b3.a(-i3, z2);
                    b3.b = i2 - 1;
                    this.n.i = true;
                }
            }
        }
        l lVar = this.a;
        int i6 = i2 + i3;
        for (int size = lVar.c.size() - 1; size >= 0; size--) {
            s sVar = lVar.c.get(size);
            if (sVar != null) {
                if (sVar.c() >= i6) {
                    sVar.a(-i3, z2);
                } else if (sVar.c() >= i2) {
                    sVar.a(8);
                    lVar.c(size);
                }
            }
        }
        requestLayout();
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean z2) {
        if (this.D) {
            if (z2 && this.E && this.e != null && this.d != null) {
                h();
            }
            this.D = false;
            this.E = false;
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        super.addFocusables(arrayList, i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (this.h == null) {
            this.h = new cm(getContext());
            if (this.u) {
                this.h.a((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.h.a(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if (this.j == null) {
            this.j = new cm(getContext());
            if (this.u) {
                this.j.a((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.j.a(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.e.a((LayoutParams) layoutParams);
    }

    public int computeHorizontalScrollExtent() {
        if (this.e.e()) {
            return this.e.c(this.n);
        }
        return 0;
    }

    public int computeHorizontalScrollOffset() {
        if (this.e.e()) {
            return this.e.a(this.n);
        }
        return 0;
    }

    public int computeHorizontalScrollRange() {
        if (this.e.e()) {
            return this.e.e(this.n);
        }
        return 0;
    }

    public int computeVerticalScrollExtent() {
        if (this.e.f()) {
            return this.e.d(this.n);
        }
        return 0;
    }

    public int computeVerticalScrollOffset() {
        if (this.e.f()) {
            return this.e.b(this.n);
        }
        return 0;
    }

    public int computeVerticalScrollRange() {
        if (this.e.f()) {
            return this.e.f(this.n);
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final Rect d(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.e) {
            return layoutParams.d;
        }
        Rect rect = layoutParams.d;
        rect.set(0, 0, 0, 0);
        int size = this.y.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.w.set(0, 0, 0, 0);
            this.y.get(i2);
            Rect rect2 = this.w;
            view.getLayoutParams();
            rect2.set(0, 0, 0, 0);
            rect.left += this.w.left;
            rect.top += this.w.top;
            rect.right += this.w.right;
            rect.bottom += this.w.bottom;
        }
        layoutParams.e = false;
        return rect;
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        if (this.i == null) {
            this.i = new cm(getContext());
            if (this.u) {
                this.i.a((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.i.a(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return this.ag.a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.ag.a(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.ag.a(i2, i3, iArr, iArr2);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.ag.a(i2, i3, i4, i5, iArr);
    }

    /* access modifiers changed from: protected */
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    /* access modifiers changed from: protected */
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3 = true;
        boolean z4 = false;
        super.draw(canvas);
        int size = this.y.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.y.get(i2);
        }
        if (this.h == null || this.h.a()) {
            z2 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.u ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((float) (paddingBottom + (-getHeight())), 0.0f);
            z2 = this.h != null && this.h.a(canvas);
            canvas.restoreToCount(save);
        }
        if (this.i != null && !this.i.a()) {
            int save2 = canvas.save();
            if (this.u) {
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            }
            z2 |= this.i != null && this.i.a(canvas);
            canvas.restoreToCount(save2);
        }
        if (this.j != null && !this.j.a()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.u ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate((float) (-paddingTop), (float) (-width));
            z2 |= this.j != null && this.j.a(canvas);
            canvas.restoreToCount(save3);
        }
        if (this.k != null && !this.k.a()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.u) {
                canvas.translate((float) ((-getWidth()) + getPaddingRight()), (float) ((-getHeight()) + getPaddingBottom()));
            } else {
                canvas.translate((float) (-getWidth()), (float) (-getHeight()));
            }
            if (this.k != null && this.k.a(canvas)) {
                z4 = true;
            }
            z2 |= z4;
            canvas.restoreToCount(save4);
        }
        if (z2 || this.l == null || this.y.size() <= 0 || !this.l.b()) {
            z3 = z2;
        }
        if (z3) {
            bh.d(this);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        if (this.k == null) {
            this.k = new cm(getContext());
            if (this.u) {
                this.k.a((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.k.a(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public final boolean f() {
        return this.K > 0;
    }

    public View focusSearch(View view, int i2) {
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i2);
        if (findNextFocus == null && this.d != null && this.e != null && !f()) {
            a();
            findNextFocus = this.e.c(i2, this.a, this.n);
            a(false);
        }
        return findNextFocus != null ? findNextFocus : super.focusSearch(view, i2);
    }

    /* access modifiers changed from: package-private */
    public final boolean g() {
        return this.l != null && this.l.m;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.e != null) {
            return this.e.b();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager");
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.e != null) {
            return this.e.a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager");
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.e != null) {
            return this.e.a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager");
    }

    public a getAdapter() {
        return this.d;
    }

    public int getBaseline() {
        if (this.e != null) {
            return -1;
        }
        return super.getBaseline();
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        return this.ae == null ? super.getChildDrawingOrder(i2, i3) : this.ae.a();
    }

    public fe getCompatAccessibilityDelegate() {
        return this.ad;
    }

    public e getItemAnimator() {
        return this.l;
    }

    public h getLayoutManager() {
        return this.e;
    }

    public int getMaxFlingVelocity() {
        return this.U;
    }

    public int getMinFlingVelocity() {
        return this.T;
    }

    public k getRecycledViewPool() {
        return this.a.c();
    }

    public int getScrollState() {
        return this.L;
    }

    /* access modifiers changed from: package-private */
    public final void h() {
        int i2;
        ab abVar;
        int i3;
        int i4;
        boolean z2;
        if (this.d == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.e == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            this.n.e.clear();
            a();
            q();
            t();
            this.n.d = (!this.n.k || !this.p || !g()) ? null : new ab<>();
            this.p = false;
            this.o = false;
            this.n.j = this.n.l;
            this.n.f = this.d.b();
            int[] iArr = this.af;
            int a2 = this.c.a();
            if (a2 == 0) {
                iArr[0] = 0;
                iArr[1] = 0;
            } else {
                int i5 = Integer.MAX_VALUE;
                int i6 = Integer.MIN_VALUE;
                int i7 = 0;
                while (i7 < a2) {
                    s b2 = b(this.c.b(i7));
                    if (!b2.b()) {
                        i2 = b2.c();
                        if (i2 < i5) {
                            i5 = i2;
                        }
                        if (i2 > i6) {
                            i7++;
                            i5 = i5;
                            i6 = i2;
                        }
                    }
                    i2 = i6;
                    i7++;
                    i5 = i5;
                    i6 = i2;
                }
                iArr[0] = i5;
                iArr[1] = i6;
            }
            if (this.n.k) {
                this.n.b.clear();
                this.n.c.clear();
                int a3 = this.c.a();
                for (int i8 = 0; i8 < a3; i8++) {
                    s b3 = b(this.c.b(i8));
                    if (!b3.b() && (!b3.i() || this.d.b)) {
                        View view = b3.a;
                        this.n.b.put(b3, new g(b3, view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                    }
                }
            }
            if (this.n.l) {
                int b4 = this.c.b();
                for (int i9 = 0; i9 < b4; i9++) {
                    s b5 = b(this.c.c(i9));
                    if (!b5.b() && b5.c == -1) {
                        b5.c = b5.b;
                    }
                }
                if (this.n.d != null) {
                    int a4 = this.c.a();
                    for (int i10 = 0; i10 < a4; i10++) {
                        s b6 = b(this.c.b(i10));
                        if (b6.k() && !b6.m() && !b6.b()) {
                            this.n.d.put(Long.valueOf(b(b6)), b6);
                            this.n.b.remove(b6);
                        }
                    }
                }
                boolean z3 = this.n.i;
                this.n.i = false;
                this.e.c(this.a, this.n);
                this.n.i = z3;
                ab abVar2 = new ab();
                for (int i11 = 0; i11 < this.c.a(); i11++) {
                    View b7 = this.c.b(i11);
                    if (!b(b7).b()) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= this.n.b.size()) {
                                z2 = false;
                                break;
                            } else if (this.n.b.b(i12).a == b7) {
                                z2 = true;
                                break;
                            } else {
                                i12++;
                            }
                        }
                        if (!z2) {
                            abVar2.put(b7, new Rect(b7.getLeft(), b7.getTop(), b7.getRight(), b7.getBottom()));
                        }
                    }
                }
                u();
                this.b.c();
                abVar = abVar2;
            } else {
                u();
                this.b.e();
                if (this.n.d != null) {
                    int a5 = this.c.a();
                    for (int i13 = 0; i13 < a5; i13++) {
                        s b8 = b(this.c.b(i13));
                        if (b8.k() && !b8.m() && !b8.b()) {
                            this.n.d.put(Long.valueOf(b(b8)), b8);
                            this.n.b.remove(b8);
                        }
                    }
                }
                abVar = null;
            }
            this.n.f = this.d.b();
            this.n.h = 0;
            this.n.j = false;
            this.e.c(this.a, this.n);
            this.n.i = false;
            this.t = null;
            this.n.k = this.n.k && this.l != null;
            if (this.n.k) {
                ab abVar3 = this.n.d != null ? new ab() : null;
                int a6 = this.c.a();
                for (int i14 = 0; i14 < a6; i14++) {
                    s b9 = b(this.c.b(i14));
                    if (!b9.b()) {
                        View view2 = b9.a;
                        long b10 = b(b9);
                        if (abVar3 == null || this.n.d.get(Long.valueOf(b10)) == null) {
                            this.n.c.put(b9, new g(b9, view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom()));
                        } else {
                            abVar3.put(Long.valueOf(b10), b9);
                        }
                    }
                }
                a((ab<View, Rect>) abVar);
                for (int size = this.n.b.size() - 1; size >= 0; size--) {
                    if (!this.n.c.containsKey(this.n.b.b(size))) {
                        g c2 = this.n.b.c(size);
                        this.n.b.d(size);
                        this.a.b(c2.a);
                        a(c2);
                    }
                }
                int size2 = this.n.c.size();
                if (size2 > 0) {
                    for (int i15 = size2 - 1; i15 >= 0; i15--) {
                        s b11 = this.n.c.b(i15);
                        g c3 = this.n.c.c(i15);
                        if (this.n.b.isEmpty() || !this.n.b.containsKey(b11)) {
                            this.n.c.d(i15);
                            Rect rect = abVar != null ? (Rect) abVar.get(b11.a) : null;
                            int i16 = c3.b;
                            int i17 = c3.c;
                            if (rect == null || (rect.left == i16 && rect.top == i17)) {
                                b11.a(false);
                                this.l.b(b11);
                                s();
                            } else {
                                b11.a(false);
                                if (this.l.a(b11, rect.left, rect.top, i16, i17)) {
                                    s();
                                }
                            }
                        }
                    }
                }
                int size3 = this.n.c.size();
                for (int i18 = 0; i18 < size3; i18++) {
                    s b12 = this.n.c.b(i18);
                    g c4 = this.n.c.c(i18);
                    g gVar = this.n.b.get(b12);
                    if (!(gVar == null || c4 == null || (gVar.b == c4.b && gVar.c == c4.c))) {
                        b12.a(false);
                        if (this.l.a(b12, gVar.b, gVar.c, c4.b, c4.c)) {
                            s();
                        }
                    }
                }
                for (int size4 = (this.n.d != null ? this.n.d.size() : 0) - 1; size4 >= 0; size4--) {
                    long longValue = this.n.d.b(size4).longValue();
                    s sVar = this.n.d.get(Long.valueOf(longValue));
                    if (!sVar.b() && this.a.b != null && this.a.b.contains(sVar)) {
                        s sVar2 = (s) abVar3.get(Long.valueOf(longValue));
                        sVar.a(false);
                        a(sVar);
                        sVar.g = sVar2;
                        this.a.b(sVar);
                        int left = sVar.a.getLeft();
                        int top = sVar.a.getTop();
                        if (sVar2 == null || sVar2.b()) {
                            i3 = top;
                            i4 = left;
                        } else {
                            i4 = sVar2.a.getLeft();
                            i3 = sVar2.a.getTop();
                            sVar2.a(false);
                            sVar2.h = sVar;
                        }
                        this.l.a(sVar, sVar2, left, top, i4, i3);
                        s();
                    }
                }
            }
            a(false);
            this.e.b(this.a);
            this.n.g = this.n.f;
            this.g = false;
            this.n.k = false;
            this.n.l = false;
            r();
            boolean unused = this.e.t = false;
            if (this.a.b != null) {
                this.a.b.clear();
            }
            this.n.d = null;
            if (c(this.af[0], this.af[1])) {
                i();
            }
        }
    }

    public boolean hasNestedScrollingParent() {
        return this.ag.a();
    }

    /* access modifiers changed from: package-private */
    public final void i() {
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        if (this.aa != null) {
            for (int size = this.aa.size() - 1; size >= 0; size--) {
                this.aa.get(size);
            }
        }
    }

    public boolean isAttachedToWindow() {
        return this.B;
    }

    public boolean isNestedScrollingEnabled() {
        return this.ag.a;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.K = 0;
        this.B = true;
        this.f = false;
        if (this.e != null) {
            this.e.u = true;
        }
        this.ac = false;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.l != null) {
            this.l.d();
        }
        this.f = false;
        setScrollState(0);
        m();
        this.B = false;
        if (this.e != null) {
            this.e.b(this, this.a);
        }
        removeCallbacks(this.ak);
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.y.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.y.get(i2);
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (!(this.e == null || (ax.d(motionEvent) & 2) == 0 || motionEvent.getAction() != 8)) {
            float f2 = this.e.f() ? -ax.e(motionEvent, 9) : 0.0f;
            float e2 = this.e.e() ? ax.e(motionEvent, 10) : 0.0f;
            if (!(f2 == 0.0f && e2 == 0.0f)) {
                float scrollFactor = getScrollFactor();
                a((int) (e2 * scrollFactor), (int) (f2 * scrollFactor), motionEvent);
            }
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3;
        int i2 = -1;
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.A = null;
        }
        int size = this.z.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                z2 = false;
                break;
            }
            i iVar = this.z.get(i3);
            if (iVar.a() && action != 3) {
                this.A = iVar;
                z2 = true;
                break;
            }
            i3++;
        }
        if (z2) {
            p();
            return true;
        } else if (this.e == null) {
            return false;
        } else {
            boolean e2 = this.e.e();
            boolean f2 = this.e.f();
            if (this.N == null) {
                this.N = VelocityTracker.obtain();
            }
            this.N.addMovement(motionEvent);
            int a2 = ax.a(motionEvent);
            int b2 = ax.b(motionEvent);
            switch (a2) {
                case 0:
                    this.M = ax.b(motionEvent, 0);
                    int x2 = (int) (motionEvent.getX() + 0.5f);
                    this.Q = x2;
                    this.O = x2;
                    int y2 = (int) (motionEvent.getY() + 0.5f);
                    this.R = y2;
                    this.P = y2;
                    if (this.L == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                    }
                    int i4 = e2 ? 1 : 0;
                    if (f2) {
                        i4 |= 2;
                    }
                    startNestedScroll(i4);
                    break;
                case 1:
                    this.N.clear();
                    stopNestedScroll();
                    break;
                case 2:
                    int a3 = ax.a(motionEvent, this.M);
                    if (a3 >= 0) {
                        int c2 = (int) (ax.c(motionEvent, a3) + 0.5f);
                        int d2 = (int) (ax.d(motionEvent, a3) + 0.5f);
                        if (this.L != 1) {
                            int i5 = c2 - this.O;
                            int i6 = d2 - this.P;
                            if (!e2 || Math.abs(i5) <= this.S) {
                                z3 = false;
                            } else {
                                this.Q = ((i5 < 0 ? -1 : 1) * this.S) + this.O;
                                z3 = true;
                            }
                            if (f2 && Math.abs(i6) > this.S) {
                                int i7 = this.P;
                                int i8 = this.S;
                                if (i6 >= 0) {
                                    i2 = 1;
                                }
                                this.R = i7 + (i2 * i8);
                                z3 = true;
                            }
                            if (z3) {
                                setScrollState(1);
                                break;
                            }
                        }
                    } else {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.M + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    break;
                case 3:
                    p();
                    break;
                case 5:
                    this.M = ax.b(motionEvent, b2);
                    int c3 = (int) (ax.c(motionEvent, b2) + 0.5f);
                    this.Q = c3;
                    this.O = c3;
                    int d3 = (int) (ax.d(motionEvent, b2) + 0.5f);
                    this.R = d3;
                    this.P = d3;
                    break;
                case 6:
                    a(motionEvent);
                    break;
            }
            return this.L == 1;
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        a();
        v.a("RV OnLayout");
        h();
        v.a();
        a(false);
        this.f = true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (this.G) {
            a();
            t();
            if (this.n.l) {
                this.n.j = true;
            } else {
                this.b.e();
                this.n.j = false;
            }
            this.G = false;
            a(false);
        }
        if (this.d != null) {
            this.n.f = this.d.b();
        } else {
            this.n.f = 0;
        }
        if (this.e == null) {
            b(i2, i3);
        } else {
            this.e.r.b(i2, i3);
        }
        this.n.j = false;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        this.t = (SavedState) parcelable;
        super.onRestoreInstanceState(this.t.getSuperState());
        if (this.e != null && this.t.a != null) {
            this.e.a(this.t.a);
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.t != null) {
            savedState.a = this.t.a;
        } else if (this.e != null) {
            savedState.a = this.e.d();
        } else {
            savedState.a = null;
        }
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 || i3 != i5) {
            o();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:86:0x01da, code lost:
        if (r0 != false) goto L_0x01df;
     */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0046  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r13) {
        /*
            r12 = this;
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = 0
            r11 = 1056964608(0x3f000000, float:0.5)
            r8 = 1
            r1 = 0
            int r0 = r13.getAction()
            android.support.v7.widget.RecyclerView$i r3 = r12.A
            if (r3 == 0) goto L_0x0014
            if (r0 != 0) goto L_0x0036
            r3 = 0
            r12.A = r3
        L_0x0014:
            if (r0 == 0) goto L_0x0044
            java.util.ArrayList<android.support.v7.widget.RecyclerView$i> r0 = r12.z
            int r5 = r0.size()
            r3 = r1
        L_0x001d:
            if (r3 >= r5) goto L_0x0044
            java.util.ArrayList<android.support.v7.widget.RecyclerView$i> r0 = r12.z
            java.lang.Object r0 = r0.get(r3)
            android.support.v7.widget.RecyclerView$i r0 = (android.support.v7.widget.RecyclerView.i) r0
            boolean r6 = r0.a()
            if (r6 == 0) goto L_0x0040
            r12.A = r0
            r0 = r8
        L_0x0030:
            if (r0 == 0) goto L_0x0046
            r12.p()
        L_0x0035:
            return r8
        L_0x0036:
            r3 = 3
            if (r0 == r3) goto L_0x003b
            if (r0 != r8) goto L_0x003e
        L_0x003b:
            r0 = 0
            r12.A = r0
        L_0x003e:
            r0 = r8
            goto L_0x0030
        L_0x0040:
            int r0 = r3 + 1
            r3 = r0
            goto L_0x001d
        L_0x0044:
            r0 = r1
            goto L_0x0030
        L_0x0046:
            android.support.v7.widget.RecyclerView$h r0 = r12.e
            if (r0 != 0) goto L_0x004c
            r8 = r1
            goto L_0x0035
        L_0x004c:
            android.support.v7.widget.RecyclerView$h r0 = r12.e
            boolean r5 = r0.e()
            android.support.v7.widget.RecyclerView$h r0 = r12.e
            boolean r6 = r0.f()
            android.view.VelocityTracker r0 = r12.N
            if (r0 != 0) goto L_0x0062
            android.view.VelocityTracker r0 = android.view.VelocityTracker.obtain()
            r12.N = r0
        L_0x0062:
            android.view.VelocityTracker r0 = r12.N
            r0.addMovement(r13)
            android.view.MotionEvent r9 = android.view.MotionEvent.obtain(r13)
            int r0 = defpackage.ax.a(r13)
            int r3 = defpackage.ax.b(r13)
            if (r0 != 0) goto L_0x007d
            int[] r7 = r12.aj
            int[] r10 = r12.aj
            r10[r8] = r1
            r7[r1] = r1
        L_0x007d:
            int[] r7 = r12.aj
            r7 = r7[r1]
            float r7 = (float) r7
            int[] r10 = r12.aj
            r10 = r10[r8]
            float r10 = (float) r10
            r9.offsetLocation(r7, r10)
            switch(r0) {
                case 0: goto L_0x0091;
                case 1: goto L_0x01a3;
                case 2: goto L_0x00d1;
                case 3: goto L_0x0261;
                case 4: goto L_0x008d;
                case 5: goto L_0x00b6;
                case 6: goto L_0x019e;
                default: goto L_0x008d;
            }
        L_0x008d:
            r9.recycle()
            goto L_0x0035
        L_0x0091:
            int r0 = defpackage.ax.b(r13, r1)
            r12.M = r0
            float r0 = r13.getX()
            float r0 = r0 + r11
            int r0 = (int) r0
            r12.Q = r0
            r12.O = r0
            float r0 = r13.getY()
            float r0 = r0 + r11
            int r0 = (int) r0
            r12.R = r0
            r12.P = r0
            if (r5 == 0) goto L_0x026b
            r0 = r8
        L_0x00ae:
            if (r6 == 0) goto L_0x00b2
            r0 = r0 | 2
        L_0x00b2:
            r12.startNestedScroll(r0)
            goto L_0x008d
        L_0x00b6:
            int r0 = defpackage.ax.b(r13, r3)
            r12.M = r0
            float r0 = defpackage.ax.c(r13, r3)
            float r0 = r0 + r11
            int r0 = (int) r0
            r12.Q = r0
            r12.O = r0
            float r0 = defpackage.ax.d(r13, r3)
            float r0 = r0 + r11
            int r0 = (int) r0
            r12.R = r0
            r12.P = r0
            goto L_0x008d
        L_0x00d1:
            int r0 = r12.M
            int r0 = defpackage.ax.a(r13, r0)
            if (r0 >= 0) goto L_0x00f8
            java.lang.String r0 = "RecyclerView"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Error processing scroll; pointer index for id "
            r2.<init>(r3)
            int r3 = r12.M
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " not found. Did any MotionEvents get skipped?"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            android.util.Log.e(r0, r2)
            r8 = r1
            goto L_0x0035
        L_0x00f8:
            float r2 = defpackage.ax.c(r13, r0)
            float r2 = r2 + r11
            int r4 = (int) r2
            float r0 = defpackage.ax.d(r13, r0)
            float r0 = r0 + r11
            int r7 = (int) r0
            int r0 = r12.Q
            int r2 = r0 - r4
            int r0 = r12.R
            int r0 = r0 - r7
            int[] r3 = r12.ai
            int[] r10 = r12.ah
            boolean r3 = r12.dispatchNestedPreScroll(r2, r0, r3, r10)
            if (r3 == 0) goto L_0x0142
            int[] r3 = r12.ai
            r3 = r3[r1]
            int r2 = r2 - r3
            int[] r3 = r12.ai
            r3 = r3[r8]
            int r0 = r0 - r3
            int[] r3 = r12.ah
            r3 = r3[r1]
            float r3 = (float) r3
            int[] r10 = r12.ah
            r10 = r10[r8]
            float r10 = (float) r10
            r9.offsetLocation(r3, r10)
            int[] r3 = r12.aj
            r10 = r3[r1]
            int[] r11 = r12.ah
            r11 = r11[r1]
            int r10 = r10 + r11
            r3[r1] = r10
            int[] r3 = r12.aj
            r10 = r3[r8]
            int[] r11 = r12.ah
            r11 = r11[r8]
            int r10 = r10 + r11
            r3[r8] = r10
        L_0x0142:
            int r3 = r12.L
            if (r3 == r8) goto L_0x016b
            if (r5 == 0) goto L_0x0268
            int r3 = java.lang.Math.abs(r2)
            int r10 = r12.S
            if (r3 <= r10) goto L_0x0268
            if (r2 <= 0) goto L_0x0192
            int r3 = r12.S
            int r2 = r2 - r3
        L_0x0155:
            r3 = r8
        L_0x0156:
            if (r6 == 0) goto L_0x0166
            int r10 = java.lang.Math.abs(r0)
            int r11 = r12.S
            if (r10 <= r11) goto L_0x0166
            if (r0 <= 0) goto L_0x0196
            int r3 = r12.S
            int r0 = r0 - r3
        L_0x0165:
            r3 = r8
        L_0x0166:
            if (r3 == 0) goto L_0x016b
            r12.setScrollState(r8)
        L_0x016b:
            int r3 = r12.L
            if (r3 != r8) goto L_0x008d
            int[] r3 = r12.ah
            r3 = r3[r1]
            int r3 = r4 - r3
            r12.Q = r3
            int[] r3 = r12.ah
            r3 = r3[r8]
            int r3 = r7 - r3
            r12.R = r3
            if (r5 == 0) goto L_0x019a
        L_0x0181:
            if (r6 == 0) goto L_0x019c
        L_0x0183:
            boolean r0 = r12.a((int) r2, (int) r0, (android.view.MotionEvent) r9)
            if (r0 == 0) goto L_0x008d
            android.view.ViewParent r0 = r12.getParent()
            r0.requestDisallowInterceptTouchEvent(r8)
            goto L_0x008d
        L_0x0192:
            int r3 = r12.S
            int r2 = r2 + r3
            goto L_0x0155
        L_0x0196:
            int r3 = r12.S
            int r0 = r0 + r3
            goto L_0x0165
        L_0x019a:
            r2 = r1
            goto L_0x0181
        L_0x019c:
            r0 = r1
            goto L_0x0183
        L_0x019e:
            r12.a((android.view.MotionEvent) r13)
            goto L_0x008d
        L_0x01a3:
            android.view.VelocityTracker r0 = r12.N
            r3 = 1000(0x3e8, float:1.401E-42)
            int r7 = r12.U
            float r7 = (float) r7
            r0.computeCurrentVelocity(r3, r7)
            if (r5 == 0) goto L_0x01e9
            android.view.VelocityTracker r0 = r12.N
            int r3 = r12.M
            float r0 = defpackage.bg.a(r0, r3)
            float r0 = -r0
            r3 = r0
        L_0x01b9:
            if (r6 == 0) goto L_0x01eb
            android.view.VelocityTracker r0 = r12.N
            int r5 = r12.M
            float r0 = defpackage.bg.b(r0, r5)
            float r0 = -r0
        L_0x01c4:
            int r5 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r5 != 0) goto L_0x01cc
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L_0x01dc
        L_0x01cc:
            int r2 = (int) r3
            int r0 = (int) r0
            android.support.v7.widget.RecyclerView$h r3 = r12.e
            if (r3 != 0) goto L_0x01ed
            java.lang.String r0 = "RecyclerView"
            java.lang.String r2 = "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."
            android.util.Log.e(r0, r2)
        L_0x01d9:
            r0 = r1
        L_0x01da:
            if (r0 != 0) goto L_0x01df
        L_0x01dc:
            r12.setScrollState(r1)
        L_0x01df:
            android.view.VelocityTracker r0 = r12.N
            r0.clear()
            r12.n()
            goto L_0x008d
        L_0x01e9:
            r3 = r2
            goto L_0x01b9
        L_0x01eb:
            r0 = r2
            goto L_0x01c4
        L_0x01ed:
            android.support.v7.widget.RecyclerView$h r3 = r12.e
            boolean r5 = r3.e()
            android.support.v7.widget.RecyclerView$h r3 = r12.e
            boolean r6 = r3.f()
            if (r5 == 0) goto L_0x0203
            int r3 = java.lang.Math.abs(r2)
            int r7 = r12.T
            if (r3 >= r7) goto L_0x0204
        L_0x0203:
            r2 = r1
        L_0x0204:
            if (r6 == 0) goto L_0x020e
            int r3 = java.lang.Math.abs(r0)
            int r7 = r12.T
            if (r3 >= r7) goto L_0x0266
        L_0x020e:
            r3 = r1
        L_0x020f:
            if (r2 != 0) goto L_0x0213
            if (r3 == 0) goto L_0x01d9
        L_0x0213:
            float r0 = (float) r2
            float r7 = (float) r3
            boolean r0 = r12.dispatchNestedPreFling(r0, r7)
            if (r0 != 0) goto L_0x01d9
            if (r5 != 0) goto L_0x021f
            if (r6 == 0) goto L_0x025f
        L_0x021f:
            r0 = r8
        L_0x0220:
            float r5 = (float) r2
            float r6 = (float) r3
            r12.dispatchNestedFling(r5, r6, r0)
            if (r0 == 0) goto L_0x01d9
            int r0 = r12.U
            int r0 = -r0
            int r5 = r12.U
            int r2 = java.lang.Math.min(r2, r5)
            int r2 = java.lang.Math.max(r0, r2)
            int r0 = r12.U
            int r0 = -r0
            int r5 = r12.U
            int r3 = java.lang.Math.min(r3, r5)
            int r3 = java.lang.Math.max(r0, r3)
            android.support.v7.widget.RecyclerView$r r10 = r12.m
            android.support.v7.widget.RecyclerView r0 = android.support.v7.widget.RecyclerView.this
            r5 = 2
            r0.setScrollState(r5)
            r10.b = r1
            r10.a = r1
            cs r0 = r10.c
            r5 = 2147483647(0x7fffffff, float:NaN)
            r7 = 2147483647(0x7fffffff, float:NaN)
            r6 = r4
            r0.a(r1, r2, r3, r4, r5, r6, r7)
            r10.a()
            r0 = r8
            goto L_0x01da
        L_0x025f:
            r0 = r1
            goto L_0x0220
        L_0x0261:
            r12.p()
            goto L_0x008d
        L_0x0266:
            r3 = r0
            goto L_0x020f
        L_0x0268:
            r3 = r1
            goto L_0x0156
        L_0x026b:
            r0 = r1
            goto L_0x00ae
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: protected */
    public void removeDetachedView(View view, boolean z2) {
        s b2 = b(view);
        if (b2 != null) {
            if (b2.n()) {
                b2.h();
            } else if (!b2.b()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + b2);
            }
        }
        e(view);
        super.removeDetachedView(view, z2);
    }

    public void requestChildFocus(View view, View view2) {
        if (!(this.e.j() || f()) && view2 != null) {
            this.w.set(0, 0, view2.getWidth(), view2.getHeight());
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                if (!layoutParams2.e) {
                    Rect rect = layoutParams2.d;
                    this.w.left -= rect.left;
                    this.w.right += rect.right;
                    this.w.top -= rect.top;
                    Rect rect2 = this.w;
                    rect2.bottom = rect.bottom + rect2.bottom;
                }
            }
            offsetDescendantRectToMyCoords(view2, this.w);
            offsetRectIntoDescendantCoords(view, this.w);
            requestChildRectangleOnScreen(view, this.w, !this.f);
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        h hVar = this.e;
        int n2 = hVar.n();
        int o2 = hVar.o();
        int l2 = hVar.l() - hVar.p();
        int m2 = hVar.m() - hVar.q();
        int left = view.getLeft() + rect.left;
        int top = view.getTop() + rect.top;
        int width = left + rect.width();
        int height = top + rect.height();
        int min = Math.min(0, left - n2);
        int min2 = Math.min(0, top - o2);
        int max = Math.max(0, width - l2);
        int max2 = Math.max(0, height - m2);
        if (bh.h(hVar.r) != 1) {
            max = min != 0 ? min : Math.min(left - n2, max);
        } else if (max == 0) {
            max = Math.max(min, width - l2);
        }
        int min3 = min2 != 0 ? min2 : Math.min(top - o2, max2);
        if (max == 0 && min3 == 0) {
            return false;
        }
        if (z2) {
            scrollBy(max, min3);
        } else if (this.e == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            if (!this.e.e()) {
                max = 0;
            }
            if (!this.e.f()) {
                min3 = 0;
            }
            if (!(max == 0 && min3 == 0)) {
                this.m.a(max, min3);
            }
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.z.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.z.get(i2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    public void requestLayout() {
        if (!this.D) {
            super.requestLayout();
        } else {
            this.E = true;
        }
    }

    public void scrollBy(int i2, int i3) {
        if (this.e == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        boolean e2 = this.e.e();
        boolean f2 = this.e.f();
        if (e2 || f2) {
            if (!e2) {
                i2 = 0;
            }
            if (!f2) {
                i3 = 0;
            }
            a(i2, i3, (MotionEvent) null);
        }
    }

    public void scrollTo(int i2, int i3) {
        throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        int i2 = 0;
        if (f()) {
            int b2 = accessibilityEvent != null ? by.b(accessibilityEvent) : 0;
            if (b2 != 0) {
                i2 = b2;
            }
            this.F = i2 | this.F;
            i2 = 1;
        }
        if (i2 == 0) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(fe feVar) {
        this.ad = feVar;
        bh.a((View) this, (al) this.ad);
    }

    public void setAdapter(a aVar) {
        if (this.d != null) {
            a aVar2 = this.d;
            aVar2.a.unregisterObserver(this.s);
        }
        if (this.l != null) {
            this.l.d();
        }
        if (this.e != null) {
            this.e.c(this.a);
            this.e.b(this.a);
        }
        this.a.a();
        this.b.a();
        a aVar3 = this.d;
        this.d = aVar;
        if (aVar != null) {
            aVar.a.registerObserver(this.s);
        }
        l lVar = this.a;
        a aVar4 = this.d;
        lVar.a();
        k c2 = lVar.c();
        if (aVar3 != null) {
            c2.b();
        }
        if (c2.c == 0) {
            c2.a.clear();
        }
        if (aVar4 != null) {
            c2.a();
        }
        this.n.i = true;
        v();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(d dVar) {
        if (dVar != this.ae) {
            this.ae = dVar;
            setChildrenDrawingOrderEnabled(this.ae != null);
        }
    }

    public void setClipToPadding(boolean z2) {
        if (z2 != this.u) {
            o();
        }
        this.u = z2;
        super.setClipToPadding(z2);
        if (this.f) {
            requestLayout();
        }
    }

    public void setHasFixedSize(boolean z2) {
        this.C = z2;
    }

    public void setItemAnimator(e eVar) {
        if (this.l != null) {
            this.l.d();
            this.l.h = null;
        }
        this.l = eVar;
        if (this.l != null) {
            this.l.h = this.ab;
        }
    }

    public void setItemViewCacheSize(int i2) {
        l lVar = this.a;
        lVar.e = i2;
        for (int size = lVar.c.size() - 1; size >= 0 && lVar.c.size() > i2; size--) {
            lVar.c(size);
        }
    }

    public void setLayoutManager(h hVar) {
        if (hVar != this.e) {
            if (this.e != null) {
                if (this.B) {
                    this.e.b(this, this.a);
                }
                this.e.a((RecyclerView) null);
            }
            this.a.a();
            ez ezVar = this.c;
            ez.a aVar = ezVar.b;
            while (true) {
                aVar.a = 0;
                if (aVar.b == null) {
                    break;
                }
                aVar = aVar.b;
            }
            ezVar.c.clear();
            ezVar.a.b();
            this.e = hVar;
            if (hVar != null) {
                if (hVar.r != null) {
                    throw new IllegalArgumentException("LayoutManager " + hVar + " is already attached to a RecyclerView: " + hVar.r);
                }
                this.e.a(this);
                if (this.B) {
                    this.e.u = true;
                }
            }
            requestLayout();
        }
    }

    public void setNestedScrollingEnabled(boolean z2) {
        this.ag.a(z2);
    }

    @Deprecated
    public void setOnScrollListener(j jVar) {
        this.W = jVar;
    }

    public void setRecycledViewPool(k kVar) {
        l lVar = this.a;
        if (lVar.f != null) {
            lVar.f.b();
        }
        lVar.f = kVar;
        if (kVar != null) {
            k kVar2 = lVar.f;
            RecyclerView.this.getAdapter();
            kVar2.a();
        }
    }

    public void setRecyclerListener(m mVar) {
        this.x = mVar;
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        switch (i2) {
            case 0:
                break;
            case 1:
                this.S = bl.a(viewConfiguration);
                return;
            default:
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
                break;
        }
        this.S = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(q qVar) {
        this.a.g = qVar;
    }

    public boolean startNestedScroll(int i2) {
        return this.ag.a(i2);
    }

    public void stopNestedScroll() {
        this.ag.b();
    }
}
