package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* renamed from: ep  reason: default package */
/* compiled from: TintContextWrapper */
public final class ep extends ContextWrapper {
    private Resources a;

    /* renamed from: ep$a */
    /* compiled from: TintContextWrapper */
    static class a extends em {
        private final er a;

        public a(Resources resources, er erVar) {
            super(resources);
            this.a = erVar;
        }

        public final Drawable getDrawable(int i) {
            Drawable drawable = super.getDrawable(i);
            if (drawable != null) {
                this.a.a(i, drawable);
            }
            return drawable;
        }
    }

    private ep(Context context) {
        super(context);
    }

    public static Context a(Context context) {
        return !(context instanceof ep) ? new ep(context) : context;
    }

    public final Resources getResources() {
        if (this.a == null) {
            this.a = new a(super.getResources(), er.a((Context) this));
        }
        return this.a;
    }
}
