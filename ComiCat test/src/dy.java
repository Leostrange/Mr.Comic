// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Parcelable;

public interface dy
{
    public static interface a
    {

        public abstract void onCloseMenu(ds ds, boolean flag);

        public abstract boolean onOpenSubMenu(ds ds);
    }


    public abstract boolean collapseItemActionView(ds ds, du du);

    public abstract boolean expandItemActionView(ds ds, du du);

    public abstract boolean flagActionItems();

    public abstract int getId();

    public abstract void initForMenu(Context context, ds ds);

    public abstract void onCloseMenu(ds ds, boolean flag);

    public abstract void onRestoreInstanceState(Parcelable parcelable);

    public abstract Parcelable onSaveInstanceState();

    public abstract boolean onSubMenuSelected(ec ec);

    public abstract void updateMenuView(boolean flag);
}
