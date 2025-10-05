package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentTransaction;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import defpackage.s;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager extends ViewGroup {
    private static final h ah = new h();
    /* access modifiers changed from: private */
    public static final int[] b = {16842931};
    private static final Comparator<b> d = new Comparator<b>() {
        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            return ((b) obj).b - ((b) obj2).b;
        }
    };
    private static final Interpolator e = new Interpolator() {
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    private int A = 1;
    private boolean B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private float J;
    private int K = -1;
    private VelocityTracker L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private cm R;
    private cm S;
    private boolean T = true;
    private boolean U = false;
    private boolean V;
    private int W;
    public List<e> a;
    private e aa;
    private e ab;
    private d ac;
    private f ad;
    private Method ae;
    private int af;
    private ArrayList<View> ag;
    private final Runnable ai = new Runnable() {
        public final void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.b();
        }
    };
    private int aj = 0;
    private int c;
    private final ArrayList<b> f = new ArrayList<>();
    private final b g = new b();
    private final Rect h = new Rect();
    /* access modifiers changed from: private */
    public bd i;
    /* access modifiers changed from: private */
    public int j;
    private int k = -1;
    private Parcelable l = null;
    private ClassLoader m = null;
    private Scroller n;
    private g o;
    private int p;
    private Drawable q;
    private int r;
    private int s;
    private float t = -3.4028235E38f;
    private float u = Float.MAX_VALUE;
    private int v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    public static class LayoutParams extends ViewGroup.LayoutParams {
        public boolean a;
        public int b;
        float c = 0.0f;
        boolean d;
        int e;
        int f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.b);
            this.b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR;
        int a;
        Parcelable b;
        ClassLoader c;

        static {
            AnonymousClass1 r1 = new t<SavedState>() {
                public final /* synthetic */ Object a(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                public final /* bridge */ /* synthetic */ Object[] a(int i) {
                    return new SavedState[i];
                }
            };
            CREATOR = Build.VERSION.SDK_INT >= 13 ? new u<>(r1) : new s.a<>(r1);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.a = parcel.readInt();
            this.b = parcel.readParcelable(classLoader);
            this.c = classLoader;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeParcelable(this.b, i);
        }
    }

    interface a {
    }

    static class b {
        Object a;
        int b;
        boolean c;
        float d;
        float e;

        b() {
        }
    }

    class c extends al {
        c() {
        }

        private boolean a() {
            return ViewPager.this.i != null && ViewPager.this.i.getCount() > 1;
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            cd a2 = cd.a();
            a2.a(a());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.i != null) {
                a2.a(ViewPager.this.i.getCount());
                a2.b(ViewPager.this.j);
                a2.c(ViewPager.this.j);
            }
        }

        public final void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
            super.onInitializeAccessibilityNodeInfo(view, bzVar);
            bzVar.b((CharSequence) ViewPager.class.getName());
            bzVar.i(a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                bzVar.a((int) FragmentTransaction.TRANSIT_ENTER_MASK);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                bzVar.a((int) FragmentTransaction.TRANSIT_EXIT_MASK);
            }
        }

        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            switch (i) {
                case FragmentTransaction.TRANSIT_ENTER_MASK:
                    if (!ViewPager.this.canScrollHorizontally(1)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.j + 1);
                    return true;
                case FragmentTransaction.TRANSIT_EXIT_MASK:
                    if (!ViewPager.this.canScrollHorizontally(-1)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.j - 1);
                    return true;
                default:
                    return false;
            }
        }
    }

    interface d {
        void a(bd bdVar, bd bdVar2);
    }

    public interface e {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    public interface f {
    }

    class g extends DataSetObserver {
        private g() {
        }

        /* synthetic */ g(ViewPager viewPager, byte b) {
            this();
        }

        public final void onChanged() {
            ViewPager.this.a();
        }

        public final void onInvalidated() {
            ViewPager.this.a();
        }
    }

    static class h implements Comparator<View> {
        h() {
        }

        public final /* synthetic */ int compare(Object obj, Object obj2) {
            LayoutParams layoutParams = (LayoutParams) ((View) obj).getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) ((View) obj2).getLayoutParams();
            return layoutParams.a != layoutParams2.a ? layoutParams.a ? 1 : -1 : layoutParams.e - layoutParams2.e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        d();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d();
    }

    private Rect a(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    private b a(int i2, int i3) {
        b bVar = new b();
        bVar.b = i2;
        bVar.a = this.i.instantiateItem((ViewGroup) this, i2);
        bVar.d = this.i.getPageWidth(i2);
        if (i3 < 0 || i3 >= this.f.size()) {
            this.f.add(bVar);
        } else {
            this.f.add(i3, bVar);
        }
        return bVar;
    }

    private b a(View view) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f.size()) {
                return null;
            }
            b bVar = this.f.get(i3);
            if (this.i.isViewFromObject(view, bVar.a)) {
                return bVar;
            }
            i2 = i3 + 1;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00fb, code lost:
        if (r2.b == r18.j) goto L_0x00fd;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(int r19) {
        /*
            r18 = this;
            r3 = 0
            r2 = 2
            r0 = r18
            int r4 = r0.j
            r0 = r19
            if (r4 == r0) goto L_0x0334
            r0 = r18
            int r2 = r0.j
            r0 = r19
            if (r2 >= r0) goto L_0x0030
            r2 = 66
        L_0x0014:
            r0 = r18
            int r3 = r0.j
            r0 = r18
            android.support.v4.view.ViewPager$b r3 = r0.b((int) r3)
            r0 = r19
            r1 = r18
            r1.j = r0
            r4 = r3
            r3 = r2
        L_0x0026:
            r0 = r18
            bd r2 = r0.i
            if (r2 != 0) goto L_0x0033
            r18.e()
        L_0x002f:
            return
        L_0x0030:
            r2 = 17
            goto L_0x0014
        L_0x0033:
            r0 = r18
            boolean r2 = r0.z
            if (r2 == 0) goto L_0x003d
            r18.e()
            goto L_0x002f
        L_0x003d:
            android.os.IBinder r2 = r18.getWindowToken()
            if (r2 == 0) goto L_0x002f
            r0 = r18
            bd r2 = r0.i
            r0 = r18
            r2.startUpdate((android.view.ViewGroup) r0)
            r0 = r18
            int r2 = r0.A
            r5 = 0
            r0 = r18
            int r6 = r0.j
            int r6 = r6 - r2
            int r11 = java.lang.Math.max(r5, r6)
            r0 = r18
            bd r5 = r0.i
            int r12 = r5.getCount()
            int r5 = r12 + -1
            r0 = r18
            int r6 = r0.j
            int r2 = r2 + r6
            int r13 = java.lang.Math.min(r5, r2)
            r0 = r18
            int r2 = r0.c
            if (r12 == r2) goto L_0x00d6
            android.content.res.Resources r2 = r18.getResources()     // Catch:{ NotFoundException -> 0x00cc }
            int r3 = r18.getId()     // Catch:{ NotFoundException -> 0x00cc }
            java.lang.String r2 = r2.getResourceName(r3)     // Catch:{ NotFoundException -> 0x00cc }
        L_0x007f:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "
            r4.<init>(r5)
            r0 = r18
            int r5 = r0.c
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r5 = ", found: "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.StringBuilder r4 = r4.append(r12)
            java.lang.String r5 = " Pager id: "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.StringBuilder r2 = r4.append(r2)
            java.lang.String r4 = " Pager class: "
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.Class r4 = r18.getClass()
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r4 = " Problematic adapter: "
            java.lang.StringBuilder r2 = r2.append(r4)
            r0 = r18
            bd r4 = r0.i
            java.lang.Class r4 = r4.getClass()
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            r3.<init>(r2)
            throw r3
        L_0x00cc:
            r2 = move-exception
            int r2 = r18.getId()
            java.lang.String r2 = java.lang.Integer.toHexString(r2)
            goto L_0x007f
        L_0x00d6:
            r6 = 0
            r2 = 0
            r5 = r2
        L_0x00d9:
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            int r2 = r2.size()
            if (r5 >= r2) goto L_0x0331
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r5)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
            int r7 = r2.b
            r0 = r18
            int r8 = r0.j
            if (r7 < r8) goto L_0x016b
            int r7 = r2.b
            r0 = r18
            int r8 = r0.j
            if (r7 != r8) goto L_0x0331
        L_0x00fd:
            if (r2 != 0) goto L_0x032e
            if (r12 <= 0) goto L_0x032e
            r0 = r18
            int r2 = r0.j
            r0 = r18
            android.support.v4.view.ViewPager$b r2 = r0.a((int) r2, (int) r5)
            r10 = r2
        L_0x010c:
            if (r10 == 0) goto L_0x028f
            r9 = 0
            int r8 = r5 + -1
            if (r8 < 0) goto L_0x0170
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r8)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
        L_0x011d:
            int r14 = r18.getClientWidth()
            if (r14 > 0) goto L_0x0172
            r6 = 0
        L_0x0124:
            r0 = r18
            int r7 = r0.j
            int r7 = r7 + -1
            r16 = r7
            r7 = r9
            r9 = r16
            r17 = r8
            r8 = r5
            r5 = r17
        L_0x0134:
            if (r9 < 0) goto L_0x01b8
            int r15 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
            if (r15 < 0) goto L_0x0182
            if (r9 >= r11) goto L_0x0182
            if (r2 == 0) goto L_0x01b8
            int r15 = r2.b
            if (r9 != r15) goto L_0x0168
            boolean r15 = r2.c
            if (r15 != 0) goto L_0x0168
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r15 = r0.f
            r15.remove(r5)
            r0 = r18
            bd r15 = r0.i
            java.lang.Object r2 = r2.a
            r0 = r18
            r15.destroyItem((android.view.ViewGroup) r0, (int) r9, (java.lang.Object) r2)
            int r5 = r5 + -1
            int r8 = r8 + -1
            if (r5 < 0) goto L_0x0180
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r5)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
        L_0x0168:
            int r9 = r9 + -1
            goto L_0x0134
        L_0x016b:
            int r2 = r5 + 1
            r5 = r2
            goto L_0x00d9
        L_0x0170:
            r2 = 0
            goto L_0x011d
        L_0x0172:
            r6 = 1073741824(0x40000000, float:2.0)
            float r7 = r10.d
            float r6 = r6 - r7
            int r7 = r18.getPaddingLeft()
            float r7 = (float) r7
            float r15 = (float) r14
            float r7 = r7 / r15
            float r6 = r6 + r7
            goto L_0x0124
        L_0x0180:
            r2 = 0
            goto L_0x0168
        L_0x0182:
            if (r2 == 0) goto L_0x019c
            int r15 = r2.b
            if (r9 != r15) goto L_0x019c
            float r2 = r2.d
            float r7 = r7 + r2
            int r5 = r5 + -1
            if (r5 < 0) goto L_0x019a
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r5)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
            goto L_0x0168
        L_0x019a:
            r2 = 0
            goto L_0x0168
        L_0x019c:
            int r2 = r5 + 1
            r0 = r18
            android.support.v4.view.ViewPager$b r2 = r0.a((int) r9, (int) r2)
            float r2 = r2.d
            float r7 = r7 + r2
            int r8 = r8 + 1
            if (r5 < 0) goto L_0x01b6
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r5)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
            goto L_0x0168
        L_0x01b6:
            r2 = 0
            goto L_0x0168
        L_0x01b8:
            float r6 = r10.d
            int r9 = r8 + 1
            r2 = 1073741824(0x40000000, float:2.0)
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 >= 0) goto L_0x028a
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            int r2 = r2.size()
            if (r9 >= r2) goto L_0x022c
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r9)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
            r7 = r2
        L_0x01d7:
            if (r14 > 0) goto L_0x022e
            r2 = 0
            r5 = r2
        L_0x01db:
            r0 = r18
            int r2 = r0.j
            int r2 = r2 + 1
            r16 = r7
            r7 = r9
            r9 = r2
            r2 = r16
        L_0x01e7:
            if (r9 >= r12) goto L_0x028a
            int r11 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
            if (r11 < 0) goto L_0x023c
            if (r9 <= r13) goto L_0x023c
            if (r2 == 0) goto L_0x028a
            int r11 = r2.b
            if (r9 != r11) goto L_0x0327
            boolean r11 = r2.c
            if (r11 != 0) goto L_0x0327
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r11 = r0.f
            r11.remove(r7)
            r0 = r18
            bd r11 = r0.i
            java.lang.Object r2 = r2.a
            r0 = r18
            r11.destroyItem((android.view.ViewGroup) r0, (int) r9, (java.lang.Object) r2)
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            int r2 = r2.size()
            if (r7 >= r2) goto L_0x023a
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r7)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
        L_0x021f:
            r16 = r6
            r6 = r2
            r2 = r16
        L_0x0224:
            int r9 = r9 + 1
            r16 = r2
            r2 = r6
            r6 = r16
            goto L_0x01e7
        L_0x022c:
            r7 = 0
            goto L_0x01d7
        L_0x022e:
            int r2 = r18.getPaddingRight()
            float r2 = (float) r2
            float r5 = (float) r14
            float r2 = r2 / r5
            r5 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 + r5
            r5 = r2
            goto L_0x01db
        L_0x023a:
            r2 = 0
            goto L_0x021f
        L_0x023c:
            if (r2 == 0) goto L_0x0263
            int r11 = r2.b
            if (r9 != r11) goto L_0x0263
            float r2 = r2.d
            float r6 = r6 + r2
            int r7 = r7 + 1
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            int r2 = r2.size()
            if (r7 >= r2) goto L_0x0261
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r7)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
        L_0x025b:
            r16 = r6
            r6 = r2
            r2 = r16
            goto L_0x0224
        L_0x0261:
            r2 = 0
            goto L_0x025b
        L_0x0263:
            r0 = r18
            android.support.v4.view.ViewPager$b r2 = r0.a((int) r9, (int) r7)
            int r7 = r7 + 1
            float r2 = r2.d
            float r6 = r6 + r2
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            int r2 = r2.size()
            if (r7 >= r2) goto L_0x0288
            r0 = r18
            java.util.ArrayList<android.support.v4.view.ViewPager$b> r2 = r0.f
            java.lang.Object r2 = r2.get(r7)
            android.support.v4.view.ViewPager$b r2 = (android.support.v4.view.ViewPager.b) r2
        L_0x0282:
            r16 = r6
            r6 = r2
            r2 = r16
            goto L_0x0224
        L_0x0288:
            r2 = 0
            goto L_0x0282
        L_0x028a:
            r0 = r18
            r0.a((android.support.v4.view.ViewPager.b) r10, (int) r8, (android.support.v4.view.ViewPager.b) r4)
        L_0x028f:
            r0 = r18
            bd r4 = r0.i
            r0 = r18
            int r5 = r0.j
            if (r10 == 0) goto L_0x02de
            java.lang.Object r2 = r10.a
        L_0x029b:
            r0 = r18
            r4.setPrimaryItem((android.view.ViewGroup) r0, (int) r5, (java.lang.Object) r2)
            r0 = r18
            bd r2 = r0.i
            r0 = r18
            r2.finishUpdate((android.view.ViewGroup) r0)
            int r5 = r18.getChildCount()
            r2 = 0
            r4 = r2
        L_0x02af:
            if (r4 >= r5) goto L_0x02e0
            r0 = r18
            android.view.View r6 = r0.getChildAt(r4)
            android.view.ViewGroup$LayoutParams r2 = r6.getLayoutParams()
            android.support.v4.view.ViewPager$LayoutParams r2 = (android.support.v4.view.ViewPager.LayoutParams) r2
            r2.f = r4
            boolean r7 = r2.a
            if (r7 != 0) goto L_0x02da
            float r7 = r2.c
            r8 = 0
            int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r7 != 0) goto L_0x02da
            r0 = r18
            android.support.v4.view.ViewPager$b r6 = r0.a((android.view.View) r6)
            if (r6 == 0) goto L_0x02da
            float r7 = r6.d
            r2.c = r7
            int r6 = r6.b
            r2.e = r6
        L_0x02da:
            int r2 = r4 + 1
            r4 = r2
            goto L_0x02af
        L_0x02de:
            r2 = 0
            goto L_0x029b
        L_0x02e0:
            r18.e()
            boolean r2 = r18.hasFocus()
            if (r2 == 0) goto L_0x002f
            android.view.View r2 = r18.findFocus()
            if (r2 == 0) goto L_0x0325
            r0 = r18
            android.support.v4.view.ViewPager$b r2 = r0.b((android.view.View) r2)
        L_0x02f5:
            if (r2 == 0) goto L_0x02ff
            int r2 = r2.b
            r0 = r18
            int r4 = r0.j
            if (r2 == r4) goto L_0x002f
        L_0x02ff:
            r2 = 0
        L_0x0300:
            int r4 = r18.getChildCount()
            if (r2 >= r4) goto L_0x002f
            r0 = r18
            android.view.View r4 = r0.getChildAt(r2)
            r0 = r18
            android.support.v4.view.ViewPager$b r5 = r0.a((android.view.View) r4)
            if (r5 == 0) goto L_0x0322
            int r5 = r5.b
            r0 = r18
            int r6 = r0.j
            if (r5 != r6) goto L_0x0322
            boolean r4 = r4.requestFocus(r3)
            if (r4 != 0) goto L_0x002f
        L_0x0322:
            int r2 = r2 + 1
            goto L_0x0300
        L_0x0325:
            r2 = 0
            goto L_0x02f5
        L_0x0327:
            r16 = r6
            r6 = r2
            r2 = r16
            goto L_0x0224
        L_0x032e:
            r10 = r2
            goto L_0x010c
        L_0x0331:
            r2 = r6
            goto L_0x00fd
        L_0x0334:
            r4 = r3
            r3 = r2
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.a(int):void");
    }

    private void a(int i2, float f2, int i3) {
        int i4;
        int i5;
        int measuredWidth;
        if (this.W > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i6 = 0;
            while (i6 < childCount) {
                View childAt = getChildAt(i6);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a) {
                    switch (layoutParams.b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            int i7 = paddingRight;
                            i4 = paddingLeft;
                            i5 = i7;
                            break;
                        case 3:
                            int width2 = childAt.getWidth() + paddingLeft;
                            int i8 = paddingLeft;
                            i5 = paddingRight;
                            i4 = width2;
                            measuredWidth = i8;
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            int measuredWidth2 = paddingRight + childAt.getMeasuredWidth();
                            i4 = paddingLeft;
                            i5 = measuredWidth2;
                            break;
                        default:
                            measuredWidth = paddingLeft;
                            int i9 = paddingRight;
                            i4 = paddingLeft;
                            i5 = i9;
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                } else {
                    int i10 = paddingRight;
                    i4 = paddingLeft;
                    i5 = i10;
                }
                i6++;
                int i11 = i5;
                paddingLeft = i4;
                paddingRight = i11;
            }
        }
        if (this.aa != null) {
            this.aa.onPageScrolled(i2, f2, i3);
        }
        if (this.a != null) {
            int size = this.a.size();
            for (int i12 = 0; i12 < size; i12++) {
                e eVar = this.a.get(i12);
                if (eVar != null) {
                    eVar.onPageScrolled(i2, f2, i3);
                }
            }
        }
        if (this.ab != null) {
            this.ab.onPageScrolled(i2, f2, i3);
        }
        if (this.ad != null) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i13 = 0; i13 < childCount2; i13++) {
                View childAt2 = getChildAt(i13);
                if (!((LayoutParams) childAt2.getLayoutParams()).a) {
                    childAt2.getLeft();
                    getClientWidth();
                }
            }
        }
        this.V = true;
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (i3 <= 0 || this.f.isEmpty()) {
            b b2 = b(this.j);
            int min = (int) ((b2 != null ? Math.min(b2.e, this.u) : 0.0f) * ((float) ((i2 - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                a(false);
                scrollTo(min, getScrollY());
                return;
            }
            return;
        }
        int paddingLeft = (int) (((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((float) getScrollX()) / ((float) (((i3 - getPaddingLeft()) - getPaddingRight()) + i5))));
        scrollTo(paddingLeft, getScrollY());
        if (!this.n.isFinished()) {
            this.n.startScroll(paddingLeft, 0, (int) (b(this.j).e * ((float) i2)), 0, this.n.getDuration() - this.n.timePassed());
        }
    }

    private void a(int i2, boolean z2, int i3, boolean z3) {
        int abs;
        b b2 = b(i2);
        int i4 = 0;
        if (b2 != null) {
            i4 = (int) (((float) getClientWidth()) * Math.max(this.t, Math.min(b2.e, this.u)));
        }
        if (z2) {
            if (getChildCount() == 0) {
                setScrollingCacheEnabled(false);
            } else {
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int i5 = i4 - scrollX;
                int i6 = 0 - scrollY;
                if (i5 == 0 && i6 == 0) {
                    a(false);
                    b();
                    setScrollState(0);
                } else {
                    setScrollingCacheEnabled(true);
                    setScrollState(2);
                    int clientWidth = getClientWidth();
                    int i7 = clientWidth / 2;
                    float f2 = (float) i7;
                    float sin = (((float) i7) * ((float) Math.sin((double) ((float) (((double) (Math.min(1.0f, (1.0f * ((float) Math.abs(i5))) / ((float) clientWidth)) - 0.5f)) * 0.4712389167638204d))))) + f2;
                    int abs2 = Math.abs(i3);
                    if (abs2 > 0) {
                        abs = Math.round(1000.0f * Math.abs(sin / ((float) abs2))) * 4;
                    } else {
                        abs = (int) (((((float) Math.abs(i5)) / ((((float) clientWidth) * this.i.getPageWidth(this.j)) + ((float) this.p))) + 1.0f) * 100.0f);
                    }
                    this.n.startScroll(scrollX, scrollY, i5, i6, Math.min(abs, 600));
                    bh.d(this);
                }
            }
            if (z3) {
                d(i2);
                return;
            }
            return;
        }
        if (z3) {
            d(i2);
        }
        a(false);
        scrollTo(i4, 0);
        c(i4);
    }

    private void a(int i2, boolean z2, boolean z3) {
        a(i2, z2, z3, 0);
    }

    private void a(int i2, boolean z2, boolean z3, int i3) {
        boolean z4 = false;
        if (this.i == null || this.i.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z3 || this.j != i2 || this.f.size() == 0) {
            if (i2 < 0) {
                i2 = 0;
            } else if (i2 >= this.i.getCount()) {
                i2 = this.i.getCount() - 1;
            }
            int i4 = this.A;
            if (i2 > this.j + i4 || i2 < this.j - i4) {
                for (int i5 = 0; i5 < this.f.size(); i5++) {
                    this.f.get(i5).c = true;
                }
            }
            if (this.j != i2) {
                z4 = true;
            }
            if (this.T) {
                this.j = i2;
                if (z4) {
                    d(i2);
                }
                requestLayout();
                return;
            }
            a(i2);
            a(i2, z2, i3, z4);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    private void a(b bVar, int i2, b bVar2) {
        b bVar3;
        b bVar4;
        int count = this.i.getCount();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? ((float) this.p) / ((float) clientWidth) : 0.0f;
        if (bVar2 != null) {
            int i3 = bVar2.b;
            if (i3 < bVar.b) {
                int i4 = i3 + 1;
                float f3 = bVar2.e + bVar2.d + f2;
                int i5 = 0;
                while (true) {
                    int i6 = i4;
                    if (i6 > bVar.b || i5 >= this.f.size()) {
                        break;
                    }
                    Object obj = this.f.get(i5);
                    while (true) {
                        bVar4 = (b) obj;
                        if (i6 <= bVar4.b || i5 >= this.f.size() - 1) {
                            int i7 = i6;
                            float f4 = f3;
                            int i8 = i7;
                        } else {
                            i5++;
                            obj = this.f.get(i5);
                        }
                    }
                    int i72 = i6;
                    float f42 = f3;
                    int i82 = i72;
                    while (i82 < bVar4.b) {
                        float pageWidth = this.i.getPageWidth(i82) + f2 + f42;
                        i82++;
                        f42 = pageWidth;
                    }
                    bVar4.e = f42;
                    float f5 = f42 + bVar4.d + f2;
                    i4 = i82 + 1;
                    f3 = f5;
                }
            } else if (i3 > bVar.b) {
                int size = this.f.size() - 1;
                float f6 = bVar2.e;
                int i9 = i3 - 1;
                int i10 = size;
                while (true) {
                    float f7 = f6;
                    int i11 = i9;
                    if (i11 < bVar.b || i10 < 0) {
                        break;
                    }
                    Object obj2 = this.f.get(i10);
                    while (true) {
                        bVar3 = (b) obj2;
                        if (i11 >= bVar3.b || i10 <= 0) {
                            int i12 = i11;
                            float f8 = f7;
                            int i13 = i12;
                        } else {
                            i10--;
                            obj2 = this.f.get(i10);
                        }
                    }
                    int i122 = i11;
                    float f82 = f7;
                    int i132 = i122;
                    while (i132 > bVar3.b) {
                        float pageWidth2 = f82 - (this.i.getPageWidth(i132) + f2);
                        i132--;
                        f82 = pageWidth2;
                    }
                    f6 = f82 - (bVar3.d + f2);
                    bVar3.e = f6;
                    i9 = i132 - 1;
                }
            }
        }
        int size2 = this.f.size();
        float f9 = bVar.e;
        int i14 = bVar.b - 1;
        this.t = bVar.b == 0 ? bVar.e : -3.4028235E38f;
        this.u = bVar.b == count + -1 ? (bVar.e + bVar.d) - 1.0f : Float.MAX_VALUE;
        for (int i15 = i2 - 1; i15 >= 0; i15--) {
            b bVar5 = this.f.get(i15);
            while (i14 > bVar5.b) {
                f9 -= this.i.getPageWidth(i14) + f2;
                i14--;
            }
            f9 -= bVar5.d + f2;
            bVar5.e = f9;
            if (bVar5.b == 0) {
                this.t = f9;
            }
            i14--;
        }
        float f10 = bVar.e + bVar.d + f2;
        int i16 = bVar.b + 1;
        for (int i17 = i2 + 1; i17 < size2; i17++) {
            b bVar6 = this.f.get(i17);
            while (i16 < bVar6.b) {
                f10 += this.i.getPageWidth(i16) + f2;
                i16++;
            }
            if (bVar6.b == count - 1) {
                this.u = (bVar6.d + f10) - 1.0f;
            }
            bVar6.e = f10;
            f10 += bVar6.d + f2;
            i16++;
        }
        this.U = false;
    }

    private void a(MotionEvent motionEvent) {
        int b2 = ax.b(motionEvent);
        if (ax.b(motionEvent, b2) == this.K) {
            int i2 = b2 == 0 ? 1 : 0;
            this.G = ax.c(motionEvent, i2);
            this.K = ax.b(motionEvent, i2);
            if (this.L != null) {
                this.L.clear();
            }
        }
    }

    private void a(boolean z2) {
        boolean z3 = this.aj == 2;
        if (z3) {
            setScrollingCacheEnabled(false);
            this.n.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.n.getCurrX();
            int currY = this.n.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
                if (currX != scrollX) {
                    c(currX);
                }
            }
        }
        this.z = false;
        boolean z4 = z3;
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            b bVar = this.f.get(i2);
            if (bVar.c) {
                bVar.c = false;
                z4 = true;
            }
        }
        if (!z4) {
            return;
        }
        if (z2) {
            bh.a((View) this, this.ai);
        } else {
            this.ai.run();
        }
    }

    private boolean a(float f2) {
        boolean z2;
        float f3;
        boolean z3 = true;
        boolean z4 = false;
        this.G = f2;
        float scrollX = ((float) getScrollX()) + (this.G - f2);
        int clientWidth = getClientWidth();
        float f4 = ((float) clientWidth) * this.t;
        float f5 = ((float) clientWidth) * this.u;
        b bVar = this.f.get(0);
        b bVar2 = this.f.get(this.f.size() - 1);
        if (bVar.b != 0) {
            f4 = bVar.e * ((float) clientWidth);
            z2 = false;
        } else {
            z2 = true;
        }
        if (bVar2.b != this.i.getCount() - 1) {
            f3 = bVar2.e * ((float) clientWidth);
            z3 = false;
        } else {
            f3 = f5;
        }
        if (scrollX < f4) {
            if (z2) {
                z4 = this.R.a(Math.abs(f4 - scrollX) / ((float) clientWidth));
            }
        } else if (scrollX > f3) {
            if (z3) {
                z4 = this.S.a(Math.abs(scrollX - f3) / ((float) clientWidth));
            }
            f4 = f3;
        } else {
            f4 = scrollX;
        }
        this.G += f4 - ((float) ((int) f4));
        scrollTo((int) f4, getScrollY());
        c((int) f4);
        return z4;
    }

    private boolean a(View view, boolean z2, int i2, int i3, int i4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i3 + scrollX >= childAt.getLeft() && i3 + scrollX < childAt.getRight() && i4 + scrollY >= childAt.getTop() && i4 + scrollY < childAt.getBottom()) {
                    if (a(childAt, true, i2, (i3 + scrollX) - childAt.getLeft(), (i4 + scrollY) - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        return z2 && bh.a(view, -i2);
    }

    private b b(int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= this.f.size()) {
                return null;
            }
            b bVar = this.f.get(i4);
            if (bVar.b == i2) {
                return bVar;
            }
            i3 = i4 + 1;
        }
    }

    private b b(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return a(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
        return null;
    }

    private boolean c(int i2) {
        if (this.f.size() == 0) {
            this.V = false;
            a(0, 0.0f, 0);
            if (this.V) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        b g2 = g();
        int clientWidth = getClientWidth();
        int i3 = this.p + clientWidth;
        float f2 = ((float) this.p) / ((float) clientWidth);
        int i4 = g2.b;
        float f3 = ((((float) i2) / ((float) clientWidth)) - g2.e) / (g2.d + f2);
        this.V = false;
        a(i4, f3, (int) (((float) i3) * f3));
        if (this.V) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private void d() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.n = new Scroller(context, e);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.F = bl.a(viewConfiguration);
        this.M = (int) (400.0f * f2);
        this.N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.R = new cm(context);
        this.S = new cm(context);
        this.O = (int) (25.0f * f2);
        this.P = (int) (2.0f * f2);
        this.D = (int) (16.0f * f2);
        bh.a((View) this, (al) new c());
        if (bh.e(this) == 0) {
            bh.c((View) this, 1);
        }
    }

    private void d(int i2) {
        if (this.aa != null) {
            this.aa.onPageSelected(i2);
        }
        if (this.a != null) {
            int size = this.a.size();
            for (int i3 = 0; i3 < size; i3++) {
                e eVar = this.a.get(i3);
                if (eVar != null) {
                    eVar.onPageSelected(i2);
                }
            }
        }
        if (this.ab != null) {
            this.ab.onPageSelected(i2);
        }
    }

    private void e() {
        if (this.af != 0) {
            if (this.ag == null) {
                this.ag = new ArrayList<>();
            } else {
                this.ag.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.ag.add(getChildAt(i2));
            }
            Collections.sort(this.ag, ah);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00ca, code lost:
        if (r10 != 2) goto L_0x0035;
     */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00e6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean e(int r10) {
        /*
            r9 = this;
            r1 = 0
            r8 = 66
            r7 = 17
            r4 = 0
            r3 = 1
            android.view.View r2 = r9.findFocus()
            if (r2 != r9) goto L_0x003f
            r0 = r1
        L_0x000e:
            android.view.FocusFinder r1 = android.view.FocusFinder.getInstance()
            android.view.View r1 = r1.findNextFocus(r9, r0, r10)
            if (r1 == 0) goto L_0x00bd
            if (r1 == r0) goto L_0x00bd
            if (r10 != r7) goto L_0x00a1
            android.graphics.Rect r2 = r9.h
            android.graphics.Rect r2 = r9.a((android.graphics.Rect) r2, (android.view.View) r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r9.h
            android.graphics.Rect r3 = r9.a((android.graphics.Rect) r3, (android.view.View) r0)
            int r3 = r3.left
            if (r0 == 0) goto L_0x009c
            if (r2 < r3) goto L_0x009c
            boolean r0 = r9.i()
        L_0x0034:
            r4 = r0
        L_0x0035:
            if (r4 == 0) goto L_0x003e
            int r0 = android.view.SoundEffectConstants.getContantForFocusDirection(r10)
            r9.playSoundEffect(r0)
        L_0x003e:
            return r4
        L_0x003f:
            if (r2 == 0) goto L_0x00e9
            android.view.ViewParent r0 = r2.getParent()
        L_0x0045:
            boolean r5 = r0 instanceof android.view.ViewGroup
            if (r5 == 0) goto L_0x00ec
            if (r0 != r9) goto L_0x007c
            r0 = r3
        L_0x004c:
            if (r0 != 0) goto L_0x00e9
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.Class r0 = r2.getClass()
            java.lang.String r0 = r0.getSimpleName()
            r5.append(r0)
            android.view.ViewParent r0 = r2.getParent()
        L_0x0062:
            boolean r2 = r0 instanceof android.view.ViewGroup
            if (r2 == 0) goto L_0x0081
            java.lang.String r2 = " => "
            java.lang.StringBuilder r2 = r5.append(r2)
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = r6.getSimpleName()
            r2.append(r6)
            android.view.ViewParent r0 = r0.getParent()
            goto L_0x0062
        L_0x007c:
            android.view.ViewParent r0 = r0.getParent()
            goto L_0x0045
        L_0x0081:
            java.lang.String r0 = "ViewPager"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r6 = "arrowScroll tried to find focus based on non-child current focused view "
            r2.<init>(r6)
            java.lang.String r5 = r5.toString()
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            android.util.Log.e(r0, r2)
            r0 = r1
            goto L_0x000e
        L_0x009c:
            boolean r0 = r1.requestFocus()
            goto L_0x0034
        L_0x00a1:
            if (r10 != r8) goto L_0x0035
            android.graphics.Rect r2 = r9.h
            android.graphics.Rect r2 = r9.a((android.graphics.Rect) r2, (android.view.View) r1)
            int r2 = r2.left
            android.graphics.Rect r5 = r9.h
            android.graphics.Rect r5 = r9.a((android.graphics.Rect) r5, (android.view.View) r0)
            int r5 = r5.left
            if (r0 == 0) goto L_0x00b7
            if (r2 <= r5) goto L_0x00cc
        L_0x00b7:
            boolean r0 = r1.requestFocus()
            goto L_0x0034
        L_0x00bd:
            if (r10 == r7) goto L_0x00c1
            if (r10 != r3) goto L_0x00c7
        L_0x00c1:
            boolean r0 = r9.i()
            goto L_0x0034
        L_0x00c7:
            if (r10 == r8) goto L_0x00cc
            r0 = 2
            if (r10 != r0) goto L_0x0035
        L_0x00cc:
            bd r0 = r9.i
            if (r0 == 0) goto L_0x00e6
            int r0 = r9.j
            bd r1 = r9.i
            int r1 = r1.getCount()
            int r1 = r1 + -1
            if (r0 >= r1) goto L_0x00e6
            int r0 = r9.j
            int r0 = r0 + 1
            r9.setCurrentItem(r0, r3)
            r0 = r3
            goto L_0x0034
        L_0x00e6:
            r0 = r4
            goto L_0x0034
        L_0x00e9:
            r0 = r2
            goto L_0x000e
        L_0x00ec:
            r0 = r4
            goto L_0x004c
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.e(int):boolean");
    }

    private void f() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private b g() {
        int i2;
        b bVar;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        float f2 = clientWidth > 0 ? ((float) this.p) / ((float) clientWidth) : 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i3 = -1;
        int i4 = 0;
        boolean z2 = true;
        b bVar2 = null;
        while (i4 < this.f.size()) {
            b bVar3 = this.f.get(i4);
            if (z2 || bVar3.b == i3 + 1) {
                b bVar4 = bVar3;
                i2 = i4;
                bVar = bVar4;
            } else {
                b bVar5 = this.g;
                bVar5.e = f3 + f4 + f2;
                bVar5.b = i3 + 1;
                bVar5.d = this.i.getPageWidth(bVar5.b);
                b bVar6 = bVar5;
                i2 = i4 - 1;
                bVar = bVar6;
            }
            float f5 = bVar.e;
            float f6 = bVar.d + f5 + f2;
            if (!z2 && scrollX < f5) {
                return bVar2;
            }
            if (scrollX < f6 || i2 == this.f.size() - 1) {
                return bVar;
            }
            f4 = f5;
            i3 = bVar.b;
            z2 = false;
            f3 = bVar.d;
            bVar2 = bVar;
            i4 = i2 + 1;
        }
        return bVar2;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void h() {
        this.B = false;
        this.C = false;
        if (this.L != null) {
            this.L.recycle();
            this.L = null;
        }
    }

    private boolean i() {
        if (this.j <= 0) {
            return false;
        }
        setCurrentItem(this.j - 1, true);
        return true;
    }

    /* access modifiers changed from: private */
    public void setScrollState(int i2) {
        if (this.aj != i2) {
            this.aj = i2;
            if (this.ad != null) {
                boolean z2 = i2 != 0;
                int childCount = getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    bh.a(getChildAt(i3), z2 ? 2 : 0, (Paint) null);
                }
            }
            if (this.aa != null) {
                this.aa.onPageScrollStateChanged(i2);
            }
            if (this.a != null) {
                int size = this.a.size();
                for (int i4 = 0; i4 < size; i4++) {
                    e eVar = this.a.get(i4);
                    if (eVar != null) {
                        eVar.onPageScrollStateChanged(i2);
                    }
                }
            }
            if (this.ab != null) {
                this.ab.onPageScrollStateChanged(i2);
            }
        }
    }

    private void setScrollingCacheEnabled(boolean z2) {
        if (this.y != z2) {
            this.y = z2;
        }
    }

    /* access modifiers changed from: package-private */
    public final e a(e eVar) {
        e eVar2 = this.ab;
        this.ab = eVar;
        return eVar2;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int count = this.i.getCount();
        this.c = count;
        boolean z4 = this.f.size() < (this.A * 2) + 1 && this.f.size() < count;
        boolean z5 = false;
        int i4 = this.j;
        boolean z6 = z4;
        int i5 = 0;
        while (i5 < this.f.size()) {
            b bVar = this.f.get(i5);
            int itemPosition = this.i.getItemPosition(bVar.a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.f.remove(i5);
                    int i6 = i5 - 1;
                    if (!z5) {
                        this.i.startUpdate((ViewGroup) this);
                        z5 = true;
                    }
                    this.i.destroyItem((ViewGroup) this, bVar.b, bVar.a);
                    if (this.j == bVar.b) {
                        i2 = i6;
                        z2 = z5;
                        i3 = Math.max(0, Math.min(this.j, count - 1));
                        z3 = true;
                    } else {
                        i2 = i6;
                        z2 = z5;
                        i3 = i4;
                        z3 = true;
                    }
                } else if (bVar.b != itemPosition) {
                    if (bVar.b == this.j) {
                        i4 = itemPosition;
                    }
                    bVar.b = itemPosition;
                    i2 = i5;
                    z2 = z5;
                    i3 = i4;
                    z3 = true;
                }
                z6 = z3;
                i4 = i3;
                z5 = z2;
                i5 = i2 + 1;
            }
            i2 = i5;
            z2 = z5;
            i3 = i4;
            z3 = z6;
            z6 = z3;
            i4 = i3;
            z5 = z2;
            i5 = i2 + 1;
        }
        if (z5) {
            this.i.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f, d);
        if (z6) {
            int childCount = getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i7).getLayoutParams();
                if (!layoutParams.a) {
                    layoutParams.c = 0.0f;
                }
            }
            a(i4, false, true);
            requestLayout();
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        b a2;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.j) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i3 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        b a2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.j) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams generateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        LayoutParams layoutParams2 = (LayoutParams) generateLayoutParams;
        layoutParams2.a |= view instanceof a;
        if (!this.x) {
            super.addView(view, i2, generateLayoutParams);
        } else if (layoutParams2 == null || !layoutParams2.a) {
            layoutParams2.d = true;
            addViewInLayout(view, i2, generateLayoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        a(this.j);
    }

    public boolean canScrollHorizontally(int i2) {
        if (this.i == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.t)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.u));
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        if (this.n.isFinished() || !this.n.computeScrollOffset()) {
            a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.n.getCurrX();
        int currY = this.n.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!c(currX)) {
                this.n.abortAnimation();
                scrollTo(0, currY);
            }
        }
        bh.d(this);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean dispatchKeyEvent(android.view.KeyEvent r5) {
        /*
            r4 = this;
            r1 = 1
            r0 = 0
            boolean r2 = super.dispatchKeyEvent(r5)
            if (r2 != 0) goto L_0x0018
            int r2 = r5.getAction()
            if (r2 != 0) goto L_0x0015
            int r2 = r5.getKeyCode()
            switch(r2) {
                case 21: goto L_0x001a;
                case 22: goto L_0x0021;
                case 61: goto L_0x0028;
                default: goto L_0x0015;
            }
        L_0x0015:
            r2 = r0
        L_0x0016:
            if (r2 == 0) goto L_0x0019
        L_0x0018:
            r0 = r1
        L_0x0019:
            return r0
        L_0x001a:
            r2 = 17
            boolean r2 = r4.e(r2)
            goto L_0x0016
        L_0x0021:
            r2 = 66
            boolean r2 = r4.e(r2)
            goto L_0x0016
        L_0x0028:
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 11
            if (r2 < r3) goto L_0x0015
            boolean r2 = defpackage.aq.b(r5)
            if (r2 == 0) goto L_0x003a
            r2 = 2
            boolean r2 = r4.e(r2)
            goto L_0x0016
        L_0x003a:
            boolean r2 = defpackage.aq.a(r5)
            if (r2 == 0) goto L_0x0015
            boolean r2 = r4.e(r1)
            goto L_0x0016
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        b a2;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.j && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean z2 = false;
        int a2 = bh.a((View) this);
        if (a2 == 0 || (a2 == 1 && this.i != null && this.i.getCount() > 1)) {
            if (!this.R.a()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-height) + getPaddingTop()), this.t * ((float) width));
                this.R.a(height, width);
                z2 = this.R.a(canvas) | false;
                canvas.restoreToCount(save);
            }
            if (!this.S.a()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.u + 1.0f)) * ((float) width2));
                this.S.a(height2, width2);
                z2 |= this.S.a(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.R.b();
            this.S.b();
        }
        if (z2) {
            bh.d(this);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.q;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public bd getAdapter() {
        return this.i;
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        if (this.af == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((LayoutParams) this.ag.get(i3).getLayoutParams()).f;
    }

    public int getCurrentItem() {
        return this.j;
    }

    public int getOffscreenPageLimit() {
        return this.A;
    }

    public int getPageMargin() {
        return this.p;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.T = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        removeCallbacks(this.ai);
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        float f2;
        super.onDraw(canvas);
        if (this.p > 0 && this.q != null && this.f.size() > 0 && this.i != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f3 = ((float) this.p) / ((float) width);
            b bVar = this.f.get(0);
            float f4 = bVar.e;
            int size = this.f.size();
            int i2 = bVar.b;
            int i3 = this.f.get(size - 1).b;
            int i4 = 0;
            int i5 = i2;
            while (i5 < i3) {
                while (i5 > bVar.b && i4 < size) {
                    i4++;
                    bVar = this.f.get(i4);
                }
                if (i5 == bVar.b) {
                    f2 = (bVar.e + bVar.d) * ((float) width);
                    f4 = bVar.e + bVar.d + f3;
                } else {
                    float pageWidth = this.i.getPageWidth(i5);
                    f2 = (f4 + pageWidth) * ((float) width);
                    f4 += pageWidth + f3;
                }
                if (((float) this.p) + f2 > ((float) scrollX)) {
                    this.q.setBounds((int) f2, this.r, (int) (((float) this.p) + f2 + 0.5f), this.s);
                    this.q.draw(canvas);
                }
                if (f2 <= ((float) (scrollX + width))) {
                    i5++;
                } else {
                    return;
                }
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.B = false;
            this.C = false;
            this.K = -1;
            if (this.L == null) {
                return false;
            }
            this.L.recycle();
            this.L = null;
            return false;
        }
        if (action != 0) {
            if (this.B) {
                return true;
            }
            if (this.C) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x2 = motionEvent.getX();
                this.I = x2;
                this.G = x2;
                float y2 = motionEvent.getY();
                this.J = y2;
                this.H = y2;
                this.K = ax.b(motionEvent, 0);
                this.C = false;
                this.n.computeScrollOffset();
                if (this.aj == 2 && Math.abs(this.n.getFinalX() - this.n.getCurrX()) > this.P) {
                    this.n.abortAnimation();
                    this.z = false;
                    b();
                    this.B = true;
                    f();
                    setScrollState(1);
                    break;
                } else {
                    a(false);
                    this.B = false;
                    break;
                }
                break;
            case 2:
                int i2 = this.K;
                if (i2 != -1) {
                    int a2 = ax.a(motionEvent, i2);
                    float c2 = ax.c(motionEvent, a2);
                    float f2 = c2 - this.G;
                    float abs = Math.abs(f2);
                    float d2 = ax.d(motionEvent, a2);
                    float abs2 = Math.abs(d2 - this.J);
                    if (f2 != 0.0f) {
                        float f3 = this.G;
                        if (!((f3 < ((float) this.E) && f2 > 0.0f) || (f3 > ((float) (getWidth() - this.E)) && f2 < 0.0f))) {
                            if (a(this, false, (int) f2, (int) c2, (int) d2)) {
                                this.G = c2;
                                this.H = d2;
                                this.C = true;
                                return false;
                            }
                        }
                    }
                    if (abs > ((float) this.F) && 0.5f * abs > abs2) {
                        this.B = true;
                        f();
                        setScrollState(1);
                        this.G = f2 > 0.0f ? this.I + ((float) this.F) : this.I - ((float) this.F);
                        this.H = d2;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > ((float) this.F)) {
                        this.C = true;
                    }
                    if (this.B && a(c2)) {
                        bh.d(this);
                        break;
                    }
                }
                break;
            case 6:
                a(motionEvent);
                break;
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        return this.B;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        b a2;
        int i6;
        int i7;
        int i8;
        int measuredHeight;
        int i9;
        int i10;
        int childCount = getChildCount();
        int i11 = i4 - i2;
        int i12 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i13 = 0;
        int i14 = 0;
        while (i14 < childCount) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a) {
                    int i15 = layoutParams.b & 7;
                    int i16 = layoutParams.b & 112;
                    switch (i15) {
                        case 1:
                            i8 = Math.max((i11 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 3:
                            i8 = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case 5:
                            int measuredWidth = (i11 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            i8 = measuredWidth;
                            break;
                        default:
                            i8 = paddingLeft;
                            break;
                    }
                    switch (i16) {
                        case 16:
                            measuredHeight = Math.max((i12 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            int i17 = paddingBottom;
                            i9 = paddingTop;
                            i10 = i17;
                            break;
                        case 48:
                            int measuredHeight2 = childAt.getMeasuredHeight() + paddingTop;
                            int i18 = paddingTop;
                            i10 = paddingBottom;
                            i9 = measuredHeight2;
                            measuredHeight = i18;
                            break;
                        case 80:
                            measuredHeight = (i12 - paddingBottom) - childAt.getMeasuredHeight();
                            int measuredHeight3 = paddingBottom + childAt.getMeasuredHeight();
                            i9 = paddingTop;
                            i10 = measuredHeight3;
                            break;
                        default:
                            measuredHeight = paddingTop;
                            int i19 = paddingBottom;
                            i9 = paddingTop;
                            i10 = i19;
                            break;
                    }
                    int i20 = i8 + scrollX;
                    childAt.layout(i20, measuredHeight, childAt.getMeasuredWidth() + i20, childAt.getMeasuredHeight() + measuredHeight);
                    i6 = i13 + 1;
                    i7 = i9;
                    paddingBottom = i10;
                    i14++;
                    paddingLeft = paddingLeft;
                    paddingRight = paddingRight;
                    paddingTop = i7;
                    i13 = i6;
                }
            }
            i6 = i13;
            i7 = paddingTop;
            i14++;
            paddingLeft = paddingLeft;
            paddingRight = paddingRight;
            paddingTop = i7;
            i13 = i6;
        }
        int i21 = (i11 - paddingLeft) - paddingRight;
        for (int i22 = 0; i22 < childCount; i22++) {
            View childAt2 = getChildAt(i22);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.a && (a2 = a(childAt2)) != null) {
                    int i23 = ((int) (a2.e * ((float) i21))) + paddingLeft;
                    if (layoutParams2.d) {
                        layoutParams2.d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (layoutParams2.c * ((float) i21)), 1073741824), View.MeasureSpec.makeMeasureSpec((i12 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i23, paddingTop, childAt2.getMeasuredWidth() + i23, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.r = paddingTop;
        this.s = i12 - paddingBottom;
        this.W = i13;
        if (this.T) {
            a(this.j, false, 0, false);
        }
        this.T = false;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a0  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r14, int r15) {
        /*
            r13 = this;
            r0 = 0
            int r0 = getDefaultSize(r0, r14)
            r1 = 0
            int r1 = getDefaultSize(r1, r15)
            r13.setMeasuredDimension(r0, r1)
            int r0 = r13.getMeasuredWidth()
            int r1 = r0 / 10
            int r2 = r13.D
            int r1 = java.lang.Math.min(r1, r2)
            r13.E = r1
            int r1 = r13.getPaddingLeft()
            int r0 = r0 - r1
            int r1 = r13.getPaddingRight()
            int r3 = r0 - r1
            int r0 = r13.getMeasuredHeight()
            int r1 = r13.getPaddingTop()
            int r0 = r0 - r1
            int r1 = r13.getPaddingBottom()
            int r5 = r0 - r1
            int r9 = r13.getChildCount()
            r0 = 0
            r8 = r0
        L_0x003b:
            if (r8 >= r9) goto L_0x00bc
            android.view.View r10 = r13.getChildAt(r8)
            int r0 = r10.getVisibility()
            r1 = 8
            if (r0 == r1) goto L_0x00a5
            android.view.ViewGroup$LayoutParams r0 = r10.getLayoutParams()
            android.support.v4.view.ViewPager$LayoutParams r0 = (android.support.v4.view.ViewPager.LayoutParams) r0
            if (r0 == 0) goto L_0x00a5
            boolean r1 = r0.a
            if (r1 == 0) goto L_0x00a5
            int r1 = r0.b
            r6 = r1 & 7
            int r1 = r0.b
            r4 = r1 & 112(0x70, float:1.57E-43)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = 48
            if (r4 == r7) goto L_0x0069
            r7 = 80
            if (r4 != r7) goto L_0x00a9
        L_0x0069:
            r4 = 1
            r7 = r4
        L_0x006b:
            r4 = 3
            if (r6 == r4) goto L_0x0071
            r4 = 5
            if (r6 != r4) goto L_0x00ac
        L_0x0071:
            r4 = 1
            r6 = r4
        L_0x0073:
            if (r7 == 0) goto L_0x00af
            r2 = 1073741824(0x40000000, float:2.0)
        L_0x0077:
            int r4 = r0.width
            r11 = -2
            if (r4 == r11) goto L_0x010f
            r4 = 1073741824(0x40000000, float:2.0)
            int r2 = r0.width
            r11 = -1
            if (r2 == r11) goto L_0x010c
            int r2 = r0.width
        L_0x0085:
            int r11 = r0.height
            r12 = -2
            if (r11 == r12) goto L_0x010a
            r1 = 1073741824(0x40000000, float:2.0)
            int r11 = r0.height
            r12 = -1
            if (r11 == r12) goto L_0x010a
            int r0 = r0.height
        L_0x0093:
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r4)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r10.measure(r2, r0)
            if (r7 == 0) goto L_0x00b4
            int r0 = r10.getMeasuredHeight()
            int r5 = r5 - r0
        L_0x00a5:
            int r0 = r8 + 1
            r8 = r0
            goto L_0x003b
        L_0x00a9:
            r4 = 0
            r7 = r4
            goto L_0x006b
        L_0x00ac:
            r4 = 0
            r6 = r4
            goto L_0x0073
        L_0x00af:
            if (r6 == 0) goto L_0x0077
            r1 = 1073741824(0x40000000, float:2.0)
            goto L_0x0077
        L_0x00b4:
            if (r6 == 0) goto L_0x00a5
            int r0 = r10.getMeasuredWidth()
            int r3 = r3 - r0
            goto L_0x00a5
        L_0x00bc:
            r0 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r0)
            r13.v = r0
            r0 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r0)
            r13.w = r0
            r0 = 1
            r13.x = r0
            r13.b()
            r0 = 0
            r13.x = r0
            int r2 = r13.getChildCount()
            r0 = 0
            r1 = r0
        L_0x00db:
            if (r1 >= r2) goto L_0x0109
            android.view.View r4 = r13.getChildAt(r1)
            int r0 = r4.getVisibility()
            r5 = 8
            if (r0 == r5) goto L_0x0105
            android.view.ViewGroup$LayoutParams r0 = r4.getLayoutParams()
            android.support.v4.view.ViewPager$LayoutParams r0 = (android.support.v4.view.ViewPager.LayoutParams) r0
            if (r0 == 0) goto L_0x00f5
            boolean r5 = r0.a
            if (r5 != 0) goto L_0x0105
        L_0x00f5:
            float r5 = (float) r3
            float r0 = r0.c
            float r0 = r0 * r5
            int r0 = (int) r0
            r5 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r5)
            int r5 = r13.w
            r4.measure(r0, r5)
        L_0x0105:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x00db
        L_0x0109:
            return
        L_0x010a:
            r0 = r5
            goto L_0x0093
        L_0x010c:
            r2 = r3
            goto L_0x0085
        L_0x010f:
            r4 = r2
            r2 = r3
            goto L_0x0085
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.onMeasure(int, int):void");
    }

    /* access modifiers changed from: protected */
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        b a2;
        int i4 = -1;
        int childCount = getChildCount();
        if ((i2 & 2) != 0) {
            i4 = 1;
            i3 = 0;
        } else {
            i3 = childCount - 1;
            childCount = -1;
        }
        while (i3 != childCount) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.j && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
        }
        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.i != null) {
            this.i.restoreState(savedState.b, savedState.c);
            a(savedState.a, false, true);
            return;
        }
        this.k = savedState.a;
        this.l = savedState.b;
        this.m = savedState.c;
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.j;
        if (this.i != null) {
            savedState.b = this.i.saveState();
        }
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            a(i2, i4, this.p, this.p);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i2;
        boolean z2 = false;
        if (this.Q) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.i == null || this.i.getCount() == 0) {
            return false;
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.n.abortAnimation();
                this.z = false;
                b();
                float x2 = motionEvent.getX();
                this.I = x2;
                this.G = x2;
                float y2 = motionEvent.getY();
                this.J = y2;
                this.H = y2;
                this.K = ax.b(motionEvent, 0);
                break;
            case 1:
                if (this.B) {
                    VelocityTracker velocityTracker = this.L;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.N);
                    int a2 = (int) bg.a(velocityTracker, this.K);
                    this.z = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    b g2 = g();
                    int i3 = g2.b;
                    float f2 = ((((float) scrollX) / ((float) clientWidth)) - g2.e) / g2.d;
                    if (Math.abs((int) (ax.c(motionEvent, ax.a(motionEvent, this.K)) - this.I)) <= this.O || Math.abs(a2) <= this.M) {
                        i2 = (int) (((float) i3) + f2 + (i3 >= this.j ? 0.4f : 0.6f));
                    } else {
                        if (a2 <= 0) {
                            i3++;
                        }
                        i2 = i3;
                    }
                    if (this.f.size() > 0) {
                        i2 = Math.max(this.f.get(0).b, Math.min(i2, this.f.get(this.f.size() - 1).b));
                    }
                    a(i2, true, true, a2);
                    this.K = -1;
                    h();
                    z2 = this.R.c() | this.S.c();
                    break;
                }
                break;
            case 2:
                if (!this.B) {
                    int a3 = ax.a(motionEvent, this.K);
                    float c2 = ax.c(motionEvent, a3);
                    float abs = Math.abs(c2 - this.G);
                    float d2 = ax.d(motionEvent, a3);
                    float abs2 = Math.abs(d2 - this.H);
                    if (abs > ((float) this.F) && abs > abs2) {
                        this.B = true;
                        f();
                        this.G = c2 - this.I > 0.0f ? this.I + ((float) this.F) : this.I - ((float) this.F);
                        this.H = d2;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                if (this.B) {
                    z2 = a(ax.c(motionEvent, ax.a(motionEvent, this.K))) | false;
                    break;
                }
                break;
            case 3:
                if (this.B) {
                    a(this.j, true, 0, false);
                    this.K = -1;
                    h();
                    z2 = this.R.c() | this.S.c();
                    break;
                }
                break;
            case 5:
                int b2 = ax.b(motionEvent);
                this.G = ax.c(motionEvent, b2);
                this.K = ax.b(motionEvent, b2);
                break;
            case 6:
                a(motionEvent);
                this.G = ax.c(motionEvent, ax.a(motionEvent, this.K));
                break;
        }
        if (z2) {
            bh.d(this);
        }
        return true;
    }

    public void removeView(View view) {
        if (this.x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(bd bdVar) {
        if (this.i != null) {
            this.i.unregisterDataSetObserver(this.o);
            this.i.startUpdate((ViewGroup) this);
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                b bVar = this.f.get(i2);
                this.i.destroyItem((ViewGroup) this, bVar.b, bVar.a);
            }
            this.i.finishUpdate((ViewGroup) this);
            this.f.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i3).getLayoutParams()).a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.j = 0;
            scrollTo(0, 0);
        }
        bd bdVar2 = this.i;
        this.i = bdVar;
        this.c = 0;
        if (this.i != null) {
            if (this.o == null) {
                this.o = new g(this, (byte) 0);
            }
            this.i.registerDataSetObserver(this.o);
            this.z = false;
            boolean z2 = this.T;
            this.T = true;
            this.c = this.i.getCount();
            if (this.k >= 0) {
                this.i.restoreState(this.l, this.m);
                a(this.k, false, true);
                this.k = -1;
                this.l = null;
                this.m = null;
            } else if (!z2) {
                b();
            } else {
                requestLayout();
            }
        }
        if (this.ac != null && bdVar2 != bdVar) {
            this.ac.a(bdVar2, bdVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void setChildrenDrawingOrderEnabledCompat(boolean z2) {
        if (Build.VERSION.SDK_INT >= 7) {
            if (this.ae == null) {
                Class<ViewGroup> cls = ViewGroup.class;
                try {
                    this.ae = cls.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[]{Boolean.TYPE});
                } catch (NoSuchMethodException e2) {
                    Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", e2);
                }
            }
            try {
                this.ae.invoke(this, new Object[]{Boolean.valueOf(z2)});
            } catch (Exception e3) {
                Log.e("ViewPager", "Error changing children drawing order", e3);
            }
        }
    }

    public void setCurrentItem(int i2) {
        this.z = false;
        a(i2, !this.T, false);
    }

    public void setCurrentItem(int i2, boolean z2) {
        this.z = false;
        a(i2, z2, false);
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 <= 0) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.A) {
            this.A = i2;
            b();
        }
    }

    /* access modifiers changed from: package-private */
    public void setOnAdapterChangeListener(d dVar) {
        this.ac = dVar;
    }

    @Deprecated
    public void setOnPageChangeListener(e eVar) {
        this.aa = eVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.p;
        this.p = i2;
        int width = getWidth();
        a(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i2));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.q = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z2, f fVar) {
        int i2 = 1;
        if (Build.VERSION.SDK_INT >= 11) {
            boolean z3 = fVar != null;
            boolean z4 = z3 != (this.ad != null);
            this.ad = fVar;
            setChildrenDrawingOrderEnabledCompat(z3);
            if (z3) {
                if (z2) {
                    i2 = 2;
                }
                this.af = i2;
            } else {
                this.af = 0;
            }
            if (z4) {
                b();
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q;
    }
}
