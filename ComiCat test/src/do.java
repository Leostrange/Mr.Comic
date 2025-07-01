// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class do
    implements dy
{

    protected Context a;
    protected Context b;
    protected ds c;
    protected LayoutInflater d;
    protected LayoutInflater e;
    public dy.a f;
    protected dz g;
    public int h;
    private int i;
    private int j;

    public do(Context context, int k, int l)
    {
        a = context;
        d = LayoutInflater.from(context);
        i = k;
        j = l;
    }

    public View a(du du1, View view, ViewGroup viewgroup)
    {
        if (view instanceof dz.a)
        {
            view = (dz.a)view;
        } else
        {
            view = (dz.a)d.inflate(j, viewgroup, false);
        }
        a(du1, ((dz.a) (view)));
        return (View)view;
    }

    public dz a(ViewGroup viewgroup)
    {
        if (g == null)
        {
            g = (dz)d.inflate(i, viewgroup, false);
            g.initialize(c);
            updateMenuView(true);
        }
        return g;
    }

    public abstract void a(du du1, dz.a a1);

    public boolean a(ViewGroup viewgroup, int k)
    {
        viewgroup.removeViewAt(k);
        return true;
    }

    public boolean a(du du1)
    {
        return true;
    }

    public boolean collapseItemActionView(ds ds1, du du1)
    {
        return false;
    }

    public boolean expandItemActionView(ds ds1, du du1)
    {
        return false;
    }

    public boolean flagActionItems()
    {
        return false;
    }

    public int getId()
    {
        return h;
    }

    public void initForMenu(Context context, ds ds1)
    {
        b = context;
        e = LayoutInflater.from(b);
        c = ds1;
    }

    public void onCloseMenu(ds ds1, boolean flag)
    {
        if (f != null)
        {
            f.onCloseMenu(ds1, flag);
        }
    }

    public boolean onSubMenuSelected(ec ec)
    {
        if (f != null)
        {
            return f.onOpenSubMenu(ec);
        } else
        {
            return false;
        }
    }

    public void updateMenuView(boolean flag)
    {
        ViewGroup viewgroup = (ViewGroup)g;
        if (viewgroup != null)
        {
            int l;
            if (c != null)
            {
                c.i();
                ArrayList arraylist = c.h();
                int j1 = arraylist.size();
                int i1 = 0;
                int k = 0;
                do
                {
                    l = k;
                    if (i1 >= j1)
                    {
                        break;
                    }
                    du du1 = (du)arraylist.get(i1);
                    if (a(du1))
                    {
                        View view = viewgroup.getChildAt(k);
                        Object obj;
                        View view1;
                        if (view instanceof dz.a)
                        {
                            obj = ((dz.a)view).getItemData();
                        } else
                        {
                            obj = null;
                        }
                        view1 = a(du1, view, viewgroup);
                        if (du1 != obj)
                        {
                            view1.setPressed(false);
                            bh.y(view1);
                        }
                        if (view1 != view)
                        {
                            obj = (ViewGroup)view1.getParent();
                            if (obj != null)
                            {
                                ((ViewGroup) (obj)).removeView(view1);
                            }
                            ((ViewGroup)g).addView(view1, k);
                        }
                        k++;
                    }
                    i1++;
                } while (true);
            } else
            {
                l = 0;
            }
            while (l < viewgroup.getChildCount()) 
            {
                if (!a(viewgroup, l))
                {
                    l++;
                }
            }
        }
    }
}
