// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class eb extends dp
    implements Menu
{

    eb(Context context, p p1)
    {
        super(context, p1);
    }

    public MenuItem add(int i)
    {
        return a(((p)d).add(i));
    }

    public MenuItem add(int i, int j, int k, int l)
    {
        return a(((p)d).add(i, j, k, l));
    }

    public MenuItem add(int i, int j, int k, CharSequence charsequence)
    {
        return a(((p)d).add(i, j, k, charsequence));
    }

    public MenuItem add(CharSequence charsequence)
    {
        return a(((p)d).add(charsequence));
    }

    public int addIntentOptions(int i, int j, int k, ComponentName componentname, Intent aintent[], Intent intent, int l, 
            MenuItem amenuitem[])
    {
        MenuItem amenuitem1[] = null;
        if (amenuitem != null)
        {
            amenuitem1 = new MenuItem[amenuitem.length];
        }
        j = ((p)d).addIntentOptions(i, j, k, componentname, aintent, intent, l, amenuitem1);
        if (amenuitem1 != null)
        {
            i = 0;
            for (k = amenuitem1.length; i < k; i++)
            {
                amenuitem[i] = a(amenuitem1[i]);
            }

        }
        return j;
    }

    public SubMenu addSubMenu(int i)
    {
        return a(((p)d).addSubMenu(i));
    }

    public SubMenu addSubMenu(int i, int j, int k, int l)
    {
        return a(((p)d).addSubMenu(i, j, k, l));
    }

    public SubMenu addSubMenu(int i, int j, int k, CharSequence charsequence)
    {
        return a(((p)d).addSubMenu(i, j, k, charsequence));
    }

    public SubMenu addSubMenu(CharSequence charsequence)
    {
        return a(((p)d).addSubMenu(charsequence));
    }

    public void clear()
    {
        if (super.b != null)
        {
            super.b.clear();
        }
        if (super.c != null)
        {
            super.c.clear();
        }
        ((p)d).clear();
    }

    public void close()
    {
        ((p)d).close();
    }

    public MenuItem findItem(int i)
    {
        return a(((p)d).findItem(i));
    }

    public MenuItem getItem(int i)
    {
        return a(((p)d).getItem(i));
    }

    public boolean hasVisibleItems()
    {
        return ((p)d).hasVisibleItems();
    }

    public boolean isShortcutKey(int i, KeyEvent keyevent)
    {
        return ((p)d).isShortcutKey(i, keyevent);
    }

    public boolean performIdentifierAction(int i, int j)
    {
        return ((p)d).performIdentifierAction(i, j);
    }

    public boolean performShortcut(int i, KeyEvent keyevent, int j)
    {
        return ((p)d).performShortcut(i, keyevent, j);
    }

    public void removeGroup(int i)
    {
        if (super.b != null)
        {
            Iterator iterator = super.b.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                if (i == ((MenuItem)iterator.next()).getGroupId())
                {
                    iterator.remove();
                }
            } while (true);
        }
        ((p)d).removeGroup(i);
    }

    public void removeItem(int i)
    {
label0:
        {
            if (super.b == null)
            {
                break label0;
            }
            Iterator iterator = super.b.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
            } while (i != ((MenuItem)iterator.next()).getItemId());
            iterator.remove();
        }
        ((p)d).removeItem(i);
    }

    public void setGroupCheckable(int i, boolean flag, boolean flag1)
    {
        ((p)d).setGroupCheckable(i, flag, flag1);
    }

    public void setGroupEnabled(int i, boolean flag)
    {
        ((p)d).setGroupEnabled(i, flag);
    }

    public void setGroupVisible(int i, boolean flag)
    {
        ((p)d).setGroupVisible(i, flag);
    }

    public void setQwertyMode(boolean flag)
    {
        ((p)d).setQwertyMode(flag);
    }

    public int size()
    {
        return ((p)d).size();
    }
}
