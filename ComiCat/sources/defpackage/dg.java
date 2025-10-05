package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.cv;

/* renamed from: dg  reason: default package */
/* compiled from: ActionBarPolicy */
public final class dg {
    public Context a;

    private dg(Context context) {
        this.a = context;
    }

    public static dg a(Context context) {
        return new dg(context);
    }

    public final boolean a() {
        return this.a.getApplicationInfo().targetSdkVersion >= 16 ? this.a.getResources().getBoolean(cv.b.abc_action_bar_embed_tabs) : this.a.getResources().getBoolean(cv.b.abc_action_bar_embed_tabs_pre_jb);
    }

    public final int b() {
        TypedArray obtainStyledAttributes = this.a.obtainStyledAttributes((AttributeSet) null, cv.k.ActionBar, cv.a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(cv.k.ActionBar_height, 0);
        Resources resources = this.a.getResources();
        if (!a()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(cv.d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public final int c() {
        return this.a.getResources().getDimensionPixelSize(cv.d.abc_action_bar_stacked_tab_max_width);
    }
}
