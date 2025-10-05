package defpackage;

import android.app.Activity;

/* renamed from: tq  reason: default package */
/* compiled from: ScreenSize */
public enum tq {
    ;

    public static tq a(Activity activity) {
        switch (activity.getResources().getConfiguration().screenLayout & 15) {
            case 1:
                return a;
            case 2:
                return b;
            case 3:
                return c;
            case 4:
                return d;
            default:
                return b;
        }
    }

    public abstract sr a();
}
