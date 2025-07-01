// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Map;

abstract class dp extends dq
{

    final Context a;
    Map b;
    Map c;

    dp(Context context, Object obj)
    {
        super(obj);
        a = context;
    }

    final MenuItem a(MenuItem menuitem)
    {
        if (menuitem instanceof q)
        {
            q q1 = (q)menuitem;
            if (b == null)
            {
                b = new ab();
            }
            MenuItem menuitem1 = (MenuItem)b.get(menuitem);
            menuitem = menuitem1;
            if (menuitem1 == null)
            {
                menuitem = ea.a(a, q1);
                b.put(q1, menuitem);
            }
            return menuitem;
        } else
        {
            return menuitem;
        }
    }

    final SubMenu a(SubMenu submenu)
    {
label0:
        {
label1:
            {
                if (!(submenu instanceof r))
                {
                    break label0;
                }
                r r1 = (r)submenu;
                if (c == null)
                {
                    c = new ab();
                }
                SubMenu submenu1 = (SubMenu)c.get(r1);
                submenu = submenu1;
                if (submenu1 == null)
                {
                    submenu = a;
                    if (android.os.Build.VERSION.SDK_INT < 14)
                    {
                        break label1;
                    }
                    submenu = new ed(submenu, r1);
                    c.put(r1, submenu);
                }
                return submenu;
            }
            throw new UnsupportedOperationException();
        }
        return submenu;
    }
}
