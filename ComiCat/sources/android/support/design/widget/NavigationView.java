package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.internal.NavigationMenuPresenter;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import defpackage.a;
import defpackage.ds;

public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int[] CHECKED_STATE_SET = {16842912};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    /* access modifiers changed from: private */
    public OnNavigationItemSelectedListener mListener;
    private int mMaxWidth;
    private final ds mMenu;
    private MenuInflater mMenuInflater;
    private final NavigationMenuPresenter mPresenter;

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public Bundle menuState;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.menuState = parcel.readBundle();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }
    }

    public NavigationView(Context context) {
        this(context, (AttributeSet) null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMenu = new ds(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.NavigationView, i, a.g.Widget_Design_NavigationView);
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(a.h.NavigationView_android_background));
        if (obtainStyledAttributes.hasValue(a.h.NavigationView_elevation)) {
            bh.f(this, (float) obtainStyledAttributes.getDimensionPixelSize(a.h.NavigationView_elevation, 0));
        }
        bh.a((View) this, obtainStyledAttributes.getBoolean(a.h.NavigationView_android_fitsSystemWindows, false));
        this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(a.h.NavigationView_android_maxWidth, 0);
        ColorStateList colorStateList = obtainStyledAttributes.hasValue(a.h.NavigationView_itemIconTint) ? obtainStyledAttributes.getColorStateList(a.h.NavigationView_itemIconTint) : createDefaultColorStateList(16842808);
        ColorStateList colorStateList2 = obtainStyledAttributes.hasValue(a.h.NavigationView_itemTextColor) ? obtainStyledAttributes.getColorStateList(a.h.NavigationView_itemTextColor) : createDefaultColorStateList(16842806);
        Drawable drawable = obtainStyledAttributes.getDrawable(a.h.NavigationView_itemBackground);
        if (obtainStyledAttributes.hasValue(a.h.NavigationView_menu)) {
            inflateMenu(obtainStyledAttributes.getResourceId(a.h.NavigationView_menu, 0));
        }
        this.mMenu.a((ds.a) new ds.a() {
            public boolean onMenuItemSelected(ds dsVar, MenuItem menuItem) {
                return NavigationView.this.mListener != null && NavigationView.this.mListener.onNavigationItemSelected(menuItem);
            }

            public void onMenuModeChange(ds dsVar) {
            }
        });
        this.mPresenter = new NavigationMenuPresenter();
        this.mPresenter.setId(1);
        this.mPresenter.initForMenu(context, this.mMenu);
        this.mPresenter.setItemIconTintList(colorStateList);
        this.mPresenter.setItemTextColor(colorStateList2);
        this.mPresenter.setItemBackground(drawable);
        this.mMenu.a((dy) this.mPresenter);
        addView((View) this.mPresenter.getMenuView(this));
        if (obtainStyledAttributes.hasValue(a.h.NavigationView_headerLayout)) {
            inflateHeaderView(obtainStyledAttributes.getResourceId(a.h.NavigationView_headerLayout, 0));
        }
        obtainStyledAttributes.recycle();
    }

    private ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = getResources().getColorStateList(typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(a.b.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        return new ColorStateList(new int[][]{DISABLED_STATE_SET, CHECKED_STATE_SET, EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(DISABLED_STATE_SET, defaultColor), i2, defaultColor});
    }

    private MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            this.mMenuInflater = new dk(getContext());
        }
        return this.mMenuInflater;
    }

    public void addHeaderView(View view) {
        this.mPresenter.addHeaderView(view);
    }

    public Drawable getItemBackground() {
        return this.mPresenter.getItemBackground();
    }

    public ColorStateList getItemIconTintList() {
        return this.mPresenter.getItemTintList();
    }

    public ColorStateList getItemTextColor() {
        return this.mPresenter.getItemTextColor();
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public View inflateHeaderView(int i) {
        return this.mPresenter.inflateHeaderView(i);
    }

    public void inflateMenu(int i) {
        if (this.mPresenter != null) {
            this.mPresenter.setUpdateSuspended(true);
        }
        getMenuInflater().inflate(i, this.mMenu);
        if (this.mPresenter != null) {
            this.mPresenter.setUpdateSuspended(false);
            this.mPresenter.updateMenuView(false);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        switch (View.MeasureSpec.getMode(i)) {
            case Integer.MIN_VALUE:
                i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.mMaxWidth), 1073741824);
                break;
            case 0:
                i = View.MeasureSpec.makeMeasureSpec(this.mMaxWidth, 1073741824);
                break;
        }
        super.onMeasure(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mMenu.b(savedState.menuState);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuState = new Bundle();
        this.mMenu.a(savedState.menuState);
        return savedState;
    }

    public void removeHeaderView(View view) {
        this.mPresenter.removeHeaderView(view);
    }

    public void setItemBackground(Drawable drawable) {
        this.mPresenter.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(e.getDrawable(getContext(), i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.mPresenter.setItemIconTintList(colorStateList);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.mPresenter.setItemTextColor(colorStateList);
    }

    public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.mListener = onNavigationItemSelectedListener;
    }
}
