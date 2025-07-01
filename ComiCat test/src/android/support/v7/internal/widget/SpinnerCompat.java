// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.ListPopupWindow;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.SpinnerAdapter;
import ap;
import bh;
import er;
import es;

// Referenced classes of package android.support.v7.internal.widget:
//            AbsSpinnerCompat

public final class SpinnerCompat extends AbsSpinnerCompat
    implements android.content.DialogInterface.OnClickListener
{
    static class SavedState extends AbsSpinnerCompat.SavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public final Object createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel, (byte)0);
            }

            public final volatile Object[] newArray(int i)
            {
                return new SavedState[i];
            }

        };
        boolean c;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            if (c)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeByte((byte)i);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            boolean flag;
            if (parcel.readByte() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            c = flag;
        }

        SavedState(Parcel parcel, byte byte0)
        {
            this(parcel);
        }

        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    final class a
        implements android.content.DialogInterface.OnClickListener, d
    {

        final SpinnerCompat a;
        private AlertDialog b;
        private ListAdapter c;
        private CharSequence d;

        public final void a()
        {
            if (b != null)
            {
                b.dismiss();
                b = null;
            }
        }

        public final void a(ListAdapter listadapter)
        {
            c = listadapter;
        }

        public final void a(CharSequence charsequence)
        {
            d = charsequence;
        }

        public final boolean b()
        {
            if (b != null)
            {
                return b.isShowing();
            } else
            {
                return false;
            }
        }

        public final void c()
        {
            if (c == null)
            {
                return;
            }
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getContext());
            if (d != null)
            {
                builder.setTitle(d);
            }
            b = builder.setSingleChoiceItems(c, a.getSelectedItemPosition(), this).create();
            b.show();
        }

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            a.setSelection(i);
            if (a.t != null)
            {
                dialoginterface = a;
                c.getItemId(i);
                dialoginterface.a(null);
            }
            a();
        }

        private a()
        {
            a = SpinnerCompat.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }

    static final class b
        implements ListAdapter, SpinnerAdapter
    {

        private SpinnerAdapter a;
        private ListAdapter b;

        public final boolean areAllItemsEnabled()
        {
            ListAdapter listadapter = b;
            if (listadapter != null)
            {
                return listadapter.areAllItemsEnabled();
            } else
            {
                return true;
            }
        }

        public final int getCount()
        {
            if (a == null)
            {
                return 0;
            } else
            {
                return a.getCount();
            }
        }

        public final View getDropDownView(int i, View view, ViewGroup viewgroup)
        {
            if (a == null)
            {
                return null;
            } else
            {
                return a.getDropDownView(i, view, viewgroup);
            }
        }

        public final Object getItem(int i)
        {
            if (a == null)
            {
                return null;
            } else
            {
                return a.getItem(i);
            }
        }

        public final long getItemId(int i)
        {
            if (a == null)
            {
                return -1L;
            } else
            {
                return a.getItemId(i);
            }
        }

        public final int getItemViewType(int i)
        {
            return 0;
        }

        public final View getView(int i, View view, ViewGroup viewgroup)
        {
            return getDropDownView(i, view, viewgroup);
        }

        public final int getViewTypeCount()
        {
            return 1;
        }

        public final boolean hasStableIds()
        {
            return a != null && a.hasStableIds();
        }

        public final boolean isEmpty()
        {
            return getCount() == 0;
        }

        public final boolean isEnabled(int i)
        {
            ListAdapter listadapter = b;
            if (listadapter != null)
            {
                return listadapter.isEnabled(i);
            } else
            {
                return true;
            }
        }

        public final void registerDataSetObserver(DataSetObserver datasetobserver)
        {
            if (a != null)
            {
                a.registerDataSetObserver(datasetobserver);
            }
        }

        public final void unregisterDataSetObserver(DataSetObserver datasetobserver)
        {
            if (a != null)
            {
                a.unregisterDataSetObserver(datasetobserver);
            }
        }

        public b(SpinnerAdapter spinneradapter)
        {
            a = spinneradapter;
            if (spinneradapter instanceof ListAdapter)
            {
                b = (ListAdapter)spinneradapter;
            }
        }
    }

    final class c extends ListPopupWindow
        implements d
    {

        final SpinnerCompat a;
        private CharSequence i;
        private ListAdapter j;

        static ListAdapter a(c c1)
        {
            return c1.j;
        }

        public final void a(ListAdapter listadapter)
        {
            super.a(listadapter);
            j = listadapter;
        }

        public final void a(CharSequence charsequence)
        {
            i = charsequence;
        }

        public c(Context context, int k)
        {
            a = SpinnerCompat.this;
            super(context, null, k);
            super.g = SpinnerCompat.this;
            d();
            super.f = 0;
            super.h = new _cls1(this, SpinnerCompat.this);
        }
    }

    static interface d
    {

        public abstract void a();

        public abstract void a(ListAdapter listadapter);

        public abstract void a(CharSequence charsequence);

        public abstract boolean b();

        public abstract void c();
    }


    int F;
    private android.support.v7.widget.ListPopupWindow.b G;
    private d H;
    private b I;
    private int J;
    private boolean K;
    private Rect L;
    private final er M;

    public SpinnerCompat(Context context, int i)
    {
        this(context, i, (byte)0);
    }

    private SpinnerCompat(Context context, int i, byte byte0)
    {
        es es1;
        super(context, i);
        L = new Rect();
        es1 = es.a(context, null, cv.k.Spinner, i);
        if (es1.d(cv.k.Spinner_android_background))
        {
            setBackgroundDrawable(es1.a(cv.k.Spinner_android_background));
        }
        es1.a(cv.k.Spinner_spinnerMode, 0);
        JVM INSTR tableswitch 0 1: default 84
    //                   0 178
    //                   1 194;
           goto _L1 _L2 _L3
_L1:
        J = es1.a(cv.k.Spinner_android_gravity, 17);
        context = H;
        i = cv.k.Spinner_prompt;
        context.a(es1.a.getString(i));
        K = es1.a(cv.k.Spinner_disableChildrenWhenDisabled, false);
        es1.a.recycle();
        if (I != null)
        {
            H.a(I);
            I = null;
        }
        M = es1.a();
        return;
_L2:
        H = new a((byte)0);
        continue; /* Loop/switch isn't completed */
_L3:
        context = new c(context, i);
        F = es1.d(cv.k.Spinner_android_dropDownWidth, -2);
        Drawable drawable = es1.a(cv.k.Spinner_android_popupBackground);
        ((ListPopupWindow) (context)).b.setBackgroundDrawable(drawable);
        H = context;
        G = new android.support.v7.widget.ListPopupWindow.b(this, context) {

            final c a;
            final SpinnerCompat b;

            public final ListPopupWindow a()
            {
                return a;
            }

            public final boolean b()
            {
                if (!SpinnerCompat.a(b).b())
                {
                    SpinnerCompat.a(b).c();
                }
                return true;
            }

            
            {
                b = SpinnerCompat.this;
                a = c1;
                super(view);
            }
        };
        if (true) goto _L1; else goto _L4
_L4:
    }

    static d a(SpinnerCompat spinnercompat)
    {
        return spinnercompat.H;
    }

    private View a(int i, boolean flag)
    {
        if (!v)
        {
            View view = this.i.a(i);
            if (view != null)
            {
                a(view, flag);
                return view;
            }
        }
        View view1 = a.getView(i, null, this);
        a(view1, flag);
        return view1;
    }

    private void a(View view, boolean flag)
    {
        android.view.ViewGroup.LayoutParams layoutparams1 = view.getLayoutParams();
        android.view.ViewGroup.LayoutParams layoutparams = layoutparams1;
        if (layoutparams1 == null)
        {
            layoutparams = generateDefaultLayoutParams();
        }
        if (flag)
        {
            addViewInLayout(view, 0, layoutparams);
        }
        view.setSelected(hasFocus());
        if (K)
        {
            view.setEnabled(isEnabled());
        }
        int i = ViewGroup.getChildMeasureSpec(b, h.top + h.bottom, layoutparams.height);
        view.measure(ViewGroup.getChildMeasureSpec(c, h.left + h.right, layoutparams.width), i);
        i = h.top + (getMeasuredHeight() - h.bottom - h.top - view.getMeasuredHeight()) / 2;
        int j = view.getMeasuredHeight();
        view.layout(0, i, view.getMeasuredWidth() + 0, j + i);
    }

    public final int getBaseline()
    {
        Object obj;
        byte byte0;
        byte0 = -1;
        obj = null;
        if (getChildCount() <= 0) goto _L2; else goto _L1
_L1:
        View view = getChildAt(0);
_L4:
        int i = byte0;
        if (view != null)
        {
            int j = view.getBaseline();
            i = byte0;
            if (j >= 0)
            {
                i = view.getTop() + j;
            }
        }
        return i;
_L2:
        view = obj;
        if (a != null)
        {
            view = obj;
            if (a.getCount() > 0)
            {
                view = a(0, false);
                this.i.a(0, view);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        setSelection(i);
        dialoginterface.dismiss();
    }

    protected final void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (H != null && H.b())
        {
            H.a();
        }
    }

    protected final void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        r = true;
        j = h.left;
        k = getRight() - getLeft() - h.left - h.right;
        if (v)
        {
            c();
        }
        if (A != 0) goto _L2; else goto _L1
_L1:
        a();
_L8:
        r = false;
        return;
_L2:
        if (w >= 0)
        {
            setSelectedPositionInt(w);
        }
        l = getChildCount();
        AbsSpinnerCompat.a a1 = super.i;
        int i1 = super.j;
        for (i = 0; i < l; i++)
        {
            a1.a(i1 + i, getChildAt(i));
        }

        removeAllViewsInLayout();
        this.j = y;
        if (a == null) goto _L4; else goto _L3
_L3:
        View view;
        view = a(y, true);
        i = view.getMeasuredWidth();
        l = bh.h(this);
        ap.a(J, l) & 7;
        JVM INSTR lookupswitch 2: default 220
    //                   1: 264
    //                   5: 278;
           goto _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_278;
_L5:
        i = j;
_L9:
        view.offsetLeftAndRight(i);
_L4:
        this.i.a();
        invalidate();
        d();
        v = false;
        o = false;
        setNextSelectedPositionInt(y);
          goto _L8
_L6:
        i = (j + k / 2) - i / 2;
          goto _L9
        i = (j + k) - i;
          goto _L9
    }

    protected final void onMeasure(int i, int j)
    {
        boolean flag;
        flag = false;
        super.onMeasure(i, j);
        if (H == null || android.view.View.MeasureSpec.getMode(i) != 0x80000000) goto _L2; else goto _L1
_L1:
        SpinnerAdapter spinneradapter;
        Drawable drawable;
        int j1;
        j1 = getMeasuredWidth();
        spinneradapter = super.a;
        drawable = getBackground();
        if (spinneradapter != null) goto _L4; else goto _L3
_L3:
        j = ((flag) ? 1 : 0);
_L6:
        setMeasuredDimension(Math.min(Math.max(j1, j), android.view.View.MeasureSpec.getSize(i)), getMeasuredHeight());
_L2:
        return;
_L4:
        int k1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        int l1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        j = Math.max(0, getSelectedItemPosition());
        int i2 = Math.min(spinneradapter.getCount(), j + 15);
        int l = Math.max(0, j - (15 - (i2 - j)));
        View view = null;
        j = 0;
        int k = 0;
        for (; l < i2; l++)
        {
            int i1 = spinneradapter.getItemViewType(l);
            if (i1 != k)
            {
                view = null;
                k = i1;
            }
            view = spinneradapter.getView(l, view, this);
            if (view.getLayoutParams() == null)
            {
                view.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(k1, l1);
            j = Math.max(j, view.getMeasuredWidth());
        }

        if (drawable != null)
        {
            drawable.getPadding(L);
            j = L.left + L.right + j;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        if (((SavedState) (parcelable)).c)
        {
            parcelable = getViewTreeObserver();
            if (parcelable != null)
            {
                parcelable.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final SpinnerCompat a;

                    public final void onGlobalLayout()
                    {
                        if (!SpinnerCompat.a(a).b())
                        {
                            SpinnerCompat.a(a).c();
                        }
                        ViewTreeObserver viewtreeobserver = a.getViewTreeObserver();
                        if (viewtreeobserver != null)
                        {
                            viewtreeobserver.removeGlobalOnLayoutListener(this);
                        }
                    }

            
            {
                a = SpinnerCompat.this;
                super();
            }
                });
            }
        }
    }

    public final Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        boolean flag;
        if (H != null && H.b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        savedstate.c = flag;
        return savedstate;
    }

    public final boolean onTouchEvent(MotionEvent motionevent)
    {
        if (G != null && G.onTouch(this, motionevent))
        {
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public final boolean performClick()
    {
        boolean flag1 = super.performClick();
        boolean flag = flag1;
        if (!flag1)
        {
            boolean flag2 = true;
            flag = flag2;
            if (!H.b())
            {
                H.c();
                flag = flag2;
            }
        }
        return flag;
    }

    public final volatile void setAdapter(Adapter adapter)
    {
        setAdapter((SpinnerAdapter)adapter);
    }

    public final void setAdapter(SpinnerAdapter spinneradapter)
    {
        super.setAdapter(spinneradapter);
        i.a();
        if (getContext().getApplicationInfo().targetSdkVersion >= 21 && spinneradapter != null && spinneradapter.getViewTypeCount() != 1)
        {
            throw new IllegalArgumentException("Spinner adapter view type count must be 1");
        }
        if (H != null)
        {
            H.a(new b(spinneradapter));
            return;
        } else
        {
            I = new b(spinneradapter);
            return;
        }
    }

    public final void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        if (K)
        {
            int j = getChildCount();
            for (int i = 0; i < j; i++)
            {
                getChildAt(i).setEnabled(flag);
            }

        }
    }

    public final void setOnItemClickListener(AdapterViewCompat.b b1)
    {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }

    final void setOnItemClickListenerInt(AdapterViewCompat.b b1)
    {
        super.setOnItemClickListener(b1);
    }

    // Unreferenced inner class android/support/v7/internal/widget/SpinnerCompat$c$1

/* anonymous class */
    final class c._cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        final SpinnerCompat a;
        final c b;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            b.a.setSelection(i);
            if (b.a.t != null)
            {
                adapterview = b.a;
                c.a(b).getItemId(i);
                adapterview.a(view);
            }
            b.a();
        }

            
            {
                b = c1;
                a = spinnercompat;
                super();
            }
    }

}
