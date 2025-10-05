package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v7.internal.widget.AppCompatPopupWindow;
import android.support.v7.internal.widget.ListViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import defpackage.cv;
import java.lang.reflect.Method;

public class ListPopupWindow {
    private static Method a;
    /* access modifiers changed from: private */
    public Handler A;
    private Rect B;
    private boolean C;
    private int D;
    public PopupWindow b;
    public a c;
    public int d;
    int e;
    protected int f;
    public View g;
    public AdapterView.OnItemClickListener h;
    private Context i;
    private ListAdapter j;
    private int k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private boolean q;
    private View r;
    private DataSetObserver s;
    private Drawable t;
    private AdapterView.OnItemSelectedListener u;
    /* access modifiers changed from: private */
    public final g v;
    private final f w;
    private final e x;
    private final c y;
    private Runnable z;

    static class a extends ListViewCompat {
        /* access modifiers changed from: private */
        public boolean g;
        private boolean h;
        private boolean i;
        private bp j;
        private co k;

        public a(Context context, boolean z) {
            super(context, (AttributeSet) null, cv.a.dropDownListViewStyle);
            this.h = z;
            setCacheColorHint(0);
        }

        /* access modifiers changed from: protected */
        public final boolean a() {
            return this.i || super.a();
        }

        /* JADX WARNING: Can't fix incorrect switch cases order */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean a(android.view.MotionEvent r15, int r16) {
            /*
                r14 = this;
                r0 = 1
                r1 = 0
                int r3 = defpackage.ax.a(r15)
                switch(r3) {
                    case 1: goto L_0x0044;
                    case 2: goto L_0x0045;
                    case 3: goto L_0x003f;
                    default: goto L_0x0009;
                }
            L_0x0009:
                r13 = r1
                r1 = r0
                r0 = r13
            L_0x000c:
                if (r1 == 0) goto L_0x0010
                if (r0 == 0) goto L_0x0026
            L_0x0010:
                r0 = 0
                r14.i = r0
                r0 = 0
                r14.setPressed(r0)
                r14.drawableStateChanged()
                bp r0 = r14.j
                if (r0 == 0) goto L_0x0026
                bp r0 = r14.j
                r0.a()
                r0 = 0
                r14.j = r0
            L_0x0026:
                if (r1 == 0) goto L_0x0127
                co r0 = r14.k
                if (r0 != 0) goto L_0x0033
                co r0 = new co
                r0.<init>(r14)
                r14.k = r0
            L_0x0033:
                co r0 = r14.k
                r2 = 1
                r0.a((boolean) r2)
                co r0 = r14.k
                r0.onTouch(r14, r15)
            L_0x003e:
                return r1
            L_0x003f:
                r0 = 0
                r13 = r1
                r1 = r0
                r0 = r13
                goto L_0x000c
            L_0x0044:
                r0 = 0
            L_0x0045:
                int r2 = r15.findPointerIndex(r16)
                if (r2 >= 0) goto L_0x0050
                r0 = 0
                r13 = r1
                r1 = r0
                r0 = r13
                goto L_0x000c
            L_0x0050:
                float r4 = r15.getX(r2)
                int r4 = (int) r4
                float r2 = r15.getY(r2)
                int r2 = (int) r2
                int r5 = r14.pointToPosition(r4, r2)
                r6 = -1
                if (r5 != r6) goto L_0x0066
                r1 = 1
                r13 = r1
                r1 = r0
                r0 = r13
                goto L_0x000c
            L_0x0066:
                int r0 = r14.getFirstVisiblePosition()
                int r0 = r5 - r0
                android.view.View r6 = r14.getChildAt(r0)
                float r4 = (float) r4
                float r7 = (float) r2
                r0 = 1
                r14.i = r0
                r0 = 1
                r14.setPressed(r0)
                r14.layoutChildren()
                r14.setSelection(r5)
                android.graphics.drawable.Drawable r8 = r14.getSelector()
                if (r8 == 0) goto L_0x011a
                r0 = -1
                if (r5 == r0) goto L_0x011a
                r0 = 1
                r2 = r0
            L_0x008a:
                if (r2 == 0) goto L_0x0091
                r0 = 0
                r9 = 0
                r8.setVisible(r0, r9)
            L_0x0091:
                android.graphics.Rect r0 = r14.a
                int r9 = r6.getLeft()
                int r10 = r6.getTop()
                int r11 = r6.getRight()
                int r12 = r6.getBottom()
                r0.set(r9, r10, r11, r12)
                int r9 = r0.left
                int r10 = r14.b
                int r9 = r9 - r10
                r0.left = r9
                int r9 = r0.top
                int r10 = r14.c
                int r9 = r9 - r10
                r0.top = r9
                int r9 = r0.right
                int r10 = r14.d
                int r9 = r9 + r10
                r0.right = r9
                int r9 = r0.bottom
                int r10 = r14.e
                int r9 = r9 + r10
                r0.bottom = r9
                java.lang.reflect.Field r0 = r14.f     // Catch:{ IllegalAccessException -> 0x0120 }
                boolean r0 = r0.getBoolean(r14)     // Catch:{ IllegalAccessException -> 0x0120 }
                boolean r9 = r6.isEnabled()     // Catch:{ IllegalAccessException -> 0x0120 }
                if (r9 == r0) goto L_0x00e0
                java.lang.reflect.Field r9 = r14.f     // Catch:{ IllegalAccessException -> 0x0120 }
                if (r0 != 0) goto L_0x011e
                r0 = 1
            L_0x00d3:
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch:{ IllegalAccessException -> 0x0120 }
                r9.set(r14, r0)     // Catch:{ IllegalAccessException -> 0x0120 }
                r0 = -1
                if (r5 == r0) goto L_0x00e0
                r14.refreshDrawableState()     // Catch:{ IllegalAccessException -> 0x0120 }
            L_0x00e0:
                if (r2 == 0) goto L_0x00fa
                android.graphics.Rect r0 = r14.a
                float r2 = r0.exactCenterX()
                float r9 = r0.exactCenterY()
                int r0 = r14.getVisibility()
                if (r0 != 0) goto L_0x0125
                r0 = 1
            L_0x00f3:
                r10 = 0
                r8.setVisible(r0, r10)
                defpackage.i.a(r8, r2, r9)
            L_0x00fa:
                android.graphics.drawable.Drawable r0 = r14.getSelector()
                if (r0 == 0) goto L_0x0106
                r2 = -1
                if (r5 == r2) goto L_0x0106
                defpackage.i.a(r0, r4, r7)
            L_0x0106:
                r0 = 0
                r14.setSelectorEnabled(r0)
                r14.refreshDrawableState()
                r0 = 1
                r2 = 1
                if (r3 != r2) goto L_0x0009
                long r2 = r14.getItemIdAtPosition(r5)
                r14.performItemClick(r6, r5, r2)
                goto L_0x0009
            L_0x011a:
                r0 = 0
                r2 = r0
                goto L_0x008a
            L_0x011e:
                r0 = 0
                goto L_0x00d3
            L_0x0120:
                r0 = move-exception
                r0.printStackTrace()
                goto L_0x00e0
            L_0x0125:
                r0 = 0
                goto L_0x00f3
            L_0x0127:
                co r0 = r14.k
                if (r0 == 0) goto L_0x003e
                co r0 = r14.k
                r2 = 0
                r0.a((boolean) r2)
                goto L_0x003e
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ListPopupWindow.a.a(android.view.MotionEvent, int):boolean");
        }

        public final boolean hasFocus() {
            return this.h || super.hasFocus();
        }

        public final boolean hasWindowFocus() {
            return this.h || super.hasWindowFocus();
        }

        public final boolean isFocused() {
            return this.h || super.isFocused();
        }

        public final boolean isInTouchMode() {
            return (this.h && this.g) || super.isInTouchMode();
        }
    }

    public static abstract class b implements View.OnTouchListener {
        private final float a;
        private final int b;
        private final int c;
        /* access modifiers changed from: private */
        public final View d;
        private Runnable e;
        private Runnable f;
        private boolean g;
        private boolean h;
        private int i;
        private final int[] j = new int[2];

        class a implements Runnable {
            private a() {
            }

            /* synthetic */ a(b bVar, byte b) {
                this();
            }

            public final void run() {
                b.this.d.getParent().requestDisallowInterceptTouchEvent(true);
            }
        }

        /* renamed from: android.support.v7.widget.ListPopupWindow$b$b  reason: collision with other inner class name */
        class C0001b implements Runnable {
            private C0001b() {
            }

            /* synthetic */ C0001b(b bVar, byte b) {
                this();
            }

            public final void run() {
                b.b(b.this);
            }
        }

        public b(View view) {
            this.d = view;
            this.a = (float) ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.b = ViewConfiguration.getTapTimeout();
            this.c = (this.b + ViewConfiguration.getLongPressTimeout()) / 2;
        }

        private boolean a(MotionEvent motionEvent) {
            View view = this.d;
            ListPopupWindow a2 = a();
            if (a2 == null || !a2.b.isShowing()) {
                return false;
            }
            a a3 = a2.c;
            if (a3 == null || !a3.isShown()) {
                return false;
            }
            MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
            int[] iArr = this.j;
            view.getLocationOnScreen(iArr);
            obtainNoHistory.offsetLocation((float) iArr[0], (float) iArr[1]);
            int[] iArr2 = this.j;
            a3.getLocationOnScreen(iArr2);
            obtainNoHistory.offsetLocation((float) (-iArr2[0]), (float) (-iArr2[1]));
            boolean a4 = a3.a(obtainNoHistory, this.i);
            obtainNoHistory.recycle();
            int a5 = ax.a(motionEvent);
            return a4 && (a5 != 1 && a5 != 3);
        }

        static /* synthetic */ void b(b bVar) {
            bVar.d();
            View view = bVar.d;
            if (view.isEnabled() && !view.isLongClickable() && bVar.b()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(obtain);
                obtain.recycle();
                bVar.g = true;
                bVar.h = true;
            }
        }

        private void d() {
            if (this.f != null) {
                this.d.removeCallbacks(this.f);
            }
            if (this.e != null) {
                this.d.removeCallbacks(this.e);
            }
        }

        public abstract ListPopupWindow a();

        public boolean b() {
            ListPopupWindow a2 = a();
            if (a2 == null || a2.b.isShowing()) {
                return true;
            }
            a2.c();
            return true;
        }

        public boolean c() {
            ListPopupWindow a2 = a();
            if (a2 == null || !a2.b.isShowing()) {
                return true;
            }
            a2.a();
            return true;
        }

        /* JADX WARNING: Can't fix incorrect switch cases order */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTouch(android.view.View r12, android.view.MotionEvent r13) {
            /*
                r11 = this;
                r5 = 0
                r8 = 1
                r7 = 0
                boolean r10 = r11.g
                if (r10 == 0) goto L_0x0027
                boolean r0 = r11.h
                if (r0 == 0) goto L_0x0017
                boolean r0 = r11.a((android.view.MotionEvent) r13)
            L_0x000f:
                r11.g = r0
                if (r0 != 0) goto L_0x0015
                if (r10 == 0) goto L_0x0016
            L_0x0015:
                r7 = r8
            L_0x0016:
                return r7
            L_0x0017:
                boolean r0 = r11.a((android.view.MotionEvent) r13)
                if (r0 != 0) goto L_0x0023
                boolean r0 = r11.c()
                if (r0 != 0) goto L_0x0025
            L_0x0023:
                r0 = r8
                goto L_0x000f
            L_0x0025:
                r0 = r7
                goto L_0x000f
            L_0x0027:
                android.view.View r1 = r11.d
                boolean r0 = r1.isEnabled()
                if (r0 == 0) goto L_0x0036
                int r0 = defpackage.ax.a(r13)
                switch(r0) {
                    case 0: goto L_0x0057;
                    case 1: goto L_0x00d2;
                    case 2: goto L_0x0086;
                    case 3: goto L_0x00d2;
                    default: goto L_0x0036;
                }
            L_0x0036:
                r0 = r7
            L_0x0037:
                if (r0 == 0) goto L_0x00d7
                boolean r0 = r11.b()
                if (r0 == 0) goto L_0x00d7
                r9 = r8
            L_0x0040:
                if (r9 == 0) goto L_0x0055
                long r0 = android.os.SystemClock.uptimeMillis()
                r4 = 3
                r2 = r0
                r6 = r5
                android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r0, r2, r4, r5, r6, r7)
                android.view.View r1 = r11.d
                r1.onTouchEvent(r0)
                r0.recycle()
            L_0x0055:
                r0 = r9
                goto L_0x000f
            L_0x0057:
                int r0 = r13.getPointerId(r7)
                r11.i = r0
                r11.h = r7
                java.lang.Runnable r0 = r11.e
                if (r0 != 0) goto L_0x006a
                android.support.v7.widget.ListPopupWindow$b$a r0 = new android.support.v7.widget.ListPopupWindow$b$a
                r0.<init>(r11, r7)
                r11.e = r0
            L_0x006a:
                java.lang.Runnable r0 = r11.e
                int r2 = r11.b
                long r2 = (long) r2
                r1.postDelayed(r0, r2)
                java.lang.Runnable r0 = r11.f
                if (r0 != 0) goto L_0x007d
                android.support.v7.widget.ListPopupWindow$b$b r0 = new android.support.v7.widget.ListPopupWindow$b$b
                r0.<init>(r11, r7)
                r11.f = r0
            L_0x007d:
                java.lang.Runnable r0 = r11.f
                int r2 = r11.c
                long r2 = (long) r2
                r1.postDelayed(r0, r2)
                goto L_0x0036
            L_0x0086:
                int r0 = r11.i
                int r0 = r13.findPointerIndex(r0)
                if (r0 < 0) goto L_0x0036
                float r2 = r13.getX(r0)
                float r0 = r13.getY(r0)
                float r3 = r11.a
                float r4 = -r3
                int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r4 < 0) goto L_0x00d0
                float r4 = -r3
                int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                if (r4 < 0) goto L_0x00d0
                int r4 = r1.getRight()
                int r6 = r1.getLeft()
                int r4 = r4 - r6
                float r4 = (float) r4
                float r4 = r4 + r3
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 >= 0) goto L_0x00d0
                int r2 = r1.getBottom()
                int r4 = r1.getTop()
                int r2 = r2 - r4
                float r2 = (float) r2
                float r2 = r2 + r3
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 >= 0) goto L_0x00d0
                r0 = r8
            L_0x00c1:
                if (r0 != 0) goto L_0x0036
                r11.d()
                android.view.ViewParent r0 = r1.getParent()
                r0.requestDisallowInterceptTouchEvent(r8)
                r0 = r8
                goto L_0x0037
            L_0x00d0:
                r0 = r7
                goto L_0x00c1
            L_0x00d2:
                r11.d()
                goto L_0x0036
            L_0x00d7:
                r9 = r7
                goto L_0x0040
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ListPopupWindow.b.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    class c implements Runnable {
        private c() {
        }

        /* synthetic */ c(ListPopupWindow listPopupWindow, byte b) {
            this();
        }

        public final void run() {
            ListPopupWindow.this.e();
        }
    }

    class d extends DataSetObserver {
        private d() {
        }

        /* synthetic */ d(ListPopupWindow listPopupWindow, byte b) {
            this();
        }

        public final void onChanged() {
            if (ListPopupWindow.this.b.isShowing()) {
                ListPopupWindow.this.c();
            }
        }

        public final void onInvalidated() {
            ListPopupWindow.this.a();
        }
    }

    class e implements AbsListView.OnScrollListener {
        private e() {
        }

        /* synthetic */ e(ListPopupWindow listPopupWindow, byte b) {
            this();
        }

        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.f() && ListPopupWindow.this.b.getContentView() != null) {
                ListPopupWindow.this.A.removeCallbacks(ListPopupWindow.this.v);
                ListPopupWindow.this.v.run();
            }
        }
    }

    class f implements View.OnTouchListener {
        private f() {
        }

        /* synthetic */ f(ListPopupWindow listPopupWindow, byte b) {
            this();
        }

        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.b != null && ListPopupWindow.this.b.isShowing() && x >= 0 && x < ListPopupWindow.this.b.getWidth() && y >= 0 && y < ListPopupWindow.this.b.getHeight()) {
                ListPopupWindow.this.A.postDelayed(ListPopupWindow.this.v, 250);
                return false;
            } else if (action != 1) {
                return false;
            } else {
                ListPopupWindow.this.A.removeCallbacks(ListPopupWindow.this.v);
                return false;
            }
        }
    }

    class g implements Runnable {
        private g() {
        }

        /* synthetic */ g(ListPopupWindow listPopupWindow, byte b) {
            this();
        }

        public final void run() {
            if (ListPopupWindow.this.c != null && ListPopupWindow.this.c.getCount() > ListPopupWindow.this.c.getChildCount() && ListPopupWindow.this.c.getChildCount() <= ListPopupWindow.this.e) {
                ListPopupWindow.this.b.setInputMethodMode(2);
                ListPopupWindow.this.c();
            }
        }
    }

    static {
        Class<PopupWindow> cls = PopupWindow.class;
        try {
            a = cls.getDeclaredMethod("setClipToScreenEnabled", new Class[]{Boolean.TYPE});
        } catch (NoSuchMethodException e2) {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }

    public ListPopupWindow(Context context) {
        this(context, (AttributeSet) null, cv.a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.k = -2;
        this.l = -2;
        this.d = 0;
        this.p = false;
        this.q = false;
        this.e = Integer.MAX_VALUE;
        this.f = 0;
        this.v = new g(this, (byte) 0);
        this.w = new f(this, (byte) 0);
        this.x = new e(this, (byte) 0);
        this.y = new c(this, (byte) 0);
        this.A = new Handler();
        this.B = new Rect();
        this.i = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.ListPopupWindow, i2, i3);
        this.m = obtainStyledAttributes.getDimensionPixelOffset(cv.k.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.n = obtainStyledAttributes.getDimensionPixelOffset(cv.k.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.n != 0) {
            this.o = true;
        }
        obtainStyledAttributes.recycle();
        this.b = new AppCompatPopupWindow(context, attributeSet, i2);
        this.b.setInputMethodMode(1);
        this.D = aa.a(this.i.getResources().getConfiguration().locale);
    }

    public final void a() {
        this.b.dismiss();
        if (this.r != null) {
            ViewParent parent = this.r.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.r);
            }
        }
        this.b.setContentView((View) null);
        this.c = null;
        this.A.removeCallbacks(this.v);
    }

    public final void a(int i2) {
        Drawable background = this.b.getBackground();
        if (background != null) {
            background.getPadding(this.B);
            this.l = this.B.left + this.B.right + i2;
            return;
        }
        this.l = i2;
    }

    public void a(ListAdapter listAdapter) {
        if (this.s == null) {
            this.s = new d(this, (byte) 0);
        } else if (this.j != null) {
            this.j.unregisterDataSetObserver(this.s);
        }
        this.j = listAdapter;
        if (this.j != null) {
            listAdapter.registerDataSetObserver(this.s);
        }
        if (this.c != null) {
            this.c.setAdapter(this.j);
        }
    }

    public final void a(PopupWindow.OnDismissListener onDismissListener) {
        this.b.setOnDismissListener(onDismissListener);
    }

    public final boolean b() {
        return this.b.isShowing();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v42, resolved type: android.support.v7.widget.ListPopupWindow$a} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v43, resolved type: android.support.v7.widget.ListPopupWindow$a} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v44, resolved type: android.widget.LinearLayout} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v47, resolved type: android.support.v7.widget.ListPopupWindow$a} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c() {
        /*
            r11 = this;
            r10 = -2147483648(0xffffffff80000000, float:-0.0)
            r9 = -2
            r1 = 1
            r2 = 0
            r5 = -1
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            if (r0 != 0) goto L_0x0136
            android.content.Context r4 = r11.i
            android.support.v7.widget.ListPopupWindow$1 r0 = new android.support.v7.widget.ListPopupWindow$1
            r0.<init>()
            r11.z = r0
            android.support.v7.widget.ListPopupWindow$a r3 = new android.support.v7.widget.ListPopupWindow$a
            boolean r0 = r11.C
            if (r0 != 0) goto L_0x0123
            r0 = r1
        L_0x001a:
            r3.<init>(r4, r0)
            r11.c = r3
            android.graphics.drawable.Drawable r0 = r11.t
            if (r0 == 0) goto L_0x002a
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            android.graphics.drawable.Drawable r3 = r11.t
            r0.setSelector(r3)
        L_0x002a:
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            android.widget.ListAdapter r3 = r11.j
            r0.setAdapter(r3)
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            android.widget.AdapterView$OnItemClickListener r3 = r11.h
            r0.setOnItemClickListener(r3)
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            r0.setFocusable(r1)
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            r0.setFocusableInTouchMode(r1)
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            android.support.v7.widget.ListPopupWindow$2 r3 = new android.support.v7.widget.ListPopupWindow$2
            r3.<init>()
            r0.setOnItemSelectedListener(r3)
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            android.support.v7.widget.ListPopupWindow$e r3 = r11.x
            r0.setOnScrollListener(r3)
            android.widget.AdapterView$OnItemSelectedListener r0 = r11.u
            if (r0 == 0) goto L_0x005e
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            android.widget.AdapterView$OnItemSelectedListener r3 = r11.u
            r0.setOnItemSelectedListener(r3)
        L_0x005e:
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            android.view.View r6 = r11.r
            if (r6 == 0) goto L_0x0283
            android.widget.LinearLayout r3 = new android.widget.LinearLayout
            r3.<init>(r4)
            r3.setOrientation(r1)
            android.widget.LinearLayout$LayoutParams r4 = new android.widget.LinearLayout$LayoutParams
            r7 = 1065353216(0x3f800000, float:1.0)
            r4.<init>(r5, r2, r7)
            int r7 = r11.f
            switch(r7) {
                case 0: goto L_0x012e;
                case 1: goto L_0x0126;
                default: goto L_0x0078;
            }
        L_0x0078:
            java.lang.String r0 = "ListPopupWindow"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r7 = "Invalid hint position "
            r4.<init>(r7)
            int r7 = r11.f
            java.lang.StringBuilder r4 = r4.append(r7)
            java.lang.String r4 = r4.toString()
            android.util.Log.e(r0, r4)
        L_0x008e:
            int r0 = r11.l
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r10)
            r6.measure(r0, r2)
            android.view.ViewGroup$LayoutParams r0 = r6.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r0 = (android.widget.LinearLayout.LayoutParams) r0
            int r4 = r6.getMeasuredHeight()
            int r6 = r0.topMargin
            int r4 = r4 + r6
            int r0 = r0.bottomMargin
            int r0 = r0 + r4
        L_0x00a7:
            android.widget.PopupWindow r4 = r11.b
            r4.setContentView(r3)
        L_0x00ac:
            android.widget.PopupWindow r3 = r11.b
            android.graphics.drawable.Drawable r3 = r3.getBackground()
            if (r3 == 0) goto L_0x0151
            android.graphics.Rect r4 = r11.B
            r3.getPadding(r4)
            android.graphics.Rect r3 = r11.B
            int r3 = r3.top
            android.graphics.Rect r4 = r11.B
            int r4 = r4.bottom
            int r3 = r3 + r4
            boolean r4 = r11.o
            if (r4 != 0) goto L_0x00cd
            android.graphics.Rect r4 = r11.B
            int r4 = r4.top
            int r4 = -r4
            r11.n = r4
        L_0x00cd:
            android.widget.PopupWindow r4 = r11.b
            r4.getInputMethodMode()
            android.widget.PopupWindow r4 = r11.b
            android.view.View r6 = r11.g
            int r7 = r11.n
            int r6 = r4.getMaxAvailableHeight(r6, r7)
            boolean r4 = r11.p
            if (r4 != 0) goto L_0x00e4
            int r4 = r11.k
            if (r4 != r5) goto L_0x0159
        L_0x00e4:
            int r0 = r6 + r3
        L_0x00e6:
            boolean r6 = r11.f()
            android.widget.PopupWindow r3 = r11.b
            boolean r3 = r3.isShowing()
            if (r3 == 0) goto L_0x01de
            int r3 = r11.l
            if (r3 != r5) goto L_0x01ab
            r4 = r5
        L_0x00f7:
            int r3 = r11.k
            if (r3 != r5) goto L_0x01d0
            if (r6 == 0) goto L_0x01bb
            r3 = r0
        L_0x00fe:
            if (r6 == 0) goto L_0x01c1
            android.widget.PopupWindow r0 = r11.b
            int r6 = r11.l
            if (r6 != r5) goto L_0x01be
        L_0x0106:
            r0.setWindowLayoutMode(r5, r2)
            r5 = r3
        L_0x010a:
            android.widget.PopupWindow r0 = r11.b
            boolean r3 = r11.q
            if (r3 != 0) goto L_0x01db
            boolean r3 = r11.p
            if (r3 != 0) goto L_0x01db
        L_0x0114:
            r0.setOutsideTouchable(r1)
            android.widget.PopupWindow r0 = r11.b
            android.view.View r1 = r11.g
            int r2 = r11.m
            int r3 = r11.n
            r0.update(r1, r2, r3, r4, r5)
        L_0x0122:
            return
        L_0x0123:
            r0 = r2
            goto L_0x001a
        L_0x0126:
            r3.addView(r0, r4)
            r3.addView(r6)
            goto L_0x008e
        L_0x012e:
            r3.addView(r6)
            r3.addView(r0, r4)
            goto L_0x008e
        L_0x0136:
            android.widget.PopupWindow r0 = r11.b
            r0.getContentView()
            android.view.View r3 = r11.r
            if (r3 == 0) goto L_0x0280
            android.view.ViewGroup$LayoutParams r0 = r3.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r0 = (android.widget.LinearLayout.LayoutParams) r0
            int r3 = r3.getMeasuredHeight()
            int r4 = r0.topMargin
            int r3 = r3 + r4
            int r0 = r0.bottomMargin
            int r0 = r0 + r3
            goto L_0x00ac
        L_0x0151:
            android.graphics.Rect r3 = r11.B
            r3.setEmpty()
            r3 = r2
            goto L_0x00cd
        L_0x0159:
            int r4 = r11.l
            switch(r4) {
                case -2: goto L_0x0173;
                case -1: goto L_0x018e;
                default: goto L_0x015e;
            }
        L_0x015e:
            int r4 = r11.l
            r7 = 1073741824(0x40000000, float:2.0)
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r7)
        L_0x0166:
            android.support.v7.widget.ListPopupWindow$a r7 = r11.c
            int r6 = r6 - r0
            int r4 = r7.a(r4, r6)
            if (r4 <= 0) goto L_0x0170
            int r0 = r0 + r3
        L_0x0170:
            int r0 = r0 + r4
            goto L_0x00e6
        L_0x0173:
            android.content.Context r4 = r11.i
            android.content.res.Resources r4 = r4.getResources()
            android.util.DisplayMetrics r4 = r4.getDisplayMetrics()
            int r4 = r4.widthPixels
            android.graphics.Rect r7 = r11.B
            int r7 = r7.left
            android.graphics.Rect r8 = r11.B
            int r8 = r8.right
            int r7 = r7 + r8
            int r4 = r4 - r7
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r10)
            goto L_0x0166
        L_0x018e:
            android.content.Context r4 = r11.i
            android.content.res.Resources r4 = r4.getResources()
            android.util.DisplayMetrics r4 = r4.getDisplayMetrics()
            int r4 = r4.widthPixels
            android.graphics.Rect r7 = r11.B
            int r7 = r7.left
            android.graphics.Rect r8 = r11.B
            int r8 = r8.right
            int r7 = r7 + r8
            int r4 = r4 - r7
            r7 = 1073741824(0x40000000, float:2.0)
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r7)
            goto L_0x0166
        L_0x01ab:
            int r3 = r11.l
            if (r3 != r9) goto L_0x01b7
            android.view.View r3 = r11.g
            int r4 = r3.getWidth()
            goto L_0x00f7
        L_0x01b7:
            int r4 = r11.l
            goto L_0x00f7
        L_0x01bb:
            r3 = r5
            goto L_0x00fe
        L_0x01be:
            r5 = r2
            goto L_0x0106
        L_0x01c1:
            android.widget.PopupWindow r6 = r11.b
            int r0 = r11.l
            if (r0 != r5) goto L_0x01ce
            r0 = r5
        L_0x01c8:
            r6.setWindowLayoutMode(r0, r5)
            r5 = r3
            goto L_0x010a
        L_0x01ce:
            r0 = r2
            goto L_0x01c8
        L_0x01d0:
            int r3 = r11.k
            if (r3 != r9) goto L_0x01d7
            r5 = r0
            goto L_0x010a
        L_0x01d7:
            int r5 = r11.k
            goto L_0x010a
        L_0x01db:
            r1 = r2
            goto L_0x0114
        L_0x01de:
            int r3 = r11.l
            if (r3 != r5) goto L_0x0245
            r3 = r5
        L_0x01e3:
            int r4 = r11.k
            if (r4 != r5) goto L_0x025f
            r0 = r5
        L_0x01e8:
            android.widget.PopupWindow r4 = r11.b
            r4.setWindowLayoutMode(r3, r0)
            java.lang.reflect.Method r0 = a
            if (r0 == 0) goto L_0x0203
            java.lang.reflect.Method r0 = a     // Catch:{ Exception -> 0x0275 }
            android.widget.PopupWindow r3 = r11.b     // Catch:{ Exception -> 0x0275 }
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Exception -> 0x0275 }
            r6 = 0
            r7 = 1
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch:{ Exception -> 0x0275 }
            r4[r6] = r7     // Catch:{ Exception -> 0x0275 }
            r0.invoke(r3, r4)     // Catch:{ Exception -> 0x0275 }
        L_0x0203:
            android.widget.PopupWindow r0 = r11.b
            boolean r3 = r11.q
            if (r3 != 0) goto L_0x027e
            boolean r3 = r11.p
            if (r3 != 0) goto L_0x027e
        L_0x020d:
            r0.setOutsideTouchable(r1)
            android.widget.PopupWindow r0 = r11.b
            android.support.v7.widget.ListPopupWindow$f r1 = r11.w
            r0.setTouchInterceptor(r1)
            android.widget.PopupWindow r0 = r11.b
            android.view.View r1 = r11.g
            int r2 = r11.m
            int r3 = r11.n
            int r4 = r11.d
            defpackage.cq.a(r0, r1, r2, r3, r4)
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            r0.setSelection(r5)
            boolean r0 = r11.C
            if (r0 == 0) goto L_0x0235
            android.support.v7.widget.ListPopupWindow$a r0 = r11.c
            boolean r0 = r0.isInTouchMode()
            if (r0 == 0) goto L_0x0238
        L_0x0235:
            r11.e()
        L_0x0238:
            boolean r0 = r11.C
            if (r0 != 0) goto L_0x0122
            android.os.Handler r0 = r11.A
            android.support.v7.widget.ListPopupWindow$c r1 = r11.y
            r0.post(r1)
            goto L_0x0122
        L_0x0245:
            int r3 = r11.l
            if (r3 != r9) goto L_0x0256
            android.widget.PopupWindow r3 = r11.b
            android.view.View r4 = r11.g
            int r4 = r4.getWidth()
            r3.setWidth(r4)
            r3 = r2
            goto L_0x01e3
        L_0x0256:
            android.widget.PopupWindow r3 = r11.b
            int r4 = r11.l
            r3.setWidth(r4)
            r3 = r2
            goto L_0x01e3
        L_0x025f:
            int r4 = r11.k
            if (r4 != r9) goto L_0x026b
            android.widget.PopupWindow r4 = r11.b
            r4.setHeight(r0)
            r0 = r2
            goto L_0x01e8
        L_0x026b:
            android.widget.PopupWindow r0 = r11.b
            int r4 = r11.k
            r0.setHeight(r4)
            r0 = r2
            goto L_0x01e8
        L_0x0275:
            r0 = move-exception
            java.lang.String r0 = "ListPopupWindow"
            java.lang.String r3 = "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."
            android.util.Log.i(r0, r3)
            goto L_0x0203
        L_0x027e:
            r1 = r2
            goto L_0x020d
        L_0x0280:
            r0 = r2
            goto L_0x00ac
        L_0x0283:
            r3 = r0
            r0 = r2
            goto L_0x00a7
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ListPopupWindow.c():void");
    }

    public final void d() {
        this.C = true;
        this.b.setFocusable(true);
    }

    public final void e() {
        a aVar = this.c;
        if (aVar != null) {
            boolean unused = aVar.g = true;
            aVar.requestLayout();
        }
    }

    public final boolean f() {
        return this.b.getInputMethodMode() == 2;
    }
}
