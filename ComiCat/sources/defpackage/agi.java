package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.widget.ImageView;
import defpackage.agg;

/* renamed from: agi  reason: default package */
/* compiled from: ShiftAnimation */
public final class agi extends agg {
    public agi(ImageView imageView, int i) {
        super(imageView, 60, i);
    }

    private static void a(String str, Rect rect) {
        new StringBuilder().append(str).append(" is: ").append(rect.left).append(", ").append(rect.top).append(", ").append(rect.right).append(", ").append(rect.bottom);
    }

    public final void a(Canvas canvas) {
        if (this.c == agg.a.b) {
            new StringBuilder("Current frame is: ").append(this.g);
            double d = ((double) this.g) / ((double) this.d);
            double d2 = 1.0d - d;
            Rect rect = new Rect((int) Math.round(((double) this.j) * d), 0, this.j, this.k);
            Rect rect2 = new Rect(0, 0, (int) Math.round(d * ((double) this.l)), this.m);
            Rect rect3 = new Rect(this.h.d, this.h.c, ((int) Math.round(((double) this.h.a) * d2)) + this.h.d, this.h.b + this.h.c);
            Rect rect4 = new Rect(((int) Math.round(d2 * ((double) this.i.a))) + this.i.d, this.i.c, this.i.a + this.i.d, this.i.b + this.i.c);
            canvas.drawBitmap((Bitmap) this.a.get(), rect, rect3, (Paint) null);
            a("Source Rect", rect);
            a("Source Viewport Rect", rect3);
            canvas.drawBitmap((Bitmap) this.b.get(), rect2, rect4, (Paint) null);
            return;
        }
        new StringBuilder("Current frame is: ").append(this.g);
        double d3 = ((double) this.g) / ((double) this.d);
        double d4 = 1.0d - d3;
        Rect rect5 = new Rect(0, 0, (int) Math.round(((double) this.j) * d4), this.k);
        Rect rect6 = new Rect((int) Math.round(d4 * ((double) this.l)), 0, this.l, this.m);
        Rect rect7 = new Rect(((int) Math.round(((double) this.h.a) * d3)) + this.h.d, this.h.c, this.h.a + this.h.d, this.h.b + this.h.c);
        Rect rect8 = new Rect(this.i.d, this.i.c, ((int) Math.round(d3 * ((double) this.i.a))) + this.i.d, this.i.b + this.i.c);
        a("Source Rect", rect5);
        a("Source Viewport Rect", rect7);
        canvas.drawBitmap((Bitmap) this.a.get(), rect5, rect7, (Paint) null);
        canvas.drawBitmap((Bitmap) this.b.get(), rect6, rect8, (Paint) null);
    }
}
