package com.devsmart.android.ui;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;

public class HorizontalListView extends AdapterView<ListAdapter> {
    public boolean a = true;
    protected ListAdapter b;
    protected int c;
    protected int d;
    protected Scroller e;
    /* access modifiers changed from: private */
    public int f = -1;
    private int g = 0;
    private int h = Integer.MAX_VALUE;
    private int i = 0;
    private GestureDetector j;
    private Queue<View> k = new LinkedList();
    /* access modifiers changed from: private */
    public AdapterView.OnItemSelectedListener l;
    /* access modifiers changed from: private */
    public AdapterView.OnItemClickListener m;
    /* access modifiers changed from: private */
    public AdapterView.OnItemLongClickListener n;
    /* access modifiers changed from: private */
    public boolean o = false;
    private DataSetObserver p = new DataSetObserver() {
        public final void onChanged() {
            synchronized (HorizontalListView.this) {
                boolean unused = HorizontalListView.this.o = true;
            }
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }

        public final void onInvalidated() {
            HorizontalListView.this.c();
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }
    };
    private GestureDetector.OnGestureListener q = new GestureDetector.SimpleOnGestureListener() {
        private static boolean a(MotionEvent motionEvent, View view) {
            Rect rect = new Rect();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            rect.set(i, i2, view.getWidth() + i, view.getHeight() + i2);
            return rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        }

        public final boolean onDown(MotionEvent motionEvent) {
            return HorizontalListView.this.a();
        }

        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return HorizontalListView.this.a(f);
        }

        public final void onLongPress(MotionEvent motionEvent) {
            int childCount = HorizontalListView.this.getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = HorizontalListView.this.getChildAt(i);
                if (!a(motionEvent, childAt)) {
                    i++;
                } else if (HorizontalListView.this.n != null) {
                    HorizontalListView.this.n.onItemLongClick(HorizontalListView.this, childAt, HorizontalListView.this.f + 1 + i, HorizontalListView.this.b.getItemId(i + HorizontalListView.this.f + 1));
                    return;
                } else {
                    return;
                }
            }
        }

        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            synchronized (HorizontalListView.this) {
                HorizontalListView.this.d += (int) f;
            }
            HorizontalListView.this.requestLayout();
            return true;
        }

        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= HorizontalListView.this.getChildCount()) {
                    return true;
                }
                View childAt = HorizontalListView.this.getChildAt(i2);
                if (a(motionEvent, childAt)) {
                    if (HorizontalListView.this.m != null) {
                        HorizontalListView.this.m.onItemClick(HorizontalListView.this, childAt, HorizontalListView.this.f + 1 + i2, HorizontalListView.this.b.getItemId(HorizontalListView.this.f + 1 + i2));
                    }
                    if (HorizontalListView.this.l == null) {
                        return true;
                    }
                    HorizontalListView.this.l.onItemSelected(HorizontalListView.this, childAt, HorizontalListView.this.f + 1 + i2, HorizontalListView.this.b.getItemId(HorizontalListView.this.f + 1 + i2));
                    return true;
                }
                i = i2 + 1;
            }
        }
    };

    public HorizontalListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    private void a(View view, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        addViewInLayout(view, i2, layoutParams, true);
        view.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
    }

    private synchronized void b() {
        this.f = -1;
        this.g = 0;
        this.i = 0;
        this.c = 0;
        this.d = 0;
        this.h = Integer.MAX_VALUE;
        this.e = new Scroller(getContext());
        this.j = new GestureDetector(getContext(), this.q);
    }

    /* access modifiers changed from: private */
    public synchronized void c() {
        b();
        removeAllViewsInLayout();
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        this.e.forceFinished(true);
        return true;
    }

    /* access modifiers changed from: protected */
    public final boolean a(float f2) {
        synchronized (this) {
            this.e.fling(this.d, 0, (int) (-f2), 0, 0, this.h, 0, 0);
        }
        requestLayout();
        return true;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent) | this.j.onTouchEvent(motionEvent);
    }

    public ListAdapter getAdapter() {
        return this.b;
    }

    public View getSelectedView() {
        return null;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        r0 = getChildAt(getChildCount() - 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ad, code lost:
        if (r0 == null) goto L_0x0189;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00af, code lost:
        r0 = r0.getRight();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00b3, code lost:
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00ba, code lost:
        if ((r2 + r3) >= getWidth()) goto L_0x0104;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00c4, code lost:
        if (r7.g >= r7.b.getCount()) goto L_0x0104;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00c6, code lost:
        r0 = r7.b.getView(r7.g, r7.k.poll(), r7);
        a(r0, -1);
        r0 = r0.getMeasuredWidth() + r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00e9, code lost:
        if (r7.g != (r7.b.getCount() - 1)) goto L_0x00f5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00eb, code lost:
        r7.h = (r7.c + r0) - getWidth();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f7, code lost:
        if (r7.h >= 0) goto L_0x00fc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00f9, code lost:
        r7.h = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00fc, code lost:
        r7.g++;
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0104, code lost:
        r0 = getChildAt(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0109, code lost:
        if (r0 == null) goto L_0x0187;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x010b, code lost:
        r0 = r0.getLeft();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x010f, code lost:
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0112, code lost:
        if ((r2 + r3) <= 0) goto L_0x0143;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0116, code lost:
        if (r7.f < 0) goto L_0x0143;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0118, code lost:
        r4 = r7.b.getView(r7.f, r7.k.poll(), r7);
        a(r4, 0);
        r0 = r2 - r4.getMeasuredWidth();
        r7.f--;
        r7.i -= r4.getMeasuredWidth();
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0147, code lost:
        if (getChildCount() <= 0) goto L_0x0171;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0149, code lost:
        r7.i += r3;
        r0 = r7.i;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0154, code lost:
        if (r1 >= getChildCount()) goto L_0x0171;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0156, code lost:
        r2 = getChildAt(r1);
        r3 = r2.getMeasuredWidth();
        r2.layout(r0, 0, r0 + r3, r2.getMeasuredHeight());
        r0 = r0 + (r2.getPaddingRight() + r3);
        r1 = r1 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0171, code lost:
        r7.c = r7.d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x017b, code lost:
        if (r7.e.isFinished() != false) goto L_0x0009;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x017d, code lost:
        post(new com.devsmart.android.ui.HorizontalListView.AnonymousClass2(r7));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0187, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0189, code lost:
        r0 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            r7 = this;
            r1 = 0
            monitor-enter(r7)
            super.onLayout(r8, r9, r10, r11, r12)     // Catch:{ all -> 0x00a0 }
            android.widget.ListAdapter r0 = r7.b     // Catch:{ all -> 0x00a0 }
            if (r0 != 0) goto L_0x000b
        L_0x0009:
            monitor-exit(r7)
            return
        L_0x000b:
            boolean r0 = r7.o     // Catch:{ all -> 0x00a0 }
            if (r0 == 0) goto L_0x001c
            int r0 = r7.c     // Catch:{ all -> 0x00a0 }
            r7.b()     // Catch:{ all -> 0x00a0 }
            r7.removeAllViewsInLayout()     // Catch:{ all -> 0x00a0 }
            r7.d = r0     // Catch:{ all -> 0x00a0 }
            r0 = 0
            r7.o = r0     // Catch:{ all -> 0x00a0 }
        L_0x001c:
            android.widget.Scroller r0 = r7.e     // Catch:{ all -> 0x00a0 }
            boolean r0 = r0.computeScrollOffset()     // Catch:{ all -> 0x00a0 }
            if (r0 == 0) goto L_0x002c
            android.widget.Scroller r0 = r7.e     // Catch:{ all -> 0x00a0 }
            int r0 = r0.getCurrX()     // Catch:{ all -> 0x00a0 }
            r7.d = r0     // Catch:{ all -> 0x00a0 }
        L_0x002c:
            int r0 = r7.d     // Catch:{ all -> 0x00a0 }
            if (r0 > 0) goto L_0x0039
            r0 = 0
            r7.d = r0     // Catch:{ all -> 0x00a0 }
            android.widget.Scroller r0 = r7.e     // Catch:{ all -> 0x00a0 }
            r2 = 1
            r0.forceFinished(r2)     // Catch:{ all -> 0x00a0 }
        L_0x0039:
            int r0 = r7.d     // Catch:{ all -> 0x00a0 }
            int r2 = r7.h     // Catch:{ all -> 0x00a0 }
            if (r0 < r2) goto L_0x0049
            int r0 = r7.h     // Catch:{ all -> 0x00a0 }
            r7.d = r0     // Catch:{ all -> 0x00a0 }
            android.widget.Scroller r0 = r7.e     // Catch:{ all -> 0x00a0 }
            r2 = 1
            r0.forceFinished(r2)     // Catch:{ all -> 0x00a0 }
        L_0x0049:
            int r0 = r7.c     // Catch:{ all -> 0x00a0 }
            int r2 = r7.d     // Catch:{ all -> 0x00a0 }
            int r3 = r0 - r2
            r0 = 0
            android.view.View r0 = r7.getChildAt(r0)     // Catch:{ all -> 0x00a0 }
        L_0x0054:
            if (r0 == 0) goto L_0x007a
            int r2 = r0.getRight()     // Catch:{ all -> 0x00a0 }
            int r2 = r2 + r3
            if (r2 > 0) goto L_0x007a
            int r2 = r7.i     // Catch:{ all -> 0x00a0 }
            int r4 = r0.getMeasuredWidth()     // Catch:{ all -> 0x00a0 }
            int r2 = r2 + r4
            r7.i = r2     // Catch:{ all -> 0x00a0 }
            java.util.Queue<android.view.View> r2 = r7.k     // Catch:{ all -> 0x00a0 }
            r2.offer(r0)     // Catch:{ all -> 0x00a0 }
            r7.removeViewInLayout(r0)     // Catch:{ all -> 0x00a0 }
            int r0 = r7.f     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + 1
            r7.f = r0     // Catch:{ all -> 0x00a0 }
            r0 = 0
            android.view.View r0 = r7.getChildAt(r0)     // Catch:{ all -> 0x00a0 }
            goto L_0x0054
        L_0x007a:
            int r0 = r7.getChildCount()     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + -1
            android.view.View r0 = r7.getChildAt(r0)     // Catch:{ all -> 0x00a0 }
            if (r0 == 0) goto L_0x00a3
            int r2 = r0.getLeft()     // Catch:{ all -> 0x00a0 }
            int r2 = r2 + r3
            int r4 = r7.getWidth()     // Catch:{ all -> 0x00a0 }
            if (r2 < r4) goto L_0x00a3
            java.util.Queue<android.view.View> r2 = r7.k     // Catch:{ all -> 0x00a0 }
            r2.offer(r0)     // Catch:{ all -> 0x00a0 }
            r7.removeViewInLayout(r0)     // Catch:{ all -> 0x00a0 }
            int r0 = r7.g     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + -1
            r7.g = r0     // Catch:{ all -> 0x00a0 }
            goto L_0x007a
        L_0x00a0:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        L_0x00a3:
            int r0 = r7.getChildCount()     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + -1
            android.view.View r0 = r7.getChildAt(r0)     // Catch:{ all -> 0x00a0 }
            if (r0 == 0) goto L_0x0189
            int r0 = r0.getRight()     // Catch:{ all -> 0x00a0 }
        L_0x00b3:
            r2 = r0
        L_0x00b4:
            int r0 = r2 + r3
            int r4 = r7.getWidth()     // Catch:{ all -> 0x00a0 }
            if (r0 >= r4) goto L_0x0104
            int r0 = r7.g     // Catch:{ all -> 0x00a0 }
            android.widget.ListAdapter r4 = r7.b     // Catch:{ all -> 0x00a0 }
            int r4 = r4.getCount()     // Catch:{ all -> 0x00a0 }
            if (r0 >= r4) goto L_0x0104
            android.widget.ListAdapter r4 = r7.b     // Catch:{ all -> 0x00a0 }
            int r5 = r7.g     // Catch:{ all -> 0x00a0 }
            java.util.Queue<android.view.View> r0 = r7.k     // Catch:{ all -> 0x00a0 }
            java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x00a0 }
            android.view.View r0 = (android.view.View) r0     // Catch:{ all -> 0x00a0 }
            android.view.View r0 = r4.getView(r5, r0, r7)     // Catch:{ all -> 0x00a0 }
            r4 = -1
            r7.a(r0, r4)     // Catch:{ all -> 0x00a0 }
            int r0 = r0.getMeasuredWidth()     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + r2
            int r2 = r7.g     // Catch:{ all -> 0x00a0 }
            android.widget.ListAdapter r4 = r7.b     // Catch:{ all -> 0x00a0 }
            int r4 = r4.getCount()     // Catch:{ all -> 0x00a0 }
            int r4 = r4 + -1
            if (r2 != r4) goto L_0x00f5
            int r2 = r7.c     // Catch:{ all -> 0x00a0 }
            int r2 = r2 + r0
            int r4 = r7.getWidth()     // Catch:{ all -> 0x00a0 }
            int r2 = r2 - r4
            r7.h = r2     // Catch:{ all -> 0x00a0 }
        L_0x00f5:
            int r2 = r7.h     // Catch:{ all -> 0x00a0 }
            if (r2 >= 0) goto L_0x00fc
            r2 = 0
            r7.h = r2     // Catch:{ all -> 0x00a0 }
        L_0x00fc:
            int r2 = r7.g     // Catch:{ all -> 0x00a0 }
            int r2 = r2 + 1
            r7.g = r2     // Catch:{ all -> 0x00a0 }
            r2 = r0
            goto L_0x00b4
        L_0x0104:
            r0 = 0
            android.view.View r0 = r7.getChildAt(r0)     // Catch:{ all -> 0x00a0 }
            if (r0 == 0) goto L_0x0187
            int r0 = r0.getLeft()     // Catch:{ all -> 0x00a0 }
        L_0x010f:
            r2 = r0
        L_0x0110:
            int r0 = r2 + r3
            if (r0 <= 0) goto L_0x0143
            int r0 = r7.f     // Catch:{ all -> 0x00a0 }
            if (r0 < 0) goto L_0x0143
            android.widget.ListAdapter r4 = r7.b     // Catch:{ all -> 0x00a0 }
            int r5 = r7.f     // Catch:{ all -> 0x00a0 }
            java.util.Queue<android.view.View> r0 = r7.k     // Catch:{ all -> 0x00a0 }
            java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x00a0 }
            android.view.View r0 = (android.view.View) r0     // Catch:{ all -> 0x00a0 }
            android.view.View r4 = r4.getView(r5, r0, r7)     // Catch:{ all -> 0x00a0 }
            r0 = 0
            r7.a(r4, r0)     // Catch:{ all -> 0x00a0 }
            int r0 = r4.getMeasuredWidth()     // Catch:{ all -> 0x00a0 }
            int r0 = r2 - r0
            int r2 = r7.f     // Catch:{ all -> 0x00a0 }
            int r2 = r2 + -1
            r7.f = r2     // Catch:{ all -> 0x00a0 }
            int r2 = r7.i     // Catch:{ all -> 0x00a0 }
            int r4 = r4.getMeasuredWidth()     // Catch:{ all -> 0x00a0 }
            int r2 = r2 - r4
            r7.i = r2     // Catch:{ all -> 0x00a0 }
            r2 = r0
            goto L_0x0110
        L_0x0143:
            int r0 = r7.getChildCount()     // Catch:{ all -> 0x00a0 }
            if (r0 <= 0) goto L_0x0171
            int r0 = r7.i     // Catch:{ all -> 0x00a0 }
            int r0 = r0 + r3
            r7.i = r0     // Catch:{ all -> 0x00a0 }
            int r0 = r7.i     // Catch:{ all -> 0x00a0 }
        L_0x0150:
            int r2 = r7.getChildCount()     // Catch:{ all -> 0x00a0 }
            if (r1 >= r2) goto L_0x0171
            android.view.View r2 = r7.getChildAt(r1)     // Catch:{ all -> 0x00a0 }
            int r3 = r2.getMeasuredWidth()     // Catch:{ all -> 0x00a0 }
            r4 = 0
            int r5 = r0 + r3
            int r6 = r2.getMeasuredHeight()     // Catch:{ all -> 0x00a0 }
            r2.layout(r0, r4, r5, r6)     // Catch:{ all -> 0x00a0 }
            int r2 = r2.getPaddingRight()     // Catch:{ all -> 0x00a0 }
            int r2 = r2 + r3
            int r0 = r0 + r2
            int r1 = r1 + 1
            goto L_0x0150
        L_0x0171:
            int r0 = r7.d     // Catch:{ all -> 0x00a0 }
            r7.c = r0     // Catch:{ all -> 0x00a0 }
            android.widget.Scroller r0 = r7.e     // Catch:{ all -> 0x00a0 }
            boolean r0 = r0.isFinished()     // Catch:{ all -> 0x00a0 }
            if (r0 != 0) goto L_0x0009
            com.devsmart.android.ui.HorizontalListView$2 r0 = new com.devsmart.android.ui.HorizontalListView$2     // Catch:{ all -> 0x00a0 }
            r0.<init>()     // Catch:{ all -> 0x00a0 }
            r7.post(r0)     // Catch:{ all -> 0x00a0 }
            goto L_0x0009
        L_0x0187:
            r0 = r1
            goto L_0x010f
        L_0x0189:
            r0 = r1
            goto L_0x00b3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.devsmart.android.ui.HorizontalListView.onLayout(boolean, int, int, int, int):void");
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (this.b != null) {
            this.b.unregisterDataSetObserver(this.p);
        }
        this.b = listAdapter;
        this.b.registerDataSetObserver(this.p);
        c();
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.m = onItemClickListener;
    }

    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.n = onItemLongClickListener;
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.l = onItemSelectedListener;
    }

    public void setSelection(int i2) {
    }
}
