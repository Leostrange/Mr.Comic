package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import defpackage.cv;
import java.lang.reflect.Constructor;
import java.util.Map;

/* renamed from: da  reason: default package */
/* compiled from: AppCompatViewInflater */
public final class da {
    static final Class<?>[] a = {Context.class, AttributeSet.class};
    private static final Map<String, Constructor<? extends View>> b = new ab();
    private final Object[] c = new Object[2];

    public static Context a(Context context, AttributeSet attributeSet, boolean z) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.View, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(cv.k.View_android_theme, 0) : 0;
        if (resourceId == 0 && (resourceId = obtainStyledAttributes.getResourceId(cv.k.View_theme, 0)) != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        int i = resourceId;
        obtainStyledAttributes.recycle();
        return i != 0 ? (!(context instanceof dh) || ((dh) context).a != i) ? new dh(context, i) : context : context;
    }

    private View a(Context context, String str, String str2) {
        Constructor<? extends U> constructor = b.get(str);
        if (constructor == null) {
            try {
                constructor = context.getClassLoader().loadClass(str2 != null ? str2 + str : str).asSubclass(View.class).getConstructor(a);
                b.put(str, constructor);
            } catch (Exception e) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.c);
    }

    /* JADX INFO: finally extract failed */
    public final View a(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue((String) null, "class");
        }
        try {
            this.c[0] = context;
            this.c[1] = attributeSet;
            if (-1 == str.indexOf(46)) {
                View a2 = a(context, str, "android.widget.");
                this.c[0] = null;
                this.c[1] = null;
                return a2;
            }
            View a3 = a(context, str, (String) null);
            this.c[0] = null;
            this.c[1] = null;
            return a3;
        } catch (Exception e) {
            this.c[0] = null;
            this.c[1] = null;
            return null;
        } catch (Throwable th) {
            this.c[0] = null;
            this.c[1] = null;
            throw th;
        }
    }
}
