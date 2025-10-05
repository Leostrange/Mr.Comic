package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: dk  reason: default package */
/* compiled from: SupportMenuInflater */
public final class dk extends MenuInflater {
    /* access modifiers changed from: private */
    public static final Class<?>[] a;
    private static final Class<?>[] b;
    /* access modifiers changed from: private */
    public final Object[] c;
    private final Object[] d = this.c;
    /* access modifiers changed from: private */
    public Context e;
    private Object f;

    /* renamed from: dk$a */
    /* compiled from: SupportMenuInflater */
    static class a implements MenuItem.OnMenuItemClickListener {
        private static final Class<?>[] a = {MenuItem.class};
        private Object b;
        private Method c;

        public a(Object obj, String str) {
            this.b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.c = cls.getMethod(str, a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        public final boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.c.invoke(this.b, new Object[]{menuItem})).booleanValue();
                }
                this.c.invoke(this.b, new Object[]{menuItem});
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: dk$b */
    /* compiled from: SupportMenuInflater */
    class b {
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

        public b(Menu menu) {
            this.a = menu;
            a();
        }

        static char a(String str) {
            if (str == null) {
                return 0;
            }
            return str.charAt(0);
        }

        /* access modifiers changed from: package-private */
        public final <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                return dk.this.e.getClassLoader().loadClass(str).getConstructor(clsArr).newInstance(objArr);
            } catch (Exception e2) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }

        public final void a() {
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = true;
            this.g = true;
        }

        /* access modifiers changed from: package-private */
        public final void a(MenuItem menuItem) {
            boolean z2 = true;
            menuItem.setChecked(this.q).setVisible(this.r).setEnabled(this.s).setCheckable(this.p > 0).setTitleCondensed(this.l).setIcon(this.m).setAlphabeticShortcut(this.n).setNumericShortcut(this.o);
            if (this.t >= 0) {
                aw.a(menuItem, this.t);
            }
            if (this.x != null) {
                if (dk.this.e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(dk.b(dk.this), this.x));
            }
            if (this.p >= 2) {
                if (menuItem instanceof du) {
                    ((du) menuItem).a(true);
                } else if (menuItem instanceof dv) {
                    dv dvVar = (dv) menuItem;
                    try {
                        if (dvVar.e == null) {
                            dvVar.e = ((q) dvVar.d).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[]{Boolean.TYPE});
                        }
                        dvVar.e.invoke(dvVar.d, new Object[]{true});
                    } catch (Exception e2) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
                    }
                }
            }
            if (this.v != null) {
                aw.a(menuItem, (View) a(this.v, dk.a, dk.this.c));
            } else {
                z2 = false;
            }
            if (this.u > 0) {
                if (!z2) {
                    aw.b(menuItem, this.u);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (this.y != null) {
                aw.a(menuItem, this.y);
            }
        }

        public final SubMenu b() {
            this.h = true;
            SubMenu addSubMenu = this.a.addSubMenu(this.b, this.i, this.j, this.k);
            a(addSubMenu.getItem());
            return addSubMenu;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            r0 = 1
            java.lang.Class[] r0 = new java.lang.Class[r0]
            r1 = 0
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            r0[r1] = r2
            a = r0
            b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dk.<clinit>():void");
    }

    public dk(Context context) {
        super(context);
        this.e = context;
        this.c = new Object[]{context};
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(org.xmlpull.v1.XmlPullParser r11, android.util.AttributeSet r12, android.view.Menu r13) {
        /*
            r10 = this;
            dk$b r4 = new dk$b
            r4.<init>(r13)
            int r0 = r11.getEventType()
            r3 = 0
            r2 = 0
        L_0x000b:
            r1 = 2
            if (r0 != r1) goto L_0x0046
            java.lang.String r0 = r11.getName()
            java.lang.String r1 = "menu"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L_0x0031
            int r0 = r11.next()
        L_0x001e:
            r1 = 0
        L_0x001f:
            if (r1 != 0) goto L_0x022f
            switch(r0) {
                case 1: goto L_0x0227;
                case 2: goto L_0x004e;
                case 3: goto L_0x01be;
                default: goto L_0x0024;
            }
        L_0x0024:
            r0 = r1
            r1 = r2
            r2 = r3
        L_0x0027:
            int r3 = r11.next()
            r9 = r0
            r0 = r3
            r3 = r2
            r2 = r1
            r1 = r9
            goto L_0x001f
        L_0x0031:
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Expecting menu, got "
            r2.<init>(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L_0x0046:
            int r0 = r11.next()
            r1 = 1
            if (r0 != r1) goto L_0x000b
            goto L_0x001e
        L_0x004e:
            if (r3 != 0) goto L_0x0024
            java.lang.String r0 = r11.getName()
            java.lang.String r5 = "group"
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L_0x00a3
            dk r0 = defpackage.dk.this
            android.content.Context r0 = r0.e
            int[] r5 = defpackage.cv.k.MenuGroup
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r12, r5)
            int r5 = defpackage.cv.k.MenuGroup_android_id
            r6 = 0
            int r5 = r0.getResourceId(r5, r6)
            r4.b = r5
            int r5 = defpackage.cv.k.MenuGroup_android_menuCategory
            r6 = 0
            int r5 = r0.getInt(r5, r6)
            r4.c = r5
            int r5 = defpackage.cv.k.MenuGroup_android_orderInCategory
            r6 = 0
            int r5 = r0.getInt(r5, r6)
            r4.d = r5
            int r5 = defpackage.cv.k.MenuGroup_android_checkableBehavior
            r6 = 0
            int r5 = r0.getInt(r5, r6)
            r4.e = r5
            int r5 = defpackage.cv.k.MenuGroup_android_visible
            r6 = 1
            boolean r5 = r0.getBoolean(r5, r6)
            r4.f = r5
            int r5 = defpackage.cv.k.MenuGroup_android_enabled
            r6 = 1
            boolean r5 = r0.getBoolean(r5, r6)
            r4.g = r5
            r0.recycle()
            r0 = r1
            r1 = r2
            r2 = r3
            goto L_0x0027
        L_0x00a3:
            java.lang.String r5 = "item"
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L_0x01a4
            dk r0 = defpackage.dk.this
            android.content.Context r0 = r0.e
            int[] r5 = defpackage.cv.k.MenuItem
            android.content.res.TypedArray r5 = r0.obtainStyledAttributes(r12, r5)
            int r0 = defpackage.cv.k.MenuItem_android_id
            r6 = 0
            int r0 = r5.getResourceId(r0, r6)
            r4.i = r0
            int r0 = defpackage.cv.k.MenuItem_android_menuCategory
            int r6 = r4.c
            int r0 = r5.getInt(r0, r6)
            int r6 = defpackage.cv.k.MenuItem_android_orderInCategory
            int r7 = r4.d
            int r6 = r5.getInt(r6, r7)
            r7 = -65536(0xffffffffffff0000, float:NaN)
            r0 = r0 & r7
            r7 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r7
            r0 = r0 | r6
            r4.j = r0
            int r0 = defpackage.cv.k.MenuItem_android_title
            java.lang.CharSequence r0 = r5.getText(r0)
            r4.k = r0
            int r0 = defpackage.cv.k.MenuItem_android_titleCondensed
            java.lang.CharSequence r0 = r5.getText(r0)
            r4.l = r0
            int r0 = defpackage.cv.k.MenuItem_android_icon
            r6 = 0
            int r0 = r5.getResourceId(r0, r6)
            r4.m = r0
            int r0 = defpackage.cv.k.MenuItem_android_alphabeticShortcut
            java.lang.String r0 = r5.getString(r0)
            char r0 = defpackage.dk.b.a((java.lang.String) r0)
            r4.n = r0
            int r0 = defpackage.cv.k.MenuItem_android_numericShortcut
            java.lang.String r0 = r5.getString(r0)
            char r0 = defpackage.dk.b.a((java.lang.String) r0)
            r4.o = r0
            int r0 = defpackage.cv.k.MenuItem_android_checkable
            boolean r0 = r5.hasValue(r0)
            if (r0 == 0) goto L_0x0190
            int r0 = defpackage.cv.k.MenuItem_android_checkable
            r6 = 0
            boolean r0 = r5.getBoolean(r0, r6)
            if (r0 == 0) goto L_0x018e
            r0 = 1
        L_0x011b:
            r4.p = r0
        L_0x011d:
            int r0 = defpackage.cv.k.MenuItem_android_checked
            r6 = 0
            boolean r0 = r5.getBoolean(r0, r6)
            r4.q = r0
            int r0 = defpackage.cv.k.MenuItem_android_visible
            boolean r6 = r4.f
            boolean r0 = r5.getBoolean(r0, r6)
            r4.r = r0
            int r0 = defpackage.cv.k.MenuItem_android_enabled
            boolean r6 = r4.g
            boolean r0 = r5.getBoolean(r0, r6)
            r4.s = r0
            int r0 = defpackage.cv.k.MenuItem_showAsAction
            r6 = -1
            int r0 = r5.getInt(r0, r6)
            r4.t = r0
            int r0 = defpackage.cv.k.MenuItem_android_onClick
            java.lang.String r0 = r5.getString(r0)
            r4.x = r0
            int r0 = defpackage.cv.k.MenuItem_actionLayout
            r6 = 0
            int r0 = r5.getResourceId(r0, r6)
            r4.u = r0
            int r0 = defpackage.cv.k.MenuItem_actionViewClass
            java.lang.String r0 = r5.getString(r0)
            r4.v = r0
            int r0 = defpackage.cv.k.MenuItem_actionProviderClass
            java.lang.String r0 = r5.getString(r0)
            r4.w = r0
            java.lang.String r0 = r4.w
            if (r0 == 0) goto L_0x0195
            r0 = 1
        L_0x0169:
            if (r0 == 0) goto L_0x0197
            int r6 = r4.u
            if (r6 != 0) goto L_0x0197
            java.lang.String r6 = r4.v
            if (r6 != 0) goto L_0x0197
            java.lang.String r0 = r4.w
            java.lang.Class<?>[] r6 = b
            dk r7 = defpackage.dk.this
            java.lang.Object[] r7 = r7.d
            java.lang.Object r0 = r4.a(r0, r6, r7)
            ao r0 = (defpackage.ao) r0
            r4.y = r0
        L_0x0183:
            r5.recycle()
            r0 = 0
            r4.h = r0
            r0 = r1
            r1 = r2
            r2 = r3
            goto L_0x0027
        L_0x018e:
            r0 = 0
            goto L_0x011b
        L_0x0190:
            int r0 = r4.e
            r4.p = r0
            goto L_0x011d
        L_0x0195:
            r0 = 0
            goto L_0x0169
        L_0x0197:
            if (r0 == 0) goto L_0x01a0
            java.lang.String r0 = "SupportMenuInflater"
            java.lang.String r6 = "Ignoring attribute 'actionProviderClass'. Action view already specified."
            android.util.Log.w(r0, r6)
        L_0x01a0:
            r0 = 0
            r4.y = r0
            goto L_0x0183
        L_0x01a4:
            java.lang.String r5 = "menu"
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L_0x01b8
            android.view.SubMenu r0 = r4.b()
            r10.a(r11, r12, r0)
            r0 = r1
            r1 = r2
            r2 = r3
            goto L_0x0027
        L_0x01b8:
            r2 = 1
            r9 = r1
            r1 = r0
            r0 = r9
            goto L_0x0027
        L_0x01be:
            java.lang.String r0 = r11.getName()
            if (r3 == 0) goto L_0x01d1
            boolean r5 = r0.equals(r2)
            if (r5 == 0) goto L_0x01d1
            r2 = 0
            r0 = 0
            r9 = r1
            r1 = r0
            r0 = r9
            goto L_0x0027
        L_0x01d1:
            java.lang.String r5 = "group"
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L_0x01e1
            r4.a()
            r0 = r1
            r1 = r2
            r2 = r3
            goto L_0x0027
        L_0x01e1:
            java.lang.String r5 = "item"
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L_0x021a
            boolean r0 = r4.h
            if (r0 != 0) goto L_0x0024
            ao r0 = r4.y
            if (r0 == 0) goto L_0x0201
            ao r0 = r4.y
            boolean r0 = r0.e()
            if (r0 == 0) goto L_0x0201
            r4.b()
            r0 = r1
            r1 = r2
            r2 = r3
            goto L_0x0027
        L_0x0201:
            r0 = 1
            r4.h = r0
            android.view.Menu r0 = r4.a
            int r5 = r4.b
            int r6 = r4.i
            int r7 = r4.j
            java.lang.CharSequence r8 = r4.k
            android.view.MenuItem r0 = r0.add(r5, r6, r7, r8)
            r4.a((android.view.MenuItem) r0)
            r0 = r1
            r1 = r2
            r2 = r3
            goto L_0x0027
        L_0x021a:
            java.lang.String r5 = "menu"
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L_0x0024
            r0 = 1
            r1 = r2
            r2 = r3
            goto L_0x0027
        L_0x0227:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Unexpected end of document"
            r0.<init>(r1)
            throw r0
        L_0x022f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dk.a(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    static /* synthetic */ Object b(dk dkVar) {
        if (dkVar.f == null) {
            Context context = dkVar.e;
            while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
                context = ((ContextWrapper) context).getBaseContext();
            }
            dkVar.f = context;
        }
        return dkVar.f;
    }

    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof p)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            xmlResourceParser = this.e.getResources().getLayout(i);
            a(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        } catch (XmlPullParserException e2) {
            throw new InflateException("Error inflating menu XML", e2);
        } catch (IOException e3) {
            throw new InflateException("Error inflating menu XML", e3);
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
