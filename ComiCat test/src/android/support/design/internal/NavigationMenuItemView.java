// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import ct;
import du;
import i;

public class NavigationMenuItemView extends TextView
    implements dz.a
{

    private static final int CHECKED_STATE_SET[] = {
        0x10100a0
    };
    private int mIconSize;
    private ColorStateList mIconTintList;
    private du mItemData;

    public NavigationMenuItemView(Context context)
    {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        mIconSize = context.getResources().getDimensionPixelSize(a.d.navigation_icon_size);
    }

    private StateListDrawable createDefaultBackground()
    {
        TypedValue typedvalue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(a.b.colorControlHighlight, typedvalue, true))
        {
            StateListDrawable statelistdrawable = new StateListDrawable();
            statelistdrawable.addState(CHECKED_STATE_SET, new ColorDrawable(typedvalue.data));
            statelistdrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
            return statelistdrawable;
        } else
        {
            return null;
        }
    }

    public du getItemData()
    {
        return mItemData;
    }

    public void initialize(du du1, int j)
    {
        mItemData = du1;
        if (du1.isVisible())
        {
            j = 0;
        } else
        {
            j = 8;
        }
        setVisibility(j);
        if (getBackground() == null)
        {
            setBackgroundDrawable(createDefaultBackground());
        }
        setCheckable(du1.isCheckable());
        setChecked(du1.isChecked());
        setEnabled(du1.isEnabled());
        setTitle(du1.getTitle());
        setIcon(du1.getIcon());
    }

    protected int[] onCreateDrawableState(int j)
    {
        int ai[] = super.onCreateDrawableState(j + 1);
        if (mItemData != null && mItemData.isCheckable() && mItemData.isChecked())
        {
            mergeDrawableStates(ai, CHECKED_STATE_SET);
        }
        return ai;
    }

    public boolean prefersCondensedTitle()
    {
        return false;
    }

    public void setCheckable(boolean flag)
    {
        refreshDrawableState();
    }

    public void setChecked(boolean flag)
    {
        refreshDrawableState();
    }

    public void setIcon(Drawable drawable)
    {
        Drawable drawable1 = drawable;
        if (drawable != null)
        {
            drawable1 = i.c(drawable.getConstantState().newDrawable()).mutate();
            drawable1.setBounds(0, 0, mIconSize, mIconSize);
            i.a(drawable1, mIconTintList);
        }
        ct.a(this, drawable1);
    }

    void setIconTintList(ColorStateList colorstatelist)
    {
        mIconTintList = colorstatelist;
        if (mItemData != null)
        {
            setIcon(mItemData.getIcon());
        }
    }

    public void setShortcut(boolean flag, char c)
    {
    }

    public void setTitle(CharSequence charsequence)
    {
        setText(charsequence);
    }

    public boolean showsIcon()
    {
        return true;
    }

}
