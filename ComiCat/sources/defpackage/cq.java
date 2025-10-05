package defpackage;

import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;

/* renamed from: cq  reason: default package */
/* compiled from: PopupWindowCompat */
public final class cq {
    static final c a;

    /* renamed from: cq$a */
    /* compiled from: PopupWindowCompat */
    static class a implements c {
        a() {
        }

        public void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2);
        }
    }

    /* renamed from: cq$b */
    /* compiled from: PopupWindowCompat */
    static class b extends a {
        b() {
        }

        public final void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2, i3);
        }
    }

    /* renamed from: cq$c */
    /* compiled from: PopupWindowCompat */
    interface c {
        void a(PopupWindow popupWindow, View view, int i, int i2, int i3);
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        a.a(popupWindow, view, i, i2, i3);
    }
}
