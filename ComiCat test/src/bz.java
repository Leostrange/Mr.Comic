// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Rect;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

public final class bz
{
    static class a extends g
    {

        public final Object a(int i1, int j1)
        {
            return android.view.accessibility.AccessibilityNodeInfo.CollectionInfo.obtain(i1, j1, false, 0);
        }

        public final Object a(int i1, int j1, int k1, int l1, boolean flag)
        {
            return android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo.obtain(i1, j1, k1, l1, flag, false);
        }

        public final void a(Object obj, View view)
        {
            ((AccessibilityNodeInfo)obj).setLabelFor(view);
        }

        public final void a(Object obj, CharSequence charsequence)
        {
            ((AccessibilityNodeInfo)obj).setError(charsequence);
        }

        a()
        {
        }
    }

    static final class b extends a
    {

        b()
        {
        }
    }

    static class c extends h
    {

        public final Object a(Object obj)
        {
            return AccessibilityNodeInfo.obtain((AccessibilityNodeInfo)obj);
        }

        public final void a(Object obj, int i1)
        {
            ((AccessibilityNodeInfo)obj).addAction(i1);
        }

        public final void a(Object obj, Rect rect)
        {
            ((AccessibilityNodeInfo)obj).getBoundsInParent(rect);
        }

        public final void a(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setClickable(flag);
        }

        public final int b(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).getActions();
        }

        public final void b(Object obj, Rect rect)
        {
            ((AccessibilityNodeInfo)obj).getBoundsInScreen(rect);
        }

        public final void b(Object obj, View view)
        {
            ((AccessibilityNodeInfo)obj).addChild(view);
        }

        public final void b(Object obj, CharSequence charsequence)
        {
            ((AccessibilityNodeInfo)obj).setClassName(charsequence);
        }

        public final void b(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setEnabled(flag);
        }

        public final CharSequence c(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).getClassName();
        }

        public final void c(Object obj, Rect rect)
        {
            ((AccessibilityNodeInfo)obj).setBoundsInParent(rect);
        }

        public final void c(Object obj, View view)
        {
            ((AccessibilityNodeInfo)obj).setParent(view);
        }

        public final void c(Object obj, CharSequence charsequence)
        {
            ((AccessibilityNodeInfo)obj).setContentDescription(charsequence);
        }

        public final void c(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setFocusable(flag);
        }

        public final CharSequence d(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).getContentDescription();
        }

        public final void d(Object obj, Rect rect)
        {
            ((AccessibilityNodeInfo)obj).setBoundsInScreen(rect);
        }

        public final void d(Object obj, View view)
        {
            ((AccessibilityNodeInfo)obj).setSource(view);
        }

        public final void d(Object obj, CharSequence charsequence)
        {
            ((AccessibilityNodeInfo)obj).setPackageName(charsequence);
        }

        public final void d(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setFocused(flag);
        }

        public final CharSequence e(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).getPackageName();
        }

        public final void e(Object obj, CharSequence charsequence)
        {
            ((AccessibilityNodeInfo)obj).setText(charsequence);
        }

        public final void e(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setLongClickable(flag);
        }

        public final CharSequence f(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).getText();
        }

        public final void f(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setScrollable(flag);
        }

        public final void g(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setSelected(flag);
        }

        public final boolean g(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isCheckable();
        }

        public final boolean h(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isChecked();
        }

        public final boolean i(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isClickable();
        }

        public final boolean j(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isEnabled();
        }

        public final boolean k(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isFocusable();
        }

        public final boolean l(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isFocused();
        }

        public final boolean m(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isLongClickable();
        }

        public final boolean n(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isPassword();
        }

        public final boolean o(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isScrollable();
        }

        public final boolean p(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isSelected();
        }

        public final void q(Object obj)
        {
            ((AccessibilityNodeInfo)obj).recycle();
        }

        c()
        {
        }
    }

    public static interface d
    {

        public abstract Object a(int i1, int j1);

        public abstract Object a(int i1, int j1, int k1, int l1, boolean flag);

        public abstract Object a(Object obj);

        public abstract void a(Object obj, int i1);

        public abstract void a(Object obj, Rect rect);

        public abstract void a(Object obj, View view);

        public abstract void a(Object obj, CharSequence charsequence);

        public abstract void a(Object obj, Object obj1);

        public abstract void a(Object obj, boolean flag);

        public abstract int b(Object obj);

        public abstract void b(Object obj, int i1);

        public abstract void b(Object obj, Rect rect);

        public abstract void b(Object obj, View view);

        public abstract void b(Object obj, CharSequence charsequence);

        public abstract void b(Object obj, Object obj1);

        public abstract void b(Object obj, boolean flag);

        public abstract CharSequence c(Object obj);

        public abstract void c(Object obj, Rect rect);

        public abstract void c(Object obj, View view);

        public abstract void c(Object obj, CharSequence charsequence);

        public abstract void c(Object obj, boolean flag);

        public abstract CharSequence d(Object obj);

        public abstract void d(Object obj, Rect rect);

        public abstract void d(Object obj, View view);

        public abstract void d(Object obj, CharSequence charsequence);

        public abstract void d(Object obj, boolean flag);

        public abstract CharSequence e(Object obj);

        public abstract void e(Object obj, CharSequence charsequence);

        public abstract void e(Object obj, boolean flag);

        public abstract CharSequence f(Object obj);

        public abstract void f(Object obj, boolean flag);

        public abstract void g(Object obj, boolean flag);

        public abstract boolean g(Object obj);

        public abstract void h(Object obj, boolean flag);

        public abstract boolean h(Object obj);

        public abstract void i(Object obj, boolean flag);

        public abstract boolean i(Object obj);

        public abstract boolean j(Object obj);

        public abstract boolean k(Object obj);

        public abstract boolean l(Object obj);

        public abstract boolean m(Object obj);

        public abstract boolean n(Object obj);

        public abstract boolean o(Object obj);

        public abstract boolean p(Object obj);

        public abstract void q(Object obj);

        public abstract int r(Object obj);

        public abstract boolean s(Object obj);

        public abstract boolean t(Object obj);

        public abstract String u(Object obj);

        public abstract void v(Object obj);
    }

    static class e extends c
    {

        public final void b(Object obj, int i1)
        {
            ((AccessibilityNodeInfo)obj).setMovementGranularities(i1);
        }

        public final void h(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setVisibleToUser(flag);
        }

        public final void i(Object obj, boolean flag)
        {
            ((AccessibilityNodeInfo)obj).setAccessibilityFocused(flag);
        }

        public final int r(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).getMovementGranularities();
        }

        public final boolean s(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isVisibleToUser();
        }

        public final boolean t(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).isAccessibilityFocused();
        }

        e()
        {
        }
    }

    static class f extends e
    {

        public final String u(Object obj)
        {
            return ((AccessibilityNodeInfo)obj).getViewIdResourceName();
        }

        f()
        {
        }
    }

    static class g extends f
    {

        public Object a(int i1, int j1)
        {
            return android.view.accessibility.AccessibilityNodeInfo.CollectionInfo.obtain(i1, j1, false);
        }

        public Object a(int i1, int j1, int k1, int l1, boolean flag)
        {
            return android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo.obtain(i1, j1, k1, l1, flag);
        }

        public final void a(Object obj, Object obj1)
        {
            ((AccessibilityNodeInfo)obj).setCollectionInfo((android.view.accessibility.AccessibilityNodeInfo.CollectionInfo)obj1);
        }

        public final void b(Object obj, Object obj1)
        {
            ((AccessibilityNodeInfo)obj).setCollectionItemInfo((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo)obj1);
        }

        public final void v(Object obj)
        {
            ((AccessibilityNodeInfo)obj).setContentInvalid(true);
        }

        g()
        {
        }
    }

    static class h
        implements d
    {

        public Object a(int i1, int j1)
        {
            return null;
        }

        public Object a(int i1, int j1, int k1, int l1, boolean flag)
        {
            return null;
        }

        public Object a(Object obj)
        {
            return null;
        }

        public void a(Object obj, int i1)
        {
        }

        public void a(Object obj, Rect rect)
        {
        }

        public void a(Object obj, View view)
        {
        }

        public void a(Object obj, CharSequence charsequence)
        {
        }

        public void a(Object obj, Object obj1)
        {
        }

        public void a(Object obj, boolean flag)
        {
        }

        public int b(Object obj)
        {
            return 0;
        }

        public void b(Object obj, int i1)
        {
        }

        public void b(Object obj, Rect rect)
        {
        }

        public void b(Object obj, View view)
        {
        }

        public void b(Object obj, CharSequence charsequence)
        {
        }

        public void b(Object obj, Object obj1)
        {
        }

        public void b(Object obj, boolean flag)
        {
        }

        public CharSequence c(Object obj)
        {
            return null;
        }

        public void c(Object obj, Rect rect)
        {
        }

        public void c(Object obj, View view)
        {
        }

        public void c(Object obj, CharSequence charsequence)
        {
        }

        public void c(Object obj, boolean flag)
        {
        }

        public CharSequence d(Object obj)
        {
            return null;
        }

        public void d(Object obj, Rect rect)
        {
        }

        public void d(Object obj, View view)
        {
        }

        public void d(Object obj, CharSequence charsequence)
        {
        }

        public void d(Object obj, boolean flag)
        {
        }

        public CharSequence e(Object obj)
        {
            return null;
        }

        public void e(Object obj, CharSequence charsequence)
        {
        }

        public void e(Object obj, boolean flag)
        {
        }

        public CharSequence f(Object obj)
        {
            return null;
        }

        public void f(Object obj, boolean flag)
        {
        }

        public void g(Object obj, boolean flag)
        {
        }

        public boolean g(Object obj)
        {
            return false;
        }

        public void h(Object obj, boolean flag)
        {
        }

        public boolean h(Object obj)
        {
            return false;
        }

        public void i(Object obj, boolean flag)
        {
        }

        public boolean i(Object obj)
        {
            return false;
        }

        public boolean j(Object obj)
        {
            return false;
        }

        public boolean k(Object obj)
        {
            return false;
        }

        public boolean l(Object obj)
        {
            return false;
        }

        public boolean m(Object obj)
        {
            return false;
        }

        public boolean n(Object obj)
        {
            return false;
        }

        public boolean o(Object obj)
        {
            return false;
        }

        public boolean p(Object obj)
        {
            return false;
        }

        public void q(Object obj)
        {
        }

        public int r(Object obj)
        {
            return 0;
        }

        public boolean s(Object obj)
        {
            return false;
        }

        public boolean t(Object obj)
        {
            return false;
        }

        public String u(Object obj)
        {
            return null;
        }

        public void v(Object obj)
        {
        }

        h()
        {
        }
    }

    public static final class i
    {

        public final Object a;

        public i(Object obj)
        {
            a = obj;
        }
    }

    public static final class j
    {

        final Object a;

        public static j a(int i1, int j1, int k1, int l1, boolean flag)
        {
            return new j(bz.n().a(i1, j1, k1, l1, flag));
        }

        private j(Object obj)
        {
            a = obj;
        }
    }


    public static final d a;
    public final Object b;

    public bz(Object obj)
    {
        b = obj;
    }

    public static bz a(bz bz1)
    {
        bz1 = ((bz) (a.a(bz1.b)));
        if (bz1 != null)
        {
            return new bz(bz1);
        } else
        {
            return null;
        }
    }

    public static d n()
    {
        return a;
    }

    public final int a()
    {
        return a.b(b);
    }

    public final void a(int i1)
    {
        a.a(b, i1);
    }

    public final void a(Rect rect)
    {
        a.a(b, rect);
    }

    public final void a(View view)
    {
        a.d(b, view);
    }

    public final void a(CharSequence charsequence)
    {
        a.d(b, charsequence);
    }

    public final void a(Object obj)
    {
        a.b(b, ((j)obj).a);
    }

    public final void a(boolean flag)
    {
        a.c(b, flag);
    }

    public final void b(Rect rect)
    {
        a.c(b, rect);
    }

    public final void b(View view)
    {
        a.b(b, view);
    }

    public final void b(CharSequence charsequence)
    {
        a.b(b, charsequence);
    }

    public final void b(boolean flag)
    {
        a.d(b, flag);
    }

    public final boolean b()
    {
        return a.k(b);
    }

    public final void c(Rect rect)
    {
        a.b(b, rect);
    }

    public final void c(View view)
    {
        a.c(b, view);
    }

    public final void c(CharSequence charsequence)
    {
        a.c(b, charsequence);
    }

    public final void c(boolean flag)
    {
        a.h(b, flag);
    }

    public final boolean c()
    {
        return a.l(b);
    }

    public final void d(Rect rect)
    {
        a.d(b, rect);
    }

    public final void d(boolean flag)
    {
        a.i(b, flag);
    }

    public final boolean d()
    {
        return a.s(b);
    }

    public final void e(boolean flag)
    {
        a.g(b, flag);
    }

    public final boolean e()
    {
        return a.t(b);
    }

    public final boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        obj = (bz)obj;
        if (b != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((bz) (obj)).b == null) goto _L1; else goto _L3
_L3:
        return false;
        if (b.equals(((bz) (obj)).b)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public final void f(boolean flag)
    {
        a.a(b, flag);
    }

    public final boolean f()
    {
        return a.p(b);
    }

    public final void g(boolean flag)
    {
        a.e(b, flag);
    }

    public final boolean g()
    {
        return a.i(b);
    }

    public final void h(boolean flag)
    {
        a.b(b, flag);
    }

    public final boolean h()
    {
        return a.m(b);
    }

    public final int hashCode()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.hashCode();
        }
    }

    public final void i(boolean flag)
    {
        a.f(b, flag);
    }

    public final boolean i()
    {
        return a.j(b);
    }

    public final CharSequence j()
    {
        return a.e(b);
    }

    public final CharSequence k()
    {
        return a.c(b);
    }

    public final CharSequence l()
    {
        return a.d(b);
    }

    public final void m()
    {
        a.q(b);
    }

    public final String toString()
    {
        StringBuilder stringbuilder;
        int i1;
        stringbuilder = new StringBuilder();
        stringbuilder.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        stringbuilder.append((new StringBuilder("; boundsInParent: ")).append(rect).toString());
        c(rect);
        stringbuilder.append((new StringBuilder("; boundsInScreen: ")).append(rect).toString());
        stringbuilder.append("; packageName: ").append(j());
        stringbuilder.append("; className: ").append(k());
        stringbuilder.append("; text: ").append(a.f(b));
        stringbuilder.append("; contentDescription: ").append(l());
        stringbuilder.append("; viewId: ").append(a.u(b));
        stringbuilder.append("; checkable: ").append(a.g(b));
        stringbuilder.append("; checked: ").append(a.h(b));
        stringbuilder.append("; focusable: ").append(b());
        stringbuilder.append("; focused: ").append(c());
        stringbuilder.append("; selected: ").append(f());
        stringbuilder.append("; clickable: ").append(g());
        stringbuilder.append("; longClickable: ").append(h());
        stringbuilder.append("; enabled: ").append(i());
        stringbuilder.append("; password: ").append(a.n(b));
        stringbuilder.append((new StringBuilder("; scrollable: ")).append(a.o(b)).toString());
        stringbuilder.append("; [");
        i1 = a();
_L24:
        if (i1 == 0) goto _L2; else goto _L1
_L1:
        int j1;
        j1 = 1 << Integer.numberOfTrailingZeros(i1);
        i1 = ~j1 & i1;
        j1;
        JVM INSTR lookupswitch 18: default 536
    //                   1: 561
    //                   2: 568
    //                   4: 575
    //                   8: 582
    //                   16: 589
    //                   32: 596
    //                   64: 603
    //                   128: 610
    //                   256: 617
    //                   512: 624
    //                   1024: 631
    //                   2048: 638
    //                   4096: 645
    //                   8192: 652
    //                   16384: 666
    //                   32768: 673
    //                   65536: 659
    //                   131072: 680;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21
_L3:
        String s = "ACTION_UNKNOWN";
_L22:
        stringbuilder.append(s);
        if (i1 != 0)
        {
            stringbuilder.append(", ");
        }
        continue; /* Loop/switch isn't completed */
_L4:
        s = "ACTION_FOCUS";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "ACTION_CLEAR_FOCUS";
        continue; /* Loop/switch isn't completed */
_L6:
        s = "ACTION_SELECT";
        continue; /* Loop/switch isn't completed */
_L7:
        s = "ACTION_CLEAR_SELECTION";
        continue; /* Loop/switch isn't completed */
_L8:
        s = "ACTION_CLICK";
        continue; /* Loop/switch isn't completed */
_L9:
        s = "ACTION_LONG_CLICK";
        continue; /* Loop/switch isn't completed */
_L10:
        s = "ACTION_ACCESSIBILITY_FOCUS";
        continue; /* Loop/switch isn't completed */
_L11:
        s = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        continue; /* Loop/switch isn't completed */
_L12:
        s = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        continue; /* Loop/switch isn't completed */
_L13:
        s = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        continue; /* Loop/switch isn't completed */
_L14:
        s = "ACTION_NEXT_HTML_ELEMENT";
        continue; /* Loop/switch isn't completed */
_L15:
        s = "ACTION_PREVIOUS_HTML_ELEMENT";
        continue; /* Loop/switch isn't completed */
_L16:
        s = "ACTION_SCROLL_FORWARD";
        continue; /* Loop/switch isn't completed */
_L17:
        s = "ACTION_SCROLL_BACKWARD";
        continue; /* Loop/switch isn't completed */
_L20:
        s = "ACTION_CUT";
        continue; /* Loop/switch isn't completed */
_L18:
        s = "ACTION_COPY";
        continue; /* Loop/switch isn't completed */
_L19:
        s = "ACTION_PASTE";
        continue; /* Loop/switch isn't completed */
_L21:
        s = "ACTION_SET_SELECTION";
        if (true) goto _L22; else goto _L2
_L2:
        stringbuilder.append("]");
        return stringbuilder.toString();
        if (true) goto _L24; else goto _L23
_L23:
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 22)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new a();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new g();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            a = new f();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new e();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new c();
        } else
        {
            a = new h();
        }
    }
}
