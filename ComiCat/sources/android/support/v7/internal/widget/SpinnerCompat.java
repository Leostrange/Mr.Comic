package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.internal.widget.AbsSpinnerCompat;
import android.support.v7.internal.widget.AdapterViewCompat;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import defpackage.cv;

public final class SpinnerCompat extends AbsSpinnerCompat implements DialogInterface.OnClickListener {
    int F;
    private ListPopupWindow.b G;
    /* access modifiers changed from: private */
    public d H;
    private b I;
    private int J;
    private boolean K;
    private Rect L;
    private final er M;

    static class SavedState extends AbsSpinnerCompat.SavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean c;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.c = parcel.readByte() != 0;
        }

        /* synthetic */ SavedState(Parcel parcel, byte b) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte((byte) (this.c ? 1 : 0));
        }
    }

    class a implements DialogInterface.OnClickListener, d {
        private AlertDialog b;
        private ListAdapter c;
        private CharSequence d;

        private a() {
        }

        /* synthetic */ a(SpinnerCompat spinnerCompat, byte b2) {
            this();
        }

        public final void a() {
            if (this.b != null) {
                this.b.dismiss();
                this.b = null;
            }
        }

        public final void a(ListAdapter listAdapter) {
            this.c = listAdapter;
        }

        public final void a(CharSequence charSequence) {
            this.d = charSequence;
        }

        public final boolean b() {
            if (this.b != null) {
                return this.b.isShowing();
            }
            return false;
        }

        public final void c() {
            if (this.c != null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(SpinnerCompat.this.getContext());
                if (this.d != null) {
                    builder.setTitle(this.d);
                }
                this.b = builder.setSingleChoiceItems(this.c, SpinnerCompat.this.getSelectedItemPosition(), this).create();
                this.b.show();
            }
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            SpinnerCompat.this.setSelection(i);
            if (SpinnerCompat.this.t != null) {
                SpinnerCompat spinnerCompat = SpinnerCompat.this;
                this.c.getItemId(i);
                spinnerCompat.a((View) null);
            }
            a();
        }
    }

    static class b implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter a;
        private ListAdapter b;

        public b(SpinnerAdapter spinnerAdapter) {
            this.a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.b = (ListAdapter) spinnerAdapter;
            }
        }

        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        public final int getCount() {
            if (this.a == null) {
                return 0;
            }
            return this.a.getCount();
        }

        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.a == null) {
                return null;
            }
            return this.a.getDropDownView(i, view, viewGroup);
        }

        public final Object getItem(int i) {
            if (this.a == null) {
                return null;
            }
            return this.a.getItem(i);
        }

        public final long getItemId(int i) {
            if (this.a == null) {
                return -1;
            }
            return this.a.getItemId(i);
        }

        public final int getItemViewType(int i) {
            return 0;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        public final int getViewTypeCount() {
            return 1;
        }

        public final boolean hasStableIds() {
            return this.a != null && this.a.hasStableIds();
        }

        public final boolean isEmpty() {
            return getCount() == 0;
        }

        public final boolean isEnabled(int i) {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.a != null) {
                this.a.registerDataSetObserver(dataSetObserver);
            }
        }

        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.a != null) {
                this.a.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class c extends ListPopupWindow implements d {
        private CharSequence i;
        /* access modifiers changed from: private */
        public ListAdapter j;

        public c(Context context, int i2) {
            super(context, (AttributeSet) null, i2);
            this.g = SpinnerCompat.this;
            d();
            this.f = 0;
            this.h = new AdapterView.OnItemClickListener(SpinnerCompat.this) {
                public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    SpinnerCompat.this.setSelection(i);
                    if (SpinnerCompat.this.t != null) {
                        SpinnerCompat spinnerCompat = SpinnerCompat.this;
                        c.this.j.getItemId(i);
                        spinnerCompat.a(view);
                    }
                    c.this.a();
                }
            };
        }

        public final void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.j = listAdapter;
        }

        public final void a(CharSequence charSequence) {
            this.i = charSequence;
        }
    }

    interface d {
        void a();

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        boolean b();

        void c();
    }

    public SpinnerCompat(Context context, int i) {
        this(context, i, (byte) 0);
    }

    private SpinnerCompat(Context context, int i, byte b2) {
        super(context, i);
        this.L = new Rect();
        es a2 = es.a(context, (AttributeSet) null, cv.k.Spinner, i);
        if (a2.d(cv.k.Spinner_android_background)) {
            setBackgroundDrawable(a2.a(cv.k.Spinner_android_background));
        }
        switch (a2.a(cv.k.Spinner_spinnerMode, 0)) {
            case 0:
                this.H = new a(this, (byte) 0);
                break;
            case 1:
                final c cVar = new c(context, i);
                this.F = a2.d(cv.k.Spinner_android_dropDownWidth, -2);
                cVar.b.setBackgroundDrawable(a2.a(cv.k.Spinner_android_popupBackground));
                this.H = cVar;
                this.G = new ListPopupWindow.b(this) {
                    public final ListPopupWindow a() {
                        return cVar;
                    }

                    public final boolean b() {
                        if (SpinnerCompat.this.H.b()) {
                            return true;
                        }
                        SpinnerCompat.this.H.c();
                        return true;
                    }
                };
                break;
        }
        this.J = a2.a(cv.k.Spinner_android_gravity, 17);
        this.H.a((CharSequence) a2.a.getString(cv.k.Spinner_prompt));
        this.K = a2.a(cv.k.Spinner_disableChildrenWhenDisabled, false);
        a2.a.recycle();
        if (this.I != null) {
            this.H.a((ListAdapter) this.I);
            this.I = null;
        }
        this.M = a2.a();
    }

    private View a(int i, boolean z) {
        View a2;
        if (this.v || (a2 = this.i.a(i)) == null) {
            View view = this.a.getView(i, (View) null, this);
            a(view, z);
            return view;
        }
        a(a2, z);
        return a2;
    }

    private void a(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        if (z) {
            addViewInLayout(view, 0, layoutParams);
        }
        view.setSelected(hasFocus());
        if (this.K) {
            view.setEnabled(isEnabled());
        }
        view.measure(ViewGroup.getChildMeasureSpec(this.c, this.h.left + this.h.right, layoutParams.width), ViewGroup.getChildMeasureSpec(this.b, this.h.top + this.h.bottom, layoutParams.height));
        int measuredHeight = this.h.top + ((((getMeasuredHeight() - this.h.bottom) - this.h.top) - view.getMeasuredHeight()) / 2);
        view.layout(0, measuredHeight, view.getMeasuredWidth() + 0, view.getMeasuredHeight() + measuredHeight);
    }

    public final int getBaseline() {
        int baseline;
        View view = null;
        if (getChildCount() > 0) {
            view = getChildAt(0);
        } else if (this.a != null && this.a.getCount() > 0) {
            view = a(0, false);
            this.i.a(0, view);
        }
        if (view == null || (baseline = view.getBaseline()) < 0) {
            return -1;
        }
        return view.getTop() + baseline;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        setSelection(i);
        dialogInterface.dismiss();
    }

    /* access modifiers changed from: protected */
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.H != null && this.H.b()) {
            this.H.a();
        }
    }

    /* access modifiers changed from: protected */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.r = true;
        int i5 = this.h.left;
        int right = ((getRight() - getLeft()) - this.h.left) - this.h.right;
        if (this.v) {
            c();
        }
        if (this.A == 0) {
            a();
        } else {
            if (this.w >= 0) {
                setSelectedPositionInt(this.w);
            }
            int childCount = getChildCount();
            AbsSpinnerCompat.a aVar = this.i;
            int i6 = this.j;
            for (int i7 = 0; i7 < childCount; i7++) {
                aVar.a(i6 + i7, getChildAt(i7));
            }
            removeAllViewsInLayout();
            this.j = this.y;
            if (this.a != null) {
                View a2 = a(this.y, true);
                int measuredWidth = a2.getMeasuredWidth();
                switch (ap.a(this.J, bh.h(this)) & 7) {
                    case 1:
                        i5 = (i5 + (right / 2)) - (measuredWidth / 2);
                        break;
                    case 5:
                        i5 = (i5 + right) - measuredWidth;
                        break;
                }
                a2.offsetLeftAndRight(i5);
            }
            this.i.a();
            invalidate();
            d();
            this.v = false;
            this.o = false;
            setNextSelectedPositionInt(this.y);
        }
        this.r = false;
    }

    /* access modifiers changed from: protected */
    public final void onMeasure(int i, int i2) {
        View view;
        int i3 = 0;
        super.onMeasure(i, i2);
        if (this.H != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            SpinnerAdapter spinnerAdapter = this.a;
            Drawable background = getBackground();
            if (spinnerAdapter != null) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                int max = Math.max(0, getSelectedItemPosition());
                int min = Math.min(spinnerAdapter.getCount(), max + 15);
                int max2 = Math.max(0, max - (15 - (min - max)));
                View view2 = null;
                int i4 = 0;
                int i5 = 0;
                while (max2 < min) {
                    int itemViewType = spinnerAdapter.getItemViewType(max2);
                    if (itemViewType != i5) {
                        view = null;
                    } else {
                        itemViewType = i5;
                        view = view2;
                    }
                    view2 = spinnerAdapter.getView(max2, view, this);
                    if (view2.getLayoutParams() == null) {
                        view2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view2.measure(makeMeasureSpec, makeMeasureSpec2);
                    i4 = Math.max(i4, view2.getMeasuredWidth());
                    max2++;
                    i5 = itemViewType;
                }
                if (background != null) {
                    background.getPadding(this.L);
                    i3 = this.L.left + this.L.right + i4;
                } else {
                    i3 = i4;
                }
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i3), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.c && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                public final void onGlobalLayout() {
                    if (!SpinnerCompat.this.H.b()) {
                        SpinnerCompat.this.H.c();
                    }
                    ViewTreeObserver viewTreeObserver = SpinnerCompat.this.getViewTreeObserver();
                    if (viewTreeObserver != null) {
                        viewTreeObserver.removeGlobalOnLayoutListener(this);
                    }
                }
            });
        }
    }

    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.c = this.H != null && this.H.b();
        return savedState;
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.G == null || !this.G.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public final boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            performClick = true;
            if (!this.H.b()) {
                this.H.c();
            }
        }
        return performClick;
    }

    public final void setAdapter(SpinnerAdapter spinnerAdapter) {
        super.setAdapter(spinnerAdapter);
        this.i.a();
        if (getContext().getApplicationInfo().targetSdkVersion >= 21 && spinnerAdapter != null && spinnerAdapter.getViewTypeCount() != 1) {
            throw new IllegalArgumentException("Spinner adapter view type count must be 1");
        } else if (this.H != null) {
            this.H.a((ListAdapter) new b(spinnerAdapter));
        } else {
            this.I = new b(spinnerAdapter);
        }
    }

    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.K) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).setEnabled(z);
            }
        }
    }

    public final void setOnItemClickListener(AdapterViewCompat.b bVar) {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }

    /* access modifiers changed from: package-private */
    public final void setOnItemClickListenerInt(AdapterViewCompat.b bVar) {
        super.setOnItemClickListener(bVar);
    }
}
