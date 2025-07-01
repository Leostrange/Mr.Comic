// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class ds
    implements p
{
    public static interface a
    {

        public abstract boolean onMenuItemSelected(ds ds1, MenuItem menuitem);

        public abstract void onMenuModeChange(ds ds1);
    }

    public static interface b
    {

        public abstract boolean a(du du1);
    }


    private static final int l[] = {
        1, 4, 5, 3, 2, 0
    };
    final Context a;
    public a b;
    ArrayList c;
    public ArrayList d;
    public int e;
    CharSequence f;
    Drawable g;
    View h;
    public boolean i;
    du j;
    public boolean k;
    private final Resources m;
    private boolean n;
    private boolean o;
    private ArrayList p;
    private boolean q;
    private ArrayList r;
    private boolean s;
    private android.view.ContextMenu.ContextMenuInfo t;
    private boolean u;
    private boolean v;
    private boolean w;
    private ArrayList x;
    private CopyOnWriteArrayList y;

    public ds(Context context)
    {
        boolean flag = true;
        super();
        e = 0;
        u = false;
        v = false;
        i = false;
        w = false;
        x = new ArrayList();
        y = new CopyOnWriteArrayList();
        a = context;
        m = context.getResources();
        c = new ArrayList();
        p = new ArrayList();
        q = true;
        d = new ArrayList();
        r = new ArrayList();
        s = true;
        if (m.getConfiguration().keyboard == 1 || !m.getBoolean(cv.b.abc_config_showMenuShortcutsWhenKeyboardPresent))
        {
            flag = false;
        }
        o = flag;
    }

    private static int a(ArrayList arraylist, int i1)
    {
        for (int j1 = arraylist.size() - 1; j1 >= 0; j1--)
        {
            if (((du)arraylist.get(j1)).a <= i1)
            {
                return j1 + 1;
            }
        }

        return 0;
    }

    private MenuItem a(int i1, int j1, int k1, CharSequence charsequence)
    {
        int l1 = (0xffff0000 & k1) >> 16;
        if (l1 < 0 || l1 >= l.length)
        {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        l1 = l[l1] << 16 | 0xffff & k1;
        charsequence = new du(this, i1, j1, k1, l1, charsequence, e);
        if (t != null)
        {
            charsequence.e = t;
        }
        c.add(a(c, l1), charsequence);
        b(true);
        return charsequence;
    }

    private du a(int i1, KeyEvent keyevent)
    {
        ArrayList arraylist;
        arraylist = x;
        arraylist.clear();
        a(((List) (arraylist)), i1, keyevent);
        if (!arraylist.isEmpty()) goto _L2; else goto _L1
_L1:
        keyevent = null;
_L6:
        return keyevent;
_L2:
        android.view.KeyCharacterMap.KeyData keydata;
        int j1;
        int k1;
        int l1;
        boolean flag;
        k1 = keyevent.getMetaState();
        keydata = new android.view.KeyCharacterMap.KeyData();
        keyevent.getKeyData(keydata);
        l1 = arraylist.size();
        if (l1 == 1)
        {
            return (du)arraylist.get(0);
        }
        flag = b();
        j1 = 0;
_L9:
        if (j1 >= l1) goto _L4; else goto _L3
_L3:
        du du1 = (du)arraylist.get(j1);
        char c1;
        if (flag)
        {
            c1 = du1.getAlphabeticShortcut();
        } else
        {
            c1 = du1.getNumericShortcut();
        }
        if (c1 != keydata.meta[0])
        {
            break; /* Loop/switch isn't completed */
        }
        keyevent = du1;
        if ((k1 & 2) == 0) goto _L6; else goto _L5
_L5:
        if (c1 != keydata.meta[2])
        {
            break; /* Loop/switch isn't completed */
        }
        keyevent = du1;
        if ((k1 & 2) != 0) goto _L6; else goto _L7
_L7:
        if (!flag || c1 != '\b')
        {
            continue; /* Loop/switch isn't completed */
        }
        keyevent = du1;
        if (i1 == 67) goto _L6; else goto _L8
_L8:
        j1++;
          goto _L9
_L4:
        return null;
    }

    private void a(int i1, boolean flag)
    {
        if (i1 >= 0 && i1 < c.size())
        {
            c.remove(i1);
            if (flag)
            {
                b(true);
                return;
            }
        }
    }

    private void a(List list, int i1, KeyEvent keyevent)
    {
        boolean flag = b();
        int k1 = keyevent.getMetaState();
        android.view.KeyCharacterMap.KeyData keydata = new android.view.KeyCharacterMap.KeyData();
        if (keyevent.getKeyData(keydata) || i1 == 67)
        {
            int l1 = c.size();
            int j1 = 0;
            while (j1 < l1) 
            {
                du du1 = (du)c.get(j1);
                if (du1.hasSubMenu())
                {
                    ((ds)du1.getSubMenu()).a(list, i1, keyevent);
                }
                char c1;
                if (flag)
                {
                    c1 = du1.getAlphabeticShortcut();
                } else
                {
                    c1 = du1.getNumericShortcut();
                }
                if ((k1 & 5) == 0 && c1 != 0 && (c1 == keydata.meta[0] || c1 == keydata.meta[2] || flag && c1 == '\b' && i1 == 67) && du1.isEnabled())
                {
                    list.add(du1);
                }
                j1++;
            }
        }
    }

    protected final ds a(Drawable drawable)
    {
        a(((CharSequence) (null)), drawable, ((View) (null)));
        return this;
    }

    protected final ds a(CharSequence charsequence)
    {
        a(charsequence, ((Drawable) (null)), ((View) (null)));
        return this;
    }

    protected String a()
    {
        return "android:menu:actionviewstates";
    }

    public final void a(Bundle bundle)
    {
        if (!y.isEmpty())
        {
            SparseArray sparsearray = new SparseArray();
            Iterator iterator = y.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                WeakReference weakreference = (WeakReference)iterator.next();
                dy dy1 = (dy)weakreference.get();
                if (dy1 == null)
                {
                    y.remove(weakreference);
                } else
                {
                    int i1 = dy1.getId();
                    if (i1 > 0)
                    {
                        Parcelable parcelable = dy1.onSaveInstanceState();
                        if (parcelable != null)
                        {
                            sparsearray.put(i1, parcelable);
                        }
                    }
                }
            } while (true);
            bundle.putSparseParcelableArray("android:menu:presenters", sparsearray);
        }
    }

    public void a(a a1)
    {
        b = a1;
    }

    public final void a(dy dy1)
    {
        a(dy1, a);
    }

    public final void a(dy dy1, Context context)
    {
        y.add(new WeakReference(dy1));
        dy1.initForMenu(context, this);
        s = true;
    }

    final void a(CharSequence charsequence, Drawable drawable, View view)
    {
        if (view != null)
        {
            h = view;
            f = null;
            g = null;
        } else
        {
            if (charsequence != null)
            {
                f = charsequence;
            }
            if (drawable != null)
            {
                g = drawable;
            }
            h = null;
        }
        b(false);
    }

    public final void a(boolean flag)
    {
        if (w)
        {
            return;
        }
        w = true;
        for (Iterator iterator = y.iterator(); iterator.hasNext();)
        {
            WeakReference weakreference = (WeakReference)iterator.next();
            dy dy1 = (dy)weakreference.get();
            if (dy1 == null)
            {
                y.remove(weakreference);
            } else
            {
                dy1.onCloseMenu(this, flag);
            }
        }

        w = false;
    }

    public final boolean a(MenuItem menuitem, dy dy1, int i1)
    {
        boolean flag1;
        boolean flag2;
        flag2 = false;
        flag1 = false;
        menuitem = (du)menuitem;
        if (menuitem != null && menuitem.isEnabled()) goto _L2; else goto _L1
_L1:
        flag1 = false;
_L4:
        return flag1;
_L2:
        ao ao1;
        boolean flag;
        boolean flag3;
        flag3 = menuitem.b();
        ao1 = ((du) (menuitem)).d;
        if (ao1 != null && ao1.e())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!menuitem.i())
        {
            break; /* Loop/switch isn't completed */
        }
        flag2 = menuitem.expandActionView() | flag3;
        flag1 = flag2;
        if (flag2)
        {
            a(true);
            return flag2;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (menuitem.hasSubMenu() || flag)
        {
            a(false);
            if (!menuitem.hasSubMenu())
            {
                menuitem.a(new ec(a, this, menuitem));
            }
            menuitem = (ec)menuitem.getSubMenu();
            if (flag)
            {
                ao1.a(menuitem);
            }
            if (!y.isEmpty())
            {
                flag1 = flag2;
                if (dy1 != null)
                {
                    flag1 = dy1.onSubMenuSelected(menuitem);
                }
                dy1 = y.iterator();
                while (dy1.hasNext()) 
                {
                    WeakReference weakreference = (WeakReference)dy1.next();
                    dy dy2 = (dy)weakreference.get();
                    if (dy2 == null)
                    {
                        y.remove(weakreference);
                    } else
                    if (!flag1)
                    {
                        flag1 = dy2.onSubMenuSelected(menuitem);
                    }
                }
            }
            flag2 = flag3 | flag1;
            flag1 = flag2;
            if (!flag2)
            {
                a(true);
                return flag2;
            }
        } else
        {
            if ((i1 & 1) == 0)
            {
                a(true);
            }
            return flag3;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    boolean a(ds ds1, MenuItem menuitem)
    {
        return b != null && b.onMenuItemSelected(ds1, menuitem);
    }

    public boolean a(du du1)
    {
        boolean flag1 = false;
        if (!y.isEmpty())
        {
            d();
            Iterator iterator = y.iterator();
            boolean flag = false;
label0:
            do
            {
                dy dy1;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    WeakReference weakreference = (WeakReference)iterator.next();
                    dy1 = (dy)weakreference.get();
                    if (dy1 != null)
                    {
                        break;
                    }
                    y.remove(weakreference);
                } while (true);
                flag = dy1.expandItemActionView(this, du1);
            } while (!flag);
            e();
            flag1 = flag;
            if (flag)
            {
                j = du1;
                return flag;
            }
        }
        return flag1;
    }

    public MenuItem add(int i1)
    {
        return a(0, 0, 0, m.getString(i1));
    }

    public MenuItem add(int i1, int j1, int k1, int l1)
    {
        return a(i1, j1, k1, m.getString(l1));
    }

    public MenuItem add(int i1, int j1, int k1, CharSequence charsequence)
    {
        return a(i1, j1, k1, charsequence);
    }

    public MenuItem add(CharSequence charsequence)
    {
        return a(0, 0, 0, charsequence);
    }

    public int addIntentOptions(int i1, int j1, int k1, ComponentName componentname, Intent aintent[], Intent intent, int l1, 
            MenuItem amenuitem[])
    {
        PackageManager packagemanager = a.getPackageManager();
        List list = packagemanager.queryIntentActivityOptions(componentname, aintent, intent, 0);
        int i2;
        if (list != null)
        {
            i2 = list.size();
        } else
        {
            i2 = 0;
        }
        if ((l1 & 1) == 0)
        {
            removeGroup(i1);
        }
        l1 = 0;
        while (l1 < i2) 
        {
            ResolveInfo resolveinfo = (ResolveInfo)list.get(l1);
            if (resolveinfo.specificIndex < 0)
            {
                componentname = intent;
            } else
            {
                componentname = aintent[resolveinfo.specificIndex];
            }
            componentname = new Intent(componentname);
            componentname.setComponent(new ComponentName(resolveinfo.activityInfo.applicationInfo.packageName, resolveinfo.activityInfo.name));
            componentname = add(i1, j1, k1, resolveinfo.loadLabel(packagemanager)).setIcon(resolveinfo.loadIcon(packagemanager)).setIntent(componentname);
            if (amenuitem != null && resolveinfo.specificIndex >= 0)
            {
                amenuitem[resolveinfo.specificIndex] = componentname;
            }
            l1++;
        }
        return i2;
    }

    public SubMenu addSubMenu(int i1)
    {
        return addSubMenu(0, 0, 0, ((CharSequence) (m.getString(i1))));
    }

    public SubMenu addSubMenu(int i1, int j1, int k1, int l1)
    {
        return addSubMenu(i1, j1, k1, ((CharSequence) (m.getString(l1))));
    }

    public SubMenu addSubMenu(int i1, int j1, int k1, CharSequence charsequence)
    {
        charsequence = (du)a(i1, j1, k1, charsequence);
        ec ec1 = new ec(a, this, charsequence);
        charsequence.a(ec1);
        return ec1;
    }

    public SubMenu addSubMenu(CharSequence charsequence)
    {
        return addSubMenu(0, 0, 0, charsequence);
    }

    public final void b(Bundle bundle)
    {
        bundle = bundle.getSparseParcelableArray("android:menu:presenters");
        if (bundle != null && !y.isEmpty())
        {
            Iterator iterator = y.iterator();
            while (iterator.hasNext()) 
            {
                WeakReference weakreference = (WeakReference)iterator.next();
                dy dy1 = (dy)weakreference.get();
                if (dy1 == null)
                {
                    y.remove(weakreference);
                } else
                {
                    int i1 = dy1.getId();
                    if (i1 > 0)
                    {
                        Parcelable parcelable = (Parcelable)bundle.get(i1);
                        if (parcelable != null)
                        {
                            dy1.onRestoreInstanceState(parcelable);
                        }
                    }
                }
            }
        }
    }

    public final void b(dy dy1)
    {
        Iterator iterator = y.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            WeakReference weakreference = (WeakReference)iterator.next();
            dy dy2 = (dy)weakreference.get();
            if (dy2 == null || dy2 == dy1)
            {
                y.remove(weakreference);
            }
        } while (true);
    }

    public final void b(boolean flag)
    {
        if (!u)
        {
            if (flag)
            {
                q = true;
                s = true;
            }
            if (!y.isEmpty())
            {
                d();
                for (Iterator iterator = y.iterator(); iterator.hasNext();)
                {
                    WeakReference weakreference = (WeakReference)iterator.next();
                    dy dy1 = (dy)weakreference.get();
                    if (dy1 == null)
                    {
                        y.remove(weakreference);
                    } else
                    {
                        dy1.updateMenuView(flag);
                    }
                }

                e();
            }
            return;
        } else
        {
            v = true;
            return;
        }
    }

    boolean b()
    {
        return n;
    }

    public boolean b(du du1)
    {
        boolean flag = false;
        boolean flag2 = flag;
        if (!y.isEmpty())
        {
            if (j != du1)
            {
                flag2 = flag;
            } else
            {
                d();
                Iterator iterator = y.iterator();
                boolean flag1 = false;
label0:
                do
                {
                    dy dy1;
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break label0;
                        }
                        WeakReference weakreference = (WeakReference)iterator.next();
                        dy1 = (dy)weakreference.get();
                        if (dy1 != null)
                        {
                            break;
                        }
                        y.remove(weakreference);
                    } while (true);
                    flag1 = dy1.collapseItemActionView(this, du1);
                } while (!flag1);
                e();
                flag2 = flag1;
                if (flag1)
                {
                    j = null;
                    return flag1;
                }
            }
        }
        return flag2;
    }

    public final void c(Bundle bundle)
    {
        int j1 = size();
        int i1 = 0;
        SparseArray sparsearray;
        SparseArray sparsearray2;
        for (sparsearray = null; i1 < j1; sparsearray = sparsearray2)
        {
            MenuItem menuitem = getItem(i1);
            View view = aw.a(menuitem);
            sparsearray2 = sparsearray;
            if (view != null)
            {
                sparsearray2 = sparsearray;
                if (view.getId() != -1)
                {
                    SparseArray sparsearray1 = sparsearray;
                    if (sparsearray == null)
                    {
                        sparsearray1 = new SparseArray();
                    }
                    view.saveHierarchyState(sparsearray1);
                    sparsearray2 = sparsearray1;
                    if (aw.c(menuitem))
                    {
                        bundle.putInt("android:menu:expandedactionview", menuitem.getItemId());
                        sparsearray2 = sparsearray1;
                    }
                }
            }
            if (menuitem.hasSubMenu())
            {
                ((ec)menuitem.getSubMenu()).c(bundle);
            }
            i1++;
        }

        if (sparsearray != null)
        {
            bundle.putSparseParcelableArray(a(), sparsearray);
        }
    }

    public boolean c()
    {
        return o;
    }

    public void clear()
    {
        if (j != null)
        {
            b(j);
        }
        c.clear();
        b(true);
    }

    public void clearHeader()
    {
        g = null;
        f = null;
        h = null;
        b(false);
    }

    public void close()
    {
        a(true);
    }

    public final void d()
    {
        if (!u)
        {
            u = true;
            v = false;
        }
    }

    public final void d(Bundle bundle)
    {
        if (bundle != null)
        {
            SparseArray sparsearray = bundle.getSparseParcelableArray(a());
            int k1 = size();
            for (int i1 = 0; i1 < k1; i1++)
            {
                MenuItem menuitem = getItem(i1);
                View view = aw.a(menuitem);
                if (view != null && view.getId() != -1)
                {
                    view.restoreHierarchyState(sparsearray);
                }
                if (menuitem.hasSubMenu())
                {
                    ((ec)menuitem.getSubMenu()).d(bundle);
                }
            }

            int j1 = bundle.getInt("android:menu:expandedactionview");
            if (j1 > 0)
            {
                bundle = findItem(j1);
                if (bundle != null)
                {
                    aw.b(bundle);
                    return;
                }
            }
        }
    }

    public final void e()
    {
        u = false;
        if (v)
        {
            v = false;
            b(true);
        }
    }

    final void f()
    {
        q = true;
        b(true);
    }

    public MenuItem findItem(int i1)
    {
        int j1;
        int k1;
        k1 = size();
        j1 = 0;
_L6:
        if (j1 >= k1) goto _L2; else goto _L1
_L1:
        Object obj = (du)c.get(j1);
        if (((du) (obj)).getItemId() != i1) goto _L4; else goto _L3
_L3:
        return ((MenuItem) (obj));
_L4:
        MenuItem menuitem;
        if (!((du) (obj)).hasSubMenu())
        {
            continue; /* Loop/switch isn't completed */
        }
        menuitem = ((du) (obj)).getSubMenu().findItem(i1);
        obj = menuitem;
        if (menuitem != null) goto _L3; else goto _L5
_L5:
        j1++;
          goto _L6
_L2:
        return null;
    }

    public final void g()
    {
        s = true;
        b(true);
    }

    public MenuItem getItem(int i1)
    {
        return (MenuItem)c.get(i1);
    }

    public final ArrayList h()
    {
        if (!q)
        {
            return p;
        }
        p.clear();
        int j1 = c.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            du du1 = (du)c.get(i1);
            if (du1.isVisible())
            {
                p.add(du1);
            }
        }

        q = false;
        s = true;
        return p;
    }

    public boolean hasVisibleItems()
    {
        if (k)
        {
            return true;
        }
        int j1 = size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            if (((du)c.get(i1)).isVisible())
            {
                return true;
            }
        }

        return false;
    }

    public final void i()
    {
        ArrayList arraylist = h();
        if (!s)
        {
            return;
        }
        Iterator iterator = y.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            WeakReference weakreference = (WeakReference)iterator.next();
            dy dy1 = (dy)weakreference.get();
            if (dy1 == null)
            {
                y.remove(weakreference);
            } else
            {
                flag = dy1.flagActionItems() | flag;
            }
        }
        if (flag)
        {
            d.clear();
            r.clear();
            int j1 = arraylist.size();
            int i1 = 0;
            while (i1 < j1) 
            {
                du du1 = (du)arraylist.get(i1);
                if (du1.f())
                {
                    d.add(du1);
                } else
                {
                    r.add(du1);
                }
                i1++;
            }
        } else
        {
            d.clear();
            r.clear();
            r.addAll(h());
        }
        s = false;
    }

    public boolean isShortcutKey(int i1, KeyEvent keyevent)
    {
        return a(i1, keyevent) != null;
    }

    public final ArrayList j()
    {
        i();
        return r;
    }

    public ds k()
    {
        return this;
    }

    public boolean performIdentifierAction(int i1, int j1)
    {
        return a(findItem(i1), ((dy) (null)), j1);
    }

    public boolean performShortcut(int i1, KeyEvent keyevent, int j1)
    {
        keyevent = a(i1, keyevent);
        boolean flag = false;
        if (keyevent != null)
        {
            flag = a(keyevent, ((dy) (null)), j1);
        }
        if ((j1 & 2) != 0)
        {
            a(true);
        }
        return flag;
    }

    public void removeGroup(int i1)
    {
        int j1;
        int k1;
        k1 = size();
        j1 = 0;
_L7:
        if (j1 >= k1) goto _L2; else goto _L1
_L1:
        if (((du)c.get(j1)).getGroupId() != i1) goto _L4; else goto _L3
_L3:
        if (j1 < 0)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        int i2 = c.size();
        for (int l1 = 0; l1 < i2 - j1 && ((du)c.get(j1)).getGroupId() == i1; l1++)
        {
            a(j1, false);
        }

        break; /* Loop/switch isn't completed */
_L4:
        j1++;
        continue; /* Loop/switch isn't completed */
_L2:
        j1 = -1;
        if (true) goto _L3; else goto _L5
_L5:
        b(true);
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void removeItem(int i1)
    {
        int j1;
        int k1;
        k1 = size();
        j1 = 0;
_L3:
        if (j1 >= k1)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        if (((du)c.get(j1)).getItemId() != i1) goto _L2; else goto _L1
_L1:
        a(j1, true);
        return;
_L2:
        j1++;
          goto _L3
        j1 = -1;
          goto _L1
    }

    public void setGroupCheckable(int i1, boolean flag, boolean flag1)
    {
        int k1 = c.size();
        for (int j1 = 0; j1 < k1; j1++)
        {
            du du1 = (du)c.get(j1);
            if (du1.getGroupId() == i1)
            {
                du1.a(flag1);
                du1.setCheckable(flag);
            }
        }

    }

    public void setGroupEnabled(int i1, boolean flag)
    {
        int k1 = c.size();
        for (int j1 = 0; j1 < k1; j1++)
        {
            du du1 = (du)c.get(j1);
            if (du1.getGroupId() == i1)
            {
                du1.setEnabled(flag);
            }
        }

    }

    public void setGroupVisible(int i1, boolean flag)
    {
        int k1 = c.size();
        int j1 = 0;
        boolean flag1 = false;
        for (; j1 < k1; j1++)
        {
            du du1 = (du)c.get(j1);
            if (du1.getGroupId() == i1 && du1.b(flag))
            {
                flag1 = true;
            }
        }

        if (flag1)
        {
            b(true);
        }
    }

    public void setQwertyMode(boolean flag)
    {
        n = flag;
        b(false);
    }

    public int size()
    {
        return c.size();
    }

}
