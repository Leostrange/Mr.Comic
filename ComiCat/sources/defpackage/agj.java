package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.widget.ImageView;
import defpackage.agg;

/* renamed from: agj  reason: default package */
/* compiled from: SlideAnimation */
public final class agj extends agg {
    public agj(ImageView imageView, int i) {
        super(imageView, 60, i);
    }

    public final void a(Canvas canvas) {
        if (this.c == agg.a.b) {
            double d = ((double) this.g) / ((double) this.d);
            double d2 = 1.0d - d;
            Rect rect = new Rect((int) Math.round(d * ((double) this.j)), 0, this.j, this.k);
            Rect rect2 = new Rect((int) Math.round(((double) this.l) * d2), 0, this.l, this.m);
            Rect rect3 = new Rect(this.h.d, this.h.c, ((int) Math.round(((double) this.h.a) * d2)) + this.h.d, this.h.b + this.h.c);
            Rect rect4 = new Rect(((int) Math.round(d2 * ((double) this.i.a))) + this.i.d, this.i.c, this.i.a + this.i.d, this.i.b + this.i.c);
            canvas.drawBitmap((Bitmap) this.a.get(), rect, rect3, (Paint) null);
            canvas.drawBitmap((Bitmap) this.b.get(), rect2, rect4, (Paint) null);
            return;
        }
        double d3 = ((double) this.g) / ((double) this.d);
        Rect rect5 = new Rect((int) Math.round(((double) this.j) * d3), 0, this.j, this.k);
        Rect rect6 = new Rect((int) Math.round((1.0d - d3) * ((double) this.l)), 0, this.l, this.m);
        Rect rect7 = new Rect(((int) Math.round(((double) this.h.a) * d3)) + this.h.d, this.h.c, this.h.a + this.h.d, this.h.b + this.h.c);
        Rect rect8 = new Rect(this.i.d, this.i.c, ((int) Math.round(d3 * ((double) this.i.a))) + this.i.d, this.i.b + this.i.c);
        canvas.drawBitmap((Bitmap) this.a.get(), rect5, rect7, (Paint) null);
        canvas.drawBitmap((Bitmap) this.b.get(), rect6, rect8, (Paint) null);
    }
}
