// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.app.AlertDialog;
import android.support.v7.internal.view.menu.ExpandedMenuView;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

public final class dr
    implements android.widget.AdapterView.OnItemClickListener, dy
{
    final class a extends BaseAdapter
    {

        final dr a;
        private int b;

        private void a()
        {
            du du1 = a.c.j;
            if (du1 != null)
            {
                ArrayList arraylist = a.c.j();
                int l = arraylist.size();
                for (int k = 0; k < l; k++)
                {
                    if ((du)arraylist.get(k) == du1)
                    {
                        b = k;
                        return;
                    }
                }

            }
            b = -1;
        }

        public final du a(int k)
        {
            ArrayList arraylist = a.c.j();
            int l = dr.a(a) + k;
            k = l;
            if (b >= 0)
            {
                k = l;
                if (l >= b)
                {
                    k = l + 1;
                }
            }
            return (du)arraylist.get(k);
        }

        public final int getCount()
        {
            int k = a.c.j().size() - dr.a(a);
            if (b < 0)
            {
                return k;
            } else
            {
                return k - 1;
            }
        }

        public final Object getItem(int k)
        {
            return a(k);
        }

        public final long getItemId(int k)
        {
            return (long)k;
        }

        public final View getView(int k, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = a.b.inflate(a.f, viewgroup, false);
            }
            ((dz.a)view).initialize(a(k), 0);
            return view;
        }

        public final void notifyDataSetChanged()
        {
            a();
            super.notifyDataSetChanged();
        }

        public a()
        {
            a = dr.this;
            super();
            b = -1;
            a();
        }
    }


    Context a;
    LayoutInflater b;
    ds c;
    ExpandedMenuView d;
    int e;
    int f;
    public dy.a g;
    a h;
    private int i;
    private int j;

    private dr(int k)
    {
        f = k;
        e = 0;
    }

    public dr(Context context, int k)
    {
        this(k);
        a = context;
        b = LayoutInflater.from(a);
    }

    static int a(dr dr1)
    {
        return dr1.i;
    }

    public final ListAdapter a()
    {
        if (h == null)
        {
            h = new a();
        }
        return h;
    }

    public final dz a(ViewGroup viewgroup)
    {
        if (d == null)
        {
            d = (ExpandedMenuView)b.inflate(cv.h.abc_expanded_menu_layout, viewgroup, false);
            if (h == null)
            {
                h = new a();
            }
            d.setAdapter(h);
            d.setOnItemClickListener(this);
        }
        return d;
    }

    public final boolean collapseItemActionView(ds ds1, du du)
    {
        return false;
    }

    public final boolean expandItemActionView(ds ds1, du du)
    {
        return false;
    }

    public final boolean flagActionItems()
    {
        return false;
    }

    public final int getId()
    {
        return j;
    }

    public final void initForMenu(Context context, ds ds1)
    {
        if (e == 0) goto _L2; else goto _L1
_L1:
        a = new ContextThemeWrapper(context, e);
        b = LayoutInflater.from(a);
_L4:
        c = ds1;
        if (h != null)
        {
            h.notifyDataSetChanged();
        }
        return;
_L2:
        if (a != null)
        {
            a = context;
            if (b == null)
            {
                b = LayoutInflater.from(a);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onCloseMenu(ds ds1, boolean flag)
    {
        if (g != null)
        {
            g.onCloseMenu(ds1, flag);
        }
    }

    public final void onItemClick(AdapterView adapterview, View view, int k, long l)
    {
        c.a(h.a(k), this, 0);
    }

    public final void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = ((Bundle)parcelable).getSparseParcelableArray("android:menu:list");
        if (parcelable != null)
        {
            d.restoreHierarchyState(parcelable);
        }
    }

    public final Parcelable onSaveInstanceState()
    {
        if (d == null)
        {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray sparsearray = new SparseArray();
        if (d != null)
        {
            d.saveHierarchyState(sparsearray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparsearray);
        return bundle;
    }

    public final boolean onSubMenuSelected(ec ec1)
    {
        if (!ec1.hasVisibleItems())
        {
            return false;
        }
        dt dt1 = new dt(ec1);
        Object obj = dt1.a;
        android.support.v7.app.AlertDialog.Builder builder = new android.support.v7.app.AlertDialog.Builder(((ds) (obj)).a);
        dt1.c = new dr(builder.getContext(), cv.h.abc_list_menu_item_layout);
        dt1.c.g = dt1;
        dt1.a.a(dt1.c);
        builder.setAdapter(dt1.c.a(), dt1);
        View view = ((ds) (obj)).h;
        if (view != null)
        {
            builder.setCustomTitle(view);
        } else
        {
            builder.setIcon(((ds) (obj)).g).setTitle(((ds) (obj)).f);
        }
        builder.setOnKeyListener(dt1);
        dt1.b = builder.create();
        dt1.b.setOnDismissListener(dt1);
        obj = dt1.b.getWindow().getAttributes();
        obj.type = 1003;
        obj.flags = ((android.view.WindowManager.LayoutParams) (obj)).flags | 0x20000;
        dt1.b.show();
        if (g != null)
        {
            g.onOpenSubMenu(ec1);
        }
        return true;
    }

    public final void updateMenuView(boolean flag)
    {
        if (h != null)
        {
            h.notifyDataSetChanged();
        }
    }
}
