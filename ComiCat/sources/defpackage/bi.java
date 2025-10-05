package defpackage;

import android.view.View;
import java.lang.reflect.Field;

/* renamed from: bi  reason: default package */
/* compiled from: ViewCompatBase */
final class bi {
    private static Field a;
    private static boolean b;
    private static Field c;
    private static boolean d;

    static int a(View view) {
        if (!b) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            b = true;
        }
        if (a != null) {
            try {
                return ((Integer) a.get(view)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }

    static int b(View view) {
        if (!d) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            d = true;
        }
        if (c != null) {
            try {
                return ((Integer) c.get(view)).intValue();
            } catch (Exception e2) {
            }
        }
        return 0;
    }
}
