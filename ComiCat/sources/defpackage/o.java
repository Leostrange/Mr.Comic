package defpackage;

import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* renamed from: o  reason: default package */
/* compiled from: DrawableWrapperLollipop */
final class o extends n {
    o(Drawable drawable) {
        super(drawable);
    }

    public final void applyTheme(Resources.Theme theme) {
        this.b.applyTheme(theme);
    }

    public final boolean canApplyTheme() {
        return this.b.canApplyTheme();
    }

    public final Rect getDirtyBounds() {
        return this.b.getDirtyBounds();
    }

    public final void getOutline(Outline outline) {
        this.b.getOutline(outline);
    }

    public final void setHotspot(float f, float f2) {
        this.b.setHotspot(f, f2);
    }

    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.b.setHotspotBounds(i, i2, i3, i4);
    }
}
