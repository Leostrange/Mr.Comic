package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

/* renamed from: es  reason: default package */
/* compiled from: TintTypedArray */
public final class es {
    public final TypedArray a;
    private final Context b;
    private er c;

    private es(Context context, TypedArray typedArray) {
        this.b = context;
        this.a = typedArray;
    }

    public static es a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new es(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static es a(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new es(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public final int a(int i, int i2) {
        return this.a.getInt(i, i2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0009, code lost:
        r0 = r3.a.getResourceId(r4, 0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.drawable.Drawable a(int r4) {
        /*
            r3 = this;
            r2 = 0
            android.content.res.TypedArray r0 = r3.a
            boolean r0 = r0.hasValue(r4)
            if (r0 == 0) goto L_0x001a
            android.content.res.TypedArray r0 = r3.a
            int r0 = r0.getResourceId(r4, r2)
            if (r0 == 0) goto L_0x001a
            er r1 = r3.a()
            android.graphics.drawable.Drawable r0 = r1.a((int) r0, (boolean) r2)
        L_0x0019:
            return r0
        L_0x001a:
            android.content.res.TypedArray r0 = r3.a
            android.graphics.drawable.Drawable r0 = r0.getDrawable(r4)
            goto L_0x0019
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.es.a(int):android.graphics.drawable.Drawable");
    }

    public final er a() {
        if (this.c == null) {
            this.c = er.a(this.b);
        }
        return this.c;
    }

    public final boolean a(int i, boolean z) {
        return this.a.getBoolean(i, z);
    }

    public final int b(int i, int i2) {
        return this.a.getDimensionPixelOffset(i, i2);
    }

    public final Drawable b(int i) {
        int resourceId;
        if (!this.a.hasValue(i) || (resourceId = this.a.getResourceId(i, 0)) == 0) {
            return null;
        }
        return a().a(resourceId, true);
    }

    public final int c(int i, int i2) {
        return this.a.getDimensionPixelSize(i, i2);
    }

    public final CharSequence c(int i) {
        return this.a.getText(i);
    }

    public final int d(int i, int i2) {
        return this.a.getLayoutDimension(i, i2);
    }

    public final boolean d(int i) {
        return this.a.hasValue(i);
    }

    public final int e(int i, int i2) {
        return this.a.getResourceId(i, i2);
    }
}
