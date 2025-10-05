package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import defpackage.a;
import defpackage.dz;

public class NavigationMenuItemView extends TextView implements dz.a {
    private static final int[] CHECKED_STATE_SET = {16842912};
    private int mIconSize;
    private ColorStateList mIconTintList;
    private du mItemData;

    public NavigationMenuItemView(Context context) {
        this(context, (AttributeSet) null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIconSize = context.getResources().getDimensionPixelSize(a.d.navigation_icon_size);
    }

    private StateListDrawable createDefaultBackground() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(a.b.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(CHECKED_STATE_SET, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    public du getItemData() {
        return this.mItemData;
    }

    public void initialize(du duVar, int i) {
        this.mItemData = duVar;
        setVisibility(duVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            setBackgroundDrawable(createDefaultBackground());
        }
        setCheckable(duVar.isCheckable());
        setChecked(duVar.isChecked());
        setEnabled(duVar.isEnabled());
        setTitle(duVar.getTitle());
        setIcon(duVar.getIcon());
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.mItemData != null && this.mItemData.isCheckable() && this.mItemData.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            drawable = i.c(drawable.getConstantState().newDrawable()).mutate();
            drawable.setBounds(0, 0, this.mIconSize, this.mIconSize);
            i.a(drawable, this.mIconTintList);
        }
        ct.a(this, drawable);
    }

    /* access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.mIconTintList = colorStateList;
        if (this.mItemData != null) {
            setIcon(this.mItemData.getIcon());
        }
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTitle(CharSequence charSequence) {
        setText(charSequence);
    }

    public boolean showsIcon() {
        return true;
    }
}
