package defpackage;

import android.os.Build;
import android.view.accessibility.AccessibilityRecord;

/* renamed from: cd  reason: default package */
/* compiled from: AccessibilityRecordCompat */
public final class cd {
    public static final c a;
    public final Object b;

    /* renamed from: cd$a */
    /* compiled from: AccessibilityRecordCompat */
    static class a extends e {
        a() {
        }

        public final Object a() {
            return AccessibilityRecord.obtain();
        }

        public final void a(Object obj, int i) {
            ((AccessibilityRecord) obj).setFromIndex(i);
        }

        public final void a(Object obj, boolean z) {
            ((AccessibilityRecord) obj).setScrollable(z);
        }

        public final void b(Object obj, int i) {
            ((AccessibilityRecord) obj).setItemCount(i);
        }

        public final void c(Object obj, int i) {
            ((AccessibilityRecord) obj).setScrollX(i);
        }

        public final void d(Object obj, int i) {
            ((AccessibilityRecord) obj).setScrollY(i);
        }

        public final void e(Object obj, int i) {
            ((AccessibilityRecord) obj).setToIndex(i);
        }
    }

    /* renamed from: cd$b */
    /* compiled from: AccessibilityRecordCompat */
    static class b extends a {
        b() {
        }

        public final void f(Object obj, int i) {
            ((AccessibilityRecord) obj).setMaxScrollX(i);
        }

        public final void g(Object obj, int i) {
            ((AccessibilityRecord) obj).setMaxScrollY(i);
        }
    }

    /* renamed from: cd$c */
    /* compiled from: AccessibilityRecordCompat */
    public interface c {
        Object a();

        void a(Object obj, int i);

        void a(Object obj, boolean z);

        void b(Object obj, int i);

        void c(Object obj, int i);

        void d(Object obj, int i);

        void e(Object obj, int i);

        void f(Object obj, int i);

        void g(Object obj, int i);
    }

    /* renamed from: cd$d */
    /* compiled from: AccessibilityRecordCompat */
    static class d extends b {
        d() {
        }
    }

    /* renamed from: cd$e */
    /* compiled from: AccessibilityRecordCompat */
    static class e implements c {
        e() {
        }

        public Object a() {
            return null;
        }

        public void a(Object obj, int i) {
        }

        public void a(Object obj, boolean z) {
        }

        public void b(Object obj, int i) {
        }

        public void c(Object obj, int i) {
        }

        public void d(Object obj, int i) {
        }

        public void e(Object obj, int i) {
        }

        public void f(Object obj, int i) {
        }

        public void g(Object obj, int i) {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            a = new d();
        } else if (Build.VERSION.SDK_INT >= 15) {
            a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            a = new a();
        } else {
            a = new e();
        }
    }

    public cd(Object obj) {
        this.b = obj;
    }

    public static cd a() {
        return new cd(a.a());
    }

    public final void a(int i) {
        a.b(this.b, i);
    }

    public final void a(boolean z) {
        a.a(this.b, z);
    }

    public final void b(int i) {
        a.a(this.b, i);
    }

    public final void c(int i) {
        a.e(this.b, i);
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
        cd cdVar = (cd) obj;
        return this.b == null ? cdVar.b == null : this.b.equals(cdVar.b);
    }

    public final int hashCode() {
        if (this.b == null) {
            return 0;
        }
        return this.b.hashCode();
    }
}
