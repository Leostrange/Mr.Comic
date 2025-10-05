package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.view.LayoutInflater;
import defpackage.cv;

/* renamed from: dh  reason: default package */
/* compiled from: ContextThemeWrapper */
public final class dh extends ContextWrapper {
    public int a;
    private Resources.Theme b;
    private LayoutInflater c;

    public dh(Context context, int i) {
        super(context);
        this.a = i;
    }

    private void a() {
        if (this.b == null) {
            this.b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        this.b.applyStyle(this.a, true);
    }

    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.c == null) {
            this.c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.c;
    }

    public final Resources.Theme getTheme() {
        if (this.b != null) {
            return this.b;
        }
        if (this.a == 0) {
            this.a = cv.j.Theme_AppCompat_Light;
        }
        a();
        return this.b;
    }

    public final void setTheme(int i) {
        this.a = i;
        a();
    }
}
