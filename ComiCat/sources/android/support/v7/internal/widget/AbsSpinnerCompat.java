package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.internal.widget.AdapterViewCompat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;

public abstract class AbsSpinnerCompat extends AdapterViewCompat<SpinnerAdapter> {
    private DataSetObserver F;
    public SpinnerAdapter a;
    int b;
    int c;
    int d = 0;
    int e = 0;
    int f = 0;
    int g = 0;
    final Rect h = new Rect();
    final a i = new a();

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        long a;
        int b;

        SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readLong();
            this.b = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.a + " position=" + this.b + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.a);
            parcel.writeInt(this.b);
        }
    }

    class a {
        private final SparseArray<View> b = new SparseArray<>();

        a() {
        }

        /* access modifiers changed from: package-private */
        public final View a(int i) {
            View view = this.b.get(i);
            if (view != null) {
                this.b.delete(i);
            }
            return view;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            SparseArray<View> sparseArray = this.b;
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                View valueAt = sparseArray.valueAt(i);
                if (valueAt != null) {
                    AbsSpinnerCompat.this.removeDetachedView(valueAt, true);
                }
            }
            sparseArray.clear();
        }

        public final void a(int i, View view) {
            this.b.put(i, view);
        }
    }

    AbsSpinnerCompat(Context context, int i2) {
        super(context, i2);
        setFocusable(true);
        setWillNotDraw(false);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.v = false;
        this.o = false;
        removeAllViewsInLayout();
        this.C = -1;
        this.D = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        invalidate();
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    public final SpinnerAdapter getAdapter() {
        return this.a;
    }

    public int getCount() {
        return this.A;
    }

    public View getSelectedView() {
        if (this.A <= 0 || this.y < 0) {
            return null;
        }
        return getChildAt(this.y - this.j);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r10, int r11) {
        /*
            r9 = this;
            r6 = 1
            r5 = 0
            int r7 = android.view.View.MeasureSpec.getMode(r10)
            int r1 = r9.getPaddingLeft()
            int r2 = r9.getPaddingTop()
            int r3 = r9.getPaddingRight()
            int r4 = r9.getPaddingBottom()
            android.graphics.Rect r8 = r9.h
            int r0 = r9.d
            if (r1 <= r0) goto L_0x00d0
            r0 = r1
        L_0x001d:
            r8.left = r0
            android.graphics.Rect r8 = r9.h
            int r0 = r9.e
            if (r2 <= r0) goto L_0x00d4
            r0 = r2
        L_0x0026:
            r8.top = r0
            android.graphics.Rect r2 = r9.h
            int r0 = r9.f
            if (r3 <= r0) goto L_0x00d8
            r0 = r3
        L_0x002f:
            r2.right = r0
            android.graphics.Rect r2 = r9.h
            int r0 = r9.g
            if (r4 <= r0) goto L_0x00dc
            r0 = r4
        L_0x0038:
            r2.bottom = r0
            boolean r0 = r9.v
            if (r0 == 0) goto L_0x0041
            r9.c()
        L_0x0041:
            int r2 = r9.getSelectedItemPosition()
            if (r2 < 0) goto L_0x00e0
            android.widget.SpinnerAdapter r0 = r9.a
            if (r0 == 0) goto L_0x00e0
            android.widget.SpinnerAdapter r0 = r9.a
            int r0 = r0.getCount()
            if (r2 >= r0) goto L_0x00e0
            android.support.v7.internal.widget.AbsSpinnerCompat$a r0 = r9.i
            android.view.View r0 = r0.a(r2)
            if (r0 != 0) goto L_0x0062
            android.widget.SpinnerAdapter r0 = r9.a
            r3 = 0
            android.view.View r0 = r0.getView(r2, r3, r9)
        L_0x0062:
            if (r0 == 0) goto L_0x00e0
            android.support.v7.internal.widget.AbsSpinnerCompat$a r1 = r9.i
            r1.a(r2, r0)
            android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
            if (r1 != 0) goto L_0x007a
            r9.E = r6
            android.view.ViewGroup$LayoutParams r1 = r9.generateDefaultLayoutParams()
            r0.setLayoutParams(r1)
            r9.E = r5
        L_0x007a:
            r9.measureChild(r0, r10, r11)
            int r1 = r0.getMeasuredHeight()
            android.graphics.Rect r2 = r9.h
            int r2 = r2.top
            int r1 = r1 + r2
            android.graphics.Rect r2 = r9.h
            int r2 = r2.bottom
            int r1 = r1 + r2
            int r0 = r0.getMeasuredWidth()
            android.graphics.Rect r2 = r9.h
            int r2 = r2.left
            int r0 = r0 + r2
            android.graphics.Rect r2 = r9.h
            int r2 = r2.right
            int r0 = r0 + r2
            r2 = r5
        L_0x009a:
            if (r2 == 0) goto L_0x00b0
            android.graphics.Rect r1 = r9.h
            int r1 = r1.top
            android.graphics.Rect r2 = r9.h
            int r2 = r2.bottom
            int r1 = r1 + r2
            if (r7 != 0) goto L_0x00b0
            android.graphics.Rect r0 = r9.h
            int r0 = r0.left
            android.graphics.Rect r2 = r9.h
            int r2 = r2.right
            int r0 = r0 + r2
        L_0x00b0:
            int r2 = r9.getSuggestedMinimumHeight()
            int r1 = java.lang.Math.max(r1, r2)
            int r2 = r9.getSuggestedMinimumWidth()
            int r0 = java.lang.Math.max(r0, r2)
            int r1 = defpackage.bh.a((int) r1, (int) r11, (int) r5)
            int r0 = defpackage.bh.a((int) r0, (int) r10, (int) r5)
            r9.setMeasuredDimension(r0, r1)
            r9.b = r11
            r9.c = r10
            return
        L_0x00d0:
            int r0 = r9.d
            goto L_0x001d
        L_0x00d4:
            int r0 = r9.e
            goto L_0x0026
        L_0x00d8:
            int r0 = r9.f
            goto L_0x002f
        L_0x00dc:
            int r0 = r9.g
            goto L_0x0038
        L_0x00e0:
            r2 = r6
            r0 = r5
            goto L_0x009a
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.internal.widget.AbsSpinnerCompat.onMeasure(int, int):void");
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.a >= 0) {
            this.v = true;
            this.o = true;
            this.m = savedState.a;
            this.l = savedState.b;
            this.p = 0;
            requestLayout();
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = getSelectedItemId();
        if (savedState.a >= 0) {
            savedState.b = getSelectedItemPosition();
        } else {
            savedState.b = -1;
        }
        return savedState;
    }

    public void requestLayout() {
        if (!this.E) {
            super.requestLayout();
        }
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        int i2 = -1;
        if (this.a != null) {
            this.a.unregisterDataSetObserver(this.F);
            a();
        }
        this.a = spinnerAdapter;
        this.C = -1;
        this.D = Long.MIN_VALUE;
        if (this.a != null) {
            this.B = this.A;
            this.A = this.a.getCount();
            b();
            this.F = new AdapterViewCompat.a();
            this.a.registerDataSetObserver(this.F);
            if (this.A > 0) {
                i2 = 0;
            }
            setSelectedPositionInt(i2);
            setNextSelectedPositionInt(i2);
            if (this.A == 0) {
                d();
            }
        } else {
            b();
            a();
            d();
        }
        requestLayout();
    }

    public void setSelection(int i2) {
        setNextSelectedPositionInt(i2);
        requestLayout();
        invalidate();
    }
}
