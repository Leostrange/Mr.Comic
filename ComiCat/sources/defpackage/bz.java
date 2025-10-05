package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

/* renamed from: bz  reason: default package */
/* compiled from: AccessibilityNodeInfoCompat */
public final class bz {
    public static final d a;
    public final Object b;

    /* renamed from: bz$a */
    /* compiled from: AccessibilityNodeInfoCompat */
    static class a extends g {
        a() {
        }

        public final Object a(int i, int i2) {
            return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false, 0);
        }

        public final Object a(int i, int i2, int i3, int i4, boolean z) {
            return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, false);
        }

        public final void a(Object obj, View view) {
            ((AccessibilityNodeInfo) obj).setLabelFor(view);
        }

        public final void a(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setError(charSequence);
        }
    }

    /* renamed from: bz$b */
    /* compiled from: AccessibilityNodeInfoCompat */
    static class b extends a {
        b() {
        }
    }

    /* renamed from: bz$c */
    /* compiled from: AccessibilityNodeInfoCompat */
    static class c extends h {
        c() {
        }

        public final Object a(Object obj) {
            return AccessibilityNodeInfo.obtain((AccessibilityNodeInfo) obj);
        }

        public final void a(Object obj, int i) {
            ((AccessibilityNodeInfo) obj).addAction(i);
        }

        public final void a(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).getBoundsInParent(rect);
        }

        public final void a(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setClickable(z);
        }

        public final int b(Object obj) {
            return ((AccessibilityNodeInfo) obj).getActions();
        }

        public final void b(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).getBoundsInScreen(rect);
        }

        public final void b(Object obj, View view) {
            ((AccessibilityNodeInfo) obj).addChild(view);
        }

        public final void b(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setClassName(charSequence);
        }

        public final void b(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setEnabled(z);
        }

        public final CharSequence c(Object obj) {
            return ((AccessibilityNodeInfo) obj).getClassName();
        }

        public final void c(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).setBoundsInParent(rect);
        }

        public final void c(Object obj, View view) {
            ((AccessibilityNodeInfo) obj).setParent(view);
        }

        public final void c(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setContentDescription(charSequence);
        }

        public final void c(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setFocusable(z);
        }

        public final CharSequence d(Object obj) {
            return ((AccessibilityNodeInfo) obj).getContentDescription();
        }

        public final void d(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).setBoundsInScreen(rect);
        }

        public final void d(Object obj, View view) {
            ((AccessibilityNodeInfo) obj).setSource(view);
        }

        public final void d(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setPackageName(charSequence);
        }

        public final void d(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setFocused(z);
        }

        public final CharSequence e(Object obj) {
            return ((AccessibilityNodeInfo) obj).getPackageName();
        }

        public final void e(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setText(charSequence);
        }

        public final void e(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setLongClickable(z);
        }

        public final CharSequence f(Object obj) {
            return ((AccessibilityNodeInfo) obj).getText();
        }

        public final void f(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setScrollable(z);
        }

        public final void g(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setSelected(z);
        }

        public final boolean g(Object obj) {
            return ((AccessibilityNodeInfo) obj).isCheckable();
        }

        public final boolean h(Object obj) {
            return ((AccessibilityNodeInfo) obj).isChecked();
        }

        public final boolean i(Object obj) {
            return ((AccessibilityNodeInfo) obj).isClickable();
        }

        public final boolean j(Object obj) {
            return ((AccessibilityNodeInfo) obj).isEnabled();
        }

        public final boolean k(Object obj) {
            return ((AccessibilityNodeInfo) obj).isFocusable();
        }

        public final boolean l(Object obj) {
            return ((AccessibilityNodeInfo) obj).isFocused();
        }

        public final boolean m(Object obj) {
            return ((AccessibilityNodeInfo) obj).isLongClickable();
        }

        public final boolean n(Object obj) {
            return ((AccessibilityNodeInfo) obj).isPassword();
        }

        public final boolean o(Object obj) {
            return ((AccessibilityNodeInfo) obj).isScrollable();
        }

        public final boolean p(Object obj) {
            return ((AccessibilityNodeInfo) obj).isSelected();
        }

        public final void q(Object obj) {
            ((AccessibilityNodeInfo) obj).recycle();
        }
    }

    /* renamed from: bz$d */
    /* compiled from: AccessibilityNodeInfoCompat */
    public interface d {
        Object a(int i, int i2);

        Object a(int i, int i2, int i3, int i4, boolean z);

        Object a(Object obj);

        void a(Object obj, int i);

        void a(Object obj, Rect rect);

        void a(Object obj, View view);

        void a(Object obj, CharSequence charSequence);

        void a(Object obj, Object obj2);

        void a(Object obj, boolean z);

        int b(Object obj);

        void b(Object obj, int i);

        void b(Object obj, Rect rect);

        void b(Object obj, View view);

        void b(Object obj, CharSequence charSequence);

        void b(Object obj, Object obj2);

        void b(Object obj, boolean z);

        CharSequence c(Object obj);

        void c(Object obj, Rect rect);

        void c(Object obj, View view);

        void c(Object obj, CharSequence charSequence);

        void c(Object obj, boolean z);

        CharSequence d(Object obj);

        void d(Object obj, Rect rect);

        void d(Object obj, View view);

        void d(Object obj, CharSequence charSequence);

        void d(Object obj, boolean z);

        CharSequence e(Object obj);

        void e(Object obj, CharSequence charSequence);

        void e(Object obj, boolean z);

        CharSequence f(Object obj);

        void f(Object obj, boolean z);

        void g(Object obj, boolean z);

        boolean g(Object obj);

        void h(Object obj, boolean z);

        boolean h(Object obj);

        void i(Object obj, boolean z);

        boolean i(Object obj);

        boolean j(Object obj);

        boolean k(Object obj);

        boolean l(Object obj);

        boolean m(Object obj);

        boolean n(Object obj);

        boolean o(Object obj);

        boolean p(Object obj);

        void q(Object obj);

        int r(Object obj);

        boolean s(Object obj);

        boolean t(Object obj);

        String u(Object obj);

        void v(Object obj);
    }

    /* renamed from: bz$e */
    /* compiled from: AccessibilityNodeInfoCompat */
    static class e extends c {
        e() {
        }

        public final void b(Object obj, int i) {
            ((AccessibilityNodeInfo) obj).setMovementGranularities(i);
        }

        public final void h(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setVisibleToUser(z);
        }

        public final void i(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setAccessibilityFocused(z);
        }

        public final int r(Object obj) {
            return ((AccessibilityNodeInfo) obj).getMovementGranularities();
        }

        public final boolean s(Object obj) {
            return ((AccessibilityNodeInfo) obj).isVisibleToUser();
        }

        public final boolean t(Object obj) {
            return ((AccessibilityNodeInfo) obj).isAccessibilityFocused();
        }
    }

    /* renamed from: bz$f */
    /* compiled from: AccessibilityNodeInfoCompat */
    static class f extends e {
        f() {
        }

        public final String u(Object obj) {
            return ((AccessibilityNodeInfo) obj).getViewIdResourceName();
        }
    }

    /* renamed from: bz$g */
    /* compiled from: AccessibilityNodeInfoCompat */
    static class g extends f {
        g() {
        }

        public Object a(int i, int i2) {
            return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false);
        }

        public Object a(int i, int i2, int i3, int i4, boolean z) {
            return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z);
        }

        public final void a(Object obj, Object obj2) {
            ((AccessibilityNodeInfo) obj).setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) obj2);
        }

        public final void b(Object obj, Object obj2) {
            ((AccessibilityNodeInfo) obj).setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) obj2);
        }

        public final void v(Object obj) {
            ((AccessibilityNodeInfo) obj).setContentInvalid(true);
        }
    }

    /* renamed from: bz$h */
    /* compiled from: AccessibilityNodeInfoCompat */
    static class h implements d {
        h() {
        }

        public Object a(int i, int i2) {
            return null;
        }

        public Object a(int i, int i2, int i3, int i4, boolean z) {
            return null;
        }

        public Object a(Object obj) {
            return null;
        }

        public void a(Object obj, int i) {
        }

        public void a(Object obj, Rect rect) {
        }

        public void a(Object obj, View view) {
        }

        public void a(Object obj, CharSequence charSequence) {
        }

        public void a(Object obj, Object obj2) {
        }

        public void a(Object obj, boolean z) {
        }

        public int b(Object obj) {
            return 0;
        }

        public void b(Object obj, int i) {
        }

        public void b(Object obj, Rect rect) {
        }

        public void b(Object obj, View view) {
        }

        public void b(Object obj, CharSequence charSequence) {
        }

        public void b(Object obj, Object obj2) {
        }

        public void b(Object obj, boolean z) {
        }

        public CharSequence c(Object obj) {
            return null;
        }

        public void c(Object obj, Rect rect) {
        }

        public void c(Object obj, View view) {
        }

        public void c(Object obj, CharSequence charSequence) {
        }

        public void c(Object obj, boolean z) {
        }

        public CharSequence d(Object obj) {
            return null;
        }

        public void d(Object obj, Rect rect) {
        }

        public void d(Object obj, View view) {
        }

        public void d(Object obj, CharSequence charSequence) {
        }

        public void d(Object obj, boolean z) {
        }

        public CharSequence e(Object obj) {
            return null;
        }

        public void e(Object obj, CharSequence charSequence) {
        }

        public void e(Object obj, boolean z) {
        }

        public CharSequence f(Object obj) {
            return null;
        }

        public void f(Object obj, boolean z) {
        }

        public void g(Object obj, boolean z) {
        }

        public boolean g(Object obj) {
            return false;
        }

        public void h(Object obj, boolean z) {
        }

        public boolean h(Object obj) {
            return false;
        }

        public void i(Object obj, boolean z) {
        }

        public boolean i(Object obj) {
            return false;
        }

        public boolean j(Object obj) {
            return false;
        }

        public boolean k(Object obj) {
            return false;
        }

        public boolean l(Object obj) {
            return false;
        }

        public boolean m(Object obj) {
            return false;
        }

        public boolean n(Object obj) {
            return false;
        }

        public boolean o(Object obj) {
            return false;
        }

        public boolean p(Object obj) {
            return false;
        }

        public void q(Object obj) {
        }

        public int r(Object obj) {
            return 0;
        }

        public boolean s(Object obj) {
            return false;
        }

        public boolean t(Object obj) {
            return false;
        }

        public String u(Object obj) {
            return null;
        }

        public void v(Object obj) {
        }
    }

    /* renamed from: bz$i */
    /* compiled from: AccessibilityNodeInfoCompat */
    public static class i {
        public final Object a;

        public i(Object obj) {
            this.a = obj;
        }
    }

    /* renamed from: bz$j */
    /* compiled from: AccessibilityNodeInfoCompat */
    public static class j {
        final Object a;

        private j(Object obj) {
            this.a = obj;
        }

        public static j a(int i, int i2, int i3, int i4, boolean z) {
            return new j(bz.a.a(i, i2, i3, i4, z));
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            a = new b();
        } else if (Build.VERSION.SDK_INT >= 21) {
            a = new a();
        } else if (Build.VERSION.SDK_INT >= 19) {
            a = new g();
        } else if (Build.VERSION.SDK_INT >= 18) {
            a = new f();
        } else if (Build.VERSION.SDK_INT >= 16) {
            a = new e();
        } else if (Build.VERSION.SDK_INT >= 14) {
            a = new c();
        } else {
            a = new h();
        }
    }

    public bz(Object obj) {
        this.b = obj;
    }

    public static bz a(bz bzVar) {
        Object a2 = a.a(bzVar.b);
        if (a2 != null) {
            return new bz(a2);
        }
        return null;
    }

    public final int a() {
        return a.b(this.b);
    }

    public final void a(int i2) {
        a.a(this.b, i2);
    }

    public final void a(Rect rect) {
        a.a(this.b, rect);
    }

    public final void a(View view) {
        a.d(this.b, view);
    }

    public final void a(CharSequence charSequence) {
        a.d(this.b, charSequence);
    }

    public final void a(Object obj) {
        a.b(this.b, ((j) obj).a);
    }

    public final void a(boolean z) {
        a.c(this.b, z);
    }

    public final void b(Rect rect) {
        a.c(this.b, rect);
    }

    public final void b(View view) {
        a.b(this.b, view);
    }

    public final void b(CharSequence charSequence) {
        a.b(this.b, charSequence);
    }

    public final void b(boolean z) {
        a.d(this.b, z);
    }

    public final boolean b() {
        return a.k(this.b);
    }

    public final void c(Rect rect) {
        a.b(this.b, rect);
    }

    public final void c(View view) {
        a.c(this.b, view);
    }

    public final void c(CharSequence charSequence) {
        a.c(this.b, charSequence);
    }

    public final void c(boolean z) {
        a.h(this.b, z);
    }

    public final boolean c() {
        return a.l(this.b);
    }

    public final void d(Rect rect) {
        a.d(this.b, rect);
    }

    public final void d(boolean z) {
        a.i(this.b, z);
    }

    public final boolean d() {
        return a.s(this.b);
    }

    public final void e(boolean z) {
        a.g(this.b, z);
    }

    public final boolean e() {
        return a.t(this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        bz bzVar = (bz) obj;
        return this.b == null ? bzVar.b == null : this.b.equals(bzVar.b);
    }

    public final void f(boolean z) {
        a.a(this.b, z);
    }

    public final boolean f() {
        return a.p(this.b);
    }

    public final void g(boolean z) {
        a.e(this.b, z);
    }

    public final boolean g() {
        return a.i(this.b);
    }

    public final void h(boolean z) {
        a.b(this.b, z);
    }

    public final boolean h() {
        return a.m(this.b);
    }

    public final int hashCode() {
        if (this.b == null) {
            return 0;
        }
        return this.b.hashCode();
    }

    public final void i(boolean z) {
        a.f(this.b, z);
    }

    public final boolean i() {
        return a.j(this.b);
    }

    public final CharSequence j() {
        return a.e(this.b);
    }

    public final CharSequence k() {
        return a.c(this.b);
    }

    public final CharSequence l() {
        return a.d(this.b);
    }

    public final void m() {
        a.q(this.b);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        c(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(j());
        sb.append("; className: ").append(k());
        sb.append("; text: ").append(a.f(this.b));
        sb.append("; contentDescription: ").append(l());
        sb.append("; viewId: ").append(a.u(this.b));
        sb.append("; checkable: ").append(a.g(this.b));
        sb.append("; checked: ").append(a.h(this.b));
        sb.append("; focusable: ").append(b());
        sb.append("; focused: ").append(c());
        sb.append("; selected: ").append(f());
        sb.append("; clickable: ").append(g());
        sb.append("; longClickable: ").append(h());
        sb.append("; enabled: ").append(i());
        sb.append("; password: ").append(a.n(this.b));
        sb.append("; scrollable: " + a.o(this.b));
        sb.append("; [");
        int a2 = a();
        while (a2 != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(a2);
            int i2 = (numberOfTrailingZeros ^ -1) & a2;
            switch (numberOfTrailingZeros) {
                case 1:
                    str = "ACTION_FOCUS";
                    break;
                case 2:
                    str = "ACTION_CLEAR_FOCUS";
                    break;
                case 4:
                    str = "ACTION_SELECT";
                    break;
                case 8:
                    str = "ACTION_CLEAR_SELECTION";
                    break;
                case 16:
                    str = "ACTION_CLICK";
                    break;
                case 32:
                    str = "ACTION_LONG_CLICK";
                    break;
                case 64:
                    str = "ACTION_ACCESSIBILITY_FOCUS";
                    break;
                case NotificationCompat.FLAG_HIGH_PRIORITY:
                    str = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                    break;
                case NotificationCompat.FLAG_LOCAL_ONLY:
                    str = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                    break;
                case NotificationCompat.FLAG_GROUP_SUMMARY:
                    str = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                    break;
                case 1024:
                    str = "ACTION_NEXT_HTML_ELEMENT";
                    break;
                case 2048:
                    str = "ACTION_PREVIOUS_HTML_ELEMENT";
                    break;
                case FragmentTransaction.TRANSIT_ENTER_MASK:
                    str = "ACTION_SCROLL_FORWARD";
                    break;
                case FragmentTransaction.TRANSIT_EXIT_MASK:
                    str = "ACTION_SCROLL_BACKWARD";
                    break;
                case 16384:
                    str = "ACTION_COPY";
                    break;
                case 32768:
                    str = "ACTION_PASTE";
                    break;
                case 65536:
                    str = "ACTION_CUT";
                    break;
                case 131072:
                    str = "ACTION_SET_SELECTION";
                    break;
                default:
                    str = "ACTION_UNKNOWN";
                    break;
            }
            sb.append(str);
            if (i2 != 0) {
                sb.append(", ");
            }
            a2 = i2;
        }
        sb.append("]");
        return sb.toString();
    }
}
