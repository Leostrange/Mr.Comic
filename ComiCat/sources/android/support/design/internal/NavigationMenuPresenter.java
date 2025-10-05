package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.a;
import defpackage.dy;
import java.util.ArrayList;
import java.util.Iterator;

public class NavigationMenuPresenter implements AdapterView.OnItemClickListener, dy {
    private static final String STATE_ADAPTER = "android:menu:adapter";
    private static final String STATE_HIERARCHY = "android:menu:list";
    private NavigationMenuAdapter mAdapter;
    private dy.a mCallback;
    private LinearLayout mHeader;
    /* access modifiers changed from: private */
    public ColorStateList mIconTintList;
    private int mId;
    /* access modifiers changed from: private */
    public Drawable mItemBackground;
    /* access modifiers changed from: private */
    public LayoutInflater mLayoutInflater;
    /* access modifiers changed from: private */
    public ds mMenu;
    private NavigationMenuView mMenuView;
    /* access modifiers changed from: private */
    public int mPaddingSeparator;
    private int mPaddingTopDefault;
    /* access modifiers changed from: private */
    public ColorStateList mTextColor;

    class NavigationMenuAdapter extends BaseAdapter {
        private static final String STATE_CHECKED_ITEMS = "android:menu:checked";
        private static final int VIEW_TYPE_NORMAL = 0;
        private static final int VIEW_TYPE_SEPARATOR = 2;
        private static final int VIEW_TYPE_SUBHEADER = 1;
        private final ArrayList<NavigationMenuItem> mItems = new ArrayList<>();
        private ColorDrawable mTransparentIcon;
        private boolean mUpdateSuspended;

        NavigationMenuAdapter() {
            prepareMenuItems();
        }

        private void appendTransparentIconIfMissing(int i, int i2) {
            while (i < i2) {
                du menuItem = this.mItems.get(i).getMenuItem();
                if (menuItem.getIcon() == null) {
                    if (this.mTransparentIcon == null) {
                        this.mTransparentIcon = new ColorDrawable(17170445);
                    }
                    menuItem.setIcon(this.mTransparentIcon);
                }
                i++;
            }
        }

        private void prepareMenuItems() {
            boolean z;
            boolean z2;
            int i;
            boolean z3;
            int i2;
            int i3;
            if (!this.mUpdateSuspended) {
                this.mItems.clear();
                int i4 = -1;
                int size = NavigationMenuPresenter.this.mMenu.h().size();
                int i5 = 0;
                boolean z4 = false;
                int i6 = 0;
                while (i5 < size) {
                    du duVar = NavigationMenuPresenter.this.mMenu.h().get(i5);
                    if (duVar.hasSubMenu()) {
                        SubMenu subMenu = duVar.getSubMenu();
                        if (subMenu.hasVisibleItems()) {
                            if (i5 != 0) {
                                this.mItems.add(NavigationMenuItem.separator(NavigationMenuPresenter.this.mPaddingSeparator, 0));
                            }
                            this.mItems.add(NavigationMenuItem.of(duVar));
                            int size2 = this.mItems.size();
                            int size3 = subMenu.size();
                            boolean z5 = false;
                            for (int i7 = 0; i7 < size3; i7++) {
                                MenuItem item = subMenu.getItem(i7);
                                if (item.isVisible()) {
                                    if (!z5 && item.getIcon() != null) {
                                        z5 = true;
                                    }
                                    this.mItems.add(NavigationMenuItem.of((du) item));
                                }
                            }
                            if (z5) {
                                appendTransparentIconIfMissing(size2, this.mItems.size());
                            }
                        }
                        z3 = z;
                        i2 = i6;
                        i3 = i4;
                    } else {
                        int groupId = duVar.getGroupId();
                        if (groupId != i4) {
                            i6 = this.mItems.size();
                            z = duVar.getIcon() != null;
                            if (i5 != 0) {
                                this.mItems.add(NavigationMenuItem.separator(NavigationMenuPresenter.this.mPaddingSeparator, NavigationMenuPresenter.this.mPaddingSeparator));
                                z2 = z;
                                i = i6 + 1;
                            }
                            z2 = z;
                            i = i6;
                        } else {
                            if (!z && duVar.getIcon() != null) {
                                appendTransparentIconIfMissing(i6, this.mItems.size());
                                z2 = true;
                                i = i6;
                            }
                            z2 = z;
                            i = i6;
                        }
                        if (z2 && duVar.getIcon() == null) {
                            duVar.setIcon(17170445);
                        }
                        this.mItems.add(NavigationMenuItem.of(duVar));
                        z3 = z2;
                        i2 = i;
                        i3 = groupId;
                    }
                    i5++;
                    i4 = i3;
                    i6 = i2;
                    z4 = z3;
                }
            }
        }

        public boolean areAllItemsEnabled() {
            return false;
        }

        public Bundle createInstanceState() {
            Bundle bundle = new Bundle();
            ArrayList arrayList = new ArrayList();
            Iterator<NavigationMenuItem> it = this.mItems.iterator();
            while (it.hasNext()) {
                du menuItem = it.next().getMenuItem();
                if (menuItem != null && menuItem.isChecked()) {
                    arrayList.add(Integer.valueOf(menuItem.getItemId()));
                }
            }
            bundle.putIntegerArrayList(STATE_CHECKED_ITEMS, arrayList);
            return bundle;
        }

        public int getCount() {
            return this.mItems.size();
        }

        public NavigationMenuItem getItem(int i) {
            return this.mItems.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public int getItemViewType(int i) {
            NavigationMenuItem item = getItem(i);
            if (item.isSeparator()) {
                return 2;
            }
            return item.getMenuItem().hasSubMenu() ? 1 : 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            NavigationMenuItem item = getItem(i);
            switch (getItemViewType(i)) {
                case 0:
                    View inflate = view == null ? NavigationMenuPresenter.this.mLayoutInflater.inflate(a.f.design_navigation_item, viewGroup, false) : view;
                    NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) inflate;
                    navigationMenuItemView.setIconTintList(NavigationMenuPresenter.this.mIconTintList);
                    navigationMenuItemView.setTextColor(NavigationMenuPresenter.this.mTextColor);
                    navigationMenuItemView.setBackgroundDrawable(NavigationMenuPresenter.this.mItemBackground != null ? NavigationMenuPresenter.this.mItemBackground.getConstantState().newDrawable() : null);
                    navigationMenuItemView.initialize(item.getMenuItem(), 0);
                    return inflate;
                case 1:
                    View inflate2 = view == null ? NavigationMenuPresenter.this.mLayoutInflater.inflate(a.f.design_navigation_item_subheader, viewGroup, false) : view;
                    ((TextView) inflate2).setText(item.getMenuItem().getTitle());
                    return inflate2;
                case 2:
                    if (view == null) {
                        view = NavigationMenuPresenter.this.mLayoutInflater.inflate(a.f.design_navigation_item_separator, viewGroup, false);
                    }
                    view.setPadding(0, item.getPaddingTop(), 0, item.getPaddingBottom());
                    break;
            }
            return view;
        }

        public int getViewTypeCount() {
            return 3;
        }

        public boolean isEnabled(int i) {
            return getItem(i).isEnabled();
        }

        public void notifyDataSetChanged() {
            prepareMenuItems();
            super.notifyDataSetChanged();
        }

        public void restoreInstanceState(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(STATE_CHECKED_ITEMS);
            if (integerArrayList != null) {
                this.mUpdateSuspended = true;
                Iterator<NavigationMenuItem> it = this.mItems.iterator();
                while (it.hasNext()) {
                    du menuItem = it.next().getMenuItem();
                    if (menuItem != null && integerArrayList.contains(Integer.valueOf(menuItem.getItemId()))) {
                        menuItem.setChecked(true);
                    }
                }
                this.mUpdateSuspended = false;
                prepareMenuItems();
            }
        }

        public void setUpdateSuspended(boolean z) {
            this.mUpdateSuspended = z;
        }
    }

    static class NavigationMenuItem {
        private final du mMenuItem;
        private final int mPaddingBottom;
        private final int mPaddingTop;

        private NavigationMenuItem(du duVar, int i, int i2) {
            this.mMenuItem = duVar;
            this.mPaddingTop = i;
            this.mPaddingBottom = i2;
        }

        public static NavigationMenuItem of(du duVar) {
            return new NavigationMenuItem(duVar, 0, 0);
        }

        public static NavigationMenuItem separator(int i, int i2) {
            return new NavigationMenuItem((du) null, i, i2);
        }

        public du getMenuItem() {
            return this.mMenuItem;
        }

        public int getPaddingBottom() {
            return this.mPaddingBottom;
        }

        public int getPaddingTop() {
            return this.mPaddingTop;
        }

        public boolean isEnabled() {
            return this.mMenuItem != null && !this.mMenuItem.hasSubMenu() && this.mMenuItem.isEnabled();
        }

        public boolean isSeparator() {
            return this.mMenuItem == null;
        }
    }

    public void addHeaderView(View view) {
        this.mHeader.addView(view);
        this.mMenuView.setPadding(0, 0, 0, this.mMenuView.getPaddingBottom());
    }

    public boolean collapseItemActionView(ds dsVar, du duVar) {
        return false;
    }

    public boolean expandItemActionView(ds dsVar, du duVar) {
        return false;
    }

    public boolean flagActionItems() {
        return false;
    }

    public int getId() {
        return this.mId;
    }

    public Drawable getItemBackground() {
        return this.mItemBackground;
    }

    public ColorStateList getItemTextColor() {
        return this.mTextColor;
    }

    public ColorStateList getItemTintList() {
        return this.mIconTintList;
    }

    public dz getMenuView(ViewGroup viewGroup) {
        if (this.mMenuView == null) {
            this.mMenuView = (NavigationMenuView) this.mLayoutInflater.inflate(a.f.design_navigation_menu, viewGroup, false);
            if (this.mAdapter == null) {
                this.mAdapter = new NavigationMenuAdapter();
            }
            this.mHeader = (LinearLayout) this.mLayoutInflater.inflate(a.f.design_navigation_item_header, this.mMenuView, false);
            this.mMenuView.addHeaderView(this.mHeader);
            this.mMenuView.setAdapter(this.mAdapter);
            this.mMenuView.setOnItemClickListener(this);
        }
        return this.mMenuView;
    }

    public View inflateHeaderView(int i) {
        View inflate = this.mLayoutInflater.inflate(i, this.mHeader, false);
        addHeaderView(inflate);
        return inflate;
    }

    public void initForMenu(Context context, ds dsVar) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mMenu = dsVar;
        Resources resources = context.getResources();
        this.mPaddingTopDefault = resources.getDimensionPixelOffset(a.d.navigation_padding_top_default);
        this.mPaddingSeparator = resources.getDimensionPixelOffset(a.d.navigation_separator_vertical_padding);
    }

    public void onCloseMenu(ds dsVar, boolean z) {
        if (this.mCallback != null) {
            this.mCallback.onCloseMenu(dsVar, z);
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int headerViewsCount = i - this.mMenuView.getHeaderViewsCount();
        if (headerViewsCount >= 0) {
            this.mMenu.a((MenuItem) this.mAdapter.getItem(headerViewsCount).getMenuItem(), (dy) this, 0);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(STATE_HIERARCHY);
        if (sparseParcelableArray != null) {
            this.mMenuView.restoreHierarchyState(sparseParcelableArray);
        }
        Bundle bundle2 = bundle.getBundle(STATE_ADAPTER);
        if (bundle2 != null) {
            this.mAdapter.restoreInstanceState(bundle2);
        }
    }

    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.mMenuView != null) {
            SparseArray sparseArray = new SparseArray();
            this.mMenuView.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(STATE_HIERARCHY, sparseArray);
        }
        if (this.mAdapter != null) {
            bundle.putBundle(STATE_ADAPTER, this.mAdapter.createInstanceState());
        }
        return bundle;
    }

    public boolean onSubMenuSelected(ec ecVar) {
        return false;
    }

    public void removeHeaderView(View view) {
        this.mHeader.removeView(view);
        if (this.mHeader.getChildCount() == 0) {
            this.mMenuView.setPadding(0, this.mPaddingTopDefault, 0, this.mMenuView.getPaddingBottom());
        }
    }

    public void setCallback(dy.a aVar) {
        this.mCallback = aVar;
    }

    public void setId(int i) {
        this.mId = i;
    }

    public void setItemBackground(Drawable drawable) {
        this.mItemBackground = drawable;
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.mIconTintList = colorStateList;
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.mTextColor = colorStateList;
    }

    public void setUpdateSuspended(boolean z) {
        if (this.mAdapter != null) {
            this.mAdapter.setUpdateSuspended(z);
        }
    }

    public void updateMenuView(boolean z) {
        if (this.mAdapter != null) {
            this.mAdapter.notifyDataSetChanged();
        }
    }
}
