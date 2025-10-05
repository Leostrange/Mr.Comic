package defpackage;

import android.view.animation.Interpolator;

/* renamed from: cf  reason: default package */
/* compiled from: LookupTableInterpolator */
abstract class cf implements Interpolator {
    private final float[] a;
    private final float b = (1.0f / ((float) (this.a.length - 1)));

    public cf(float[] fArr) {
        this.a = fArr;
    }

    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) (((float) (this.a.length - 1)) * f), this.a.length - 2);
        float f2 = (f - (((float) min) * this.b)) / this.b;
        return ((this.a[min + 1] - this.a[min]) * f2) + this.a[min];
    }
}
