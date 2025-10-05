package defpackage;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;

/* renamed from: ct  reason: default package */
/* compiled from: TextViewCompat */
public final class ct {
    static final d a;

    /* renamed from: ct$a */
    /* compiled from: TextViewCompat */
    static class a implements d {
        a() {
        }

        public void a(TextView textView, Drawable drawable) {
            textView.setCompoundDrawables(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    /* renamed from: ct$b */
    /* compiled from: TextViewCompat */
    static class b extends a {
        b() {
        }

        public void a(TextView textView, Drawable drawable) {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable drawable2 = z ? null : drawable;
            if (!z) {
                drawable = null;
            }
            textView.setCompoundDrawables(drawable2, (Drawable) null, drawable, (Drawable) null);
        }
    }

    /* renamed from: ct$c */
    /* compiled from: TextViewCompat */
    static class c extends b {
        c() {
        }

        public final void a(TextView textView, Drawable drawable) {
            textView.setCompoundDrawablesRelative(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    /* renamed from: ct$d */
    /* compiled from: TextViewCompat */
    interface d {
        void a(TextView textView, Drawable drawable);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            a = new c();
        } else if (i >= 17) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static void a(TextView textView, Drawable drawable) {
        a.a(textView, drawable);
    }
}
