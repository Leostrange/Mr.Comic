// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class dk extends MenuInflater
{
    static final class a
        implements android.view.MenuItem.OnMenuItemClickListener
    {

        private static final Class a[] = {
            android/view/MenuItem
        };
        private Object b;
        private Method c;

        public final boolean onMenuItemClick(MenuItem menuitem)
        {
            try
            {
                if (c.getReturnType() == Boolean.TYPE)
                {
                    return ((Boolean)c.invoke(b, new Object[] {
                        menuitem
                    })).booleanValue();
                }
                c.invoke(b, new Object[] {
                    menuitem
                });
            }
            // Misplaced declaration of an exception variable
            catch (MenuItem menuitem)
            {
                throw new RuntimeException(menuitem);
            }
            return true;
        }


        public a(Object obj, String s)
        {
            b = obj;
            Class class1 = obj.getClass();
            try
            {
                c = class1.getMethod(s, a);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                s = new InflateException((new StringBuilder("Couldn't resolve menu item onClick handler ")).append(s).append(" in class ").append(class1.getName()).toString());
            }
            s.initCause(((Throwable) (obj)));
            throw s;
        }
    }

    final class b
    {

        Menu a;
        int b;
        int c;
        int d;
        int e;
        boolean f;
        boolean g;
        boolean h;
        int i;
        int j;
        CharSequence k;
        CharSequence l;
        int m;
        char n;
        char o;
        int p;
        boolean q;
        boolean r;
        boolean s;
        int t;
        int u;
        String v;
        String w;
        String x;
        ao y;
        final dk z;

        static char a(String s1)
        {
            if (s1 == null)
            {
                return '\0';
            } else
            {
                return s1.charAt(0);
            }
        }

        final Object a(String s1, Class aclass[], Object aobj[])
        {
            try
            {
                aclass = ((Class []) (dk.a(z).getClassLoader().loadClass(s1).getConstructor(aclass).newInstance(aobj)));
            }
            // Misplaced declaration of an exception variable
            catch (Class aclass[])
            {
                Log.w("SupportMenuInflater", (new StringBuilder("Cannot instantiate class: ")).append(s1).toString(), aclass);
                return null;
            }
            return aclass;
        }

        public final void a()
        {
            b = 0;
            c = 0;
            d = 0;
            e = 0;
            f = true;
            g = true;
        }

        final void a(MenuItem menuitem)
        {
            boolean flag = true;
            MenuItem menuitem1 = menuitem.setChecked(q).setVisible(r).setEnabled(s);
            boolean flag1;
            if (p > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            menuitem1.setCheckable(flag1).setTitleCondensed(l).setIcon(m).setAlphabeticShortcut(n).setNumericShortcut(o);
            if (t >= 0)
            {
                aw.a(menuitem, t);
            }
            if (x != null)
            {
                if (dk.a(z).isRestricted())
                {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuitem.setOnMenuItemClickListener(new a(dk.b(z), x));
            }
            if (p >= 2)
            {
                if (menuitem instanceof du)
                {
                    ((du)menuitem).a(true);
                } else
                if (menuitem instanceof dv)
                {
                    dv dv1 = (dv)menuitem;
                    try
                    {
                        if (dv1.e == null)
                        {
                            dv1.e = ((q)dv1.d).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] {
                                Boolean.TYPE
                            });
                        }
                        dv1.e.invoke(dv1.d, new Object[] {
                            Boolean.valueOf(true)
                        });
                    }
                    catch (Exception exception)
                    {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", exception);
                    }
                }
            }
            if (v != null)
            {
                aw.a(menuitem, (View)a(v, dk.a(), dk.c(z)));
            } else
            {
                flag = false;
            }
            if (u > 0)
            {
                if (!flag)
                {
                    aw.b(menuitem, u);
                } else
                {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (y != null)
            {
                aw.a(menuitem, y);
            }
        }

        public final SubMenu b()
        {
            h = true;
            SubMenu submenu = a.addSubMenu(b, i, j, k);
            a(submenu.getItem());
            return submenu;
        }

        public b(Menu menu)
        {
            z = dk.this;
            super();
            a = menu;
            a();
        }
    }


    private static final Class a[];
    private static final Class b[];
    private final Object c[];
    private final Object d[];
    private Context e;
    private Object f;

    public dk(Context context)
    {
        super(context);
        e = context;
        c = (new Object[] {
            context
        });
        d = c;
    }

    static Context a(dk dk1)
    {
        return dk1.e;
    }

    private void a(XmlPullParser xmlpullparser, AttributeSet attributeset, Menu menu)
    {
        b b1;
        int i;
        boolean flag;
        b1 = new b(menu);
        i = xmlpullparser.getEventType();
        flag = false;
        menu = null;
_L8:
        if (i != 2) goto _L2; else goto _L1
_L1:
        String s = xmlpullparser.getName();
        if (!s.equals("menu")) goto _L4; else goto _L3
_L3:
        int j = xmlpullparser.next();
_L7:
        i = 0;
_L6:
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_904;
        }
        switch (j)
        {
        default:
            break;

        case 1: // '\001'
            break MISSING_BLOCK_LABEL_893;

        case 2: // '\002'
            break; /* Loop/switch isn't completed */

        case 3: // '\003'
            break;
        }
        break MISSING_BLOCK_LABEL_739;
_L9:
        j = xmlpullparser.next();
        if (true) goto _L6; else goto _L5
_L4:
        throw new RuntimeException((new StringBuilder("Expecting menu, got ")).append(s).toString());
_L2:
        j = xmlpullparser.next();
        i = j;
        if (j != 1) goto _L8; else goto _L7
_L5:
        if (!flag)
        {
            Object obj = xmlpullparser.getName();
            if (((String) (obj)).equals("group"))
            {
                obj = b1.z.e.obtainStyledAttributes(attributeset, cv.k.MenuGroup);
                b1.b = ((TypedArray) (obj)).getResourceId(cv.k.MenuGroup_android_id, 0);
                b1.c = ((TypedArray) (obj)).getInt(cv.k.MenuGroup_android_menuCategory, 0);
                b1.d = ((TypedArray) (obj)).getInt(cv.k.MenuGroup_android_orderInCategory, 0);
                b1.e = ((TypedArray) (obj)).getInt(cv.k.MenuGroup_android_checkableBehavior, 0);
                b1.f = ((TypedArray) (obj)).getBoolean(cv.k.MenuGroup_android_visible, true);
                b1.g = ((TypedArray) (obj)).getBoolean(cv.k.MenuGroup_android_enabled, true);
                ((TypedArray) (obj)).recycle();
            } else
            if (((String) (obj)).equals("item"))
            {
                obj = b1.z.e.obtainStyledAttributes(attributeset, cv.k.MenuItem);
                b1.i = ((TypedArray) (obj)).getResourceId(cv.k.MenuItem_android_id, 0);
                b1.j = ((TypedArray) (obj)).getInt(cv.k.MenuItem_android_menuCategory, b1.c) & 0xffff0000 | ((TypedArray) (obj)).getInt(cv.k.MenuItem_android_orderInCategory, b1.d) & 0xffff;
                b1.k = ((TypedArray) (obj)).getText(cv.k.MenuItem_android_title);
                b1.l = ((TypedArray) (obj)).getText(cv.k.MenuItem_android_titleCondensed);
                b1.m = ((TypedArray) (obj)).getResourceId(cv.k.MenuItem_android_icon, 0);
                b1.n = b.a(((TypedArray) (obj)).getString(cv.k.MenuItem_android_alphabeticShortcut));
                b1.o = b.a(((TypedArray) (obj)).getString(cv.k.MenuItem_android_numericShortcut));
                int k;
                if (((TypedArray) (obj)).hasValue(cv.k.MenuItem_android_checkable))
                {
                    if (((TypedArray) (obj)).getBoolean(cv.k.MenuItem_android_checkable, false))
                    {
                        k = 1;
                    } else
                    {
                        k = 0;
                    }
                    b1.p = k;
                } else
                {
                    b1.p = b1.e;
                }
                b1.q = ((TypedArray) (obj)).getBoolean(cv.k.MenuItem_android_checked, false);
                b1.r = ((TypedArray) (obj)).getBoolean(cv.k.MenuItem_android_visible, b1.f);
                b1.s = ((TypedArray) (obj)).getBoolean(cv.k.MenuItem_android_enabled, b1.g);
                b1.t = ((TypedArray) (obj)).getInt(cv.k.MenuItem_showAsAction, -1);
                b1.x = ((TypedArray) (obj)).getString(cv.k.MenuItem_android_onClick);
                b1.u = ((TypedArray) (obj)).getResourceId(cv.k.MenuItem_actionLayout, 0);
                b1.v = ((TypedArray) (obj)).getString(cv.k.MenuItem_actionViewClass);
                b1.w = ((TypedArray) (obj)).getString(cv.k.MenuItem_actionProviderClass);
                if (b1.w != null)
                {
                    k = 1;
                } else
                {
                    k = 0;
                }
                if (k != 0 && b1.u == 0 && b1.v == null)
                {
                    b1.y = (ao)b1.a(b1.w, b, b1.z.d);
                } else
                {
                    if (k != 0)
                    {
                        Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                    }
                    b1.y = null;
                }
                ((TypedArray) (obj)).recycle();
                b1.h = false;
            } else
            if (((String) (obj)).equals("menu"))
            {
                a(xmlpullparser, attributeset, ((Menu) (b1.b())));
            } else
            {
                flag = true;
                menu = ((Menu) (obj));
            }
        }
          goto _L9
        String s1 = xmlpullparser.getName();
        if (flag && s1.equals(menu))
        {
            flag = false;
            menu = null;
        } else
        if (s1.equals("group"))
        {
            b1.a();
        } else
        if (s1.equals("item"))
        {
            if (!b1.h)
            {
                if (b1.y != null && b1.y.e())
                {
                    b1.b();
                } else
                {
                    b1.h = true;
                    b1.a(b1.a.add(b1.b, b1.i, b1.j, b1.k));
                }
            }
        } else
        if (s1.equals("menu"))
        {
            i = 1;
        }
          goto _L9
        throw new RuntimeException("Unexpected end of document");
    }

    static Class[] a()
    {
        return a;
    }

    static Object b(dk dk1)
    {
        if (dk1.f == null)
        {
            Context context;
            for (context = dk1.e; !(context instanceof Activity) && (context instanceof ContextWrapper); context = ((ContextWrapper)context).getBaseContext()) { }
            dk1.f = context;
        }
        return dk1.f;
    }

    static Object[] c(dk dk1)
    {
        return dk1.c;
    }

    public final void inflate(int i, Menu menu)
    {
        if (menu instanceof p) goto _L2; else goto _L1
_L1:
        super.inflate(i, menu);
_L4:
        return;
_L2:
        XmlResourceParser xmlresourceparser;
        XmlResourceParser xmlresourceparser1;
        XmlResourceParser xmlresourceparser2;
        xmlresourceparser = null;
        xmlresourceparser2 = null;
        xmlresourceparser1 = null;
        XmlResourceParser xmlresourceparser3 = e.getResources().getLayout(i);
        xmlresourceparser1 = xmlresourceparser3;
        xmlresourceparser = xmlresourceparser3;
        xmlresourceparser2 = xmlresourceparser3;
        a(xmlresourceparser3, Xml.asAttributeSet(xmlresourceparser3), menu);
        if (xmlresourceparser3 != null)
        {
            xmlresourceparser3.close();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        menu;
        xmlresourceparser = xmlresourceparser1;
        throw new InflateException("Error inflating menu XML", menu);
        menu;
        if (xmlresourceparser != null)
        {
            xmlresourceparser.close();
        }
        throw menu;
        menu;
        xmlresourceparser = xmlresourceparser2;
        throw new InflateException("Error inflating menu XML", menu);
    }

    static 
    {
        Class aclass[] = new Class[1];
        aclass[0] = android/content/Context;
        a = aclass;
        b = aclass;
    }
}
