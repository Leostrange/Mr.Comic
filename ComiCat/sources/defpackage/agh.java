package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.widget.ImageView;
import defpackage.agg;

/* renamed from: agh  reason: default package */
/* compiled from: PageCurlAnimation */
public final class agh extends agg {
    private a A;
    private a B;
    private a C;
    private int q;
    private float r;
    private a s = new a(0.0f, 0.0f);
    private a t = new a(0.0f, 0.0f);
    private Paint u = new Paint();
    private boolean v;
    private a w;
    private a x;
    private a y;
    private a z;

    /* renamed from: agh$a */
    /* compiled from: PageCurlAnimation */
    class a {
        public float a;
        public float b;

        public a(float f, float f2) {
            this.a = f;
            this.b = f2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.a == this.a && aVar.b == this.b;
        }

        public final String toString() {
            return "(" + this.a + "," + this.b + ")";
        }
    }

    public agh(ImageView imageView, int i) {
        super(imageView, 100, i);
        this.u.setColor(-3355444);
        this.u.setAntiAlias(true);
        this.q = 20;
        this.v = true;
    }

    private synchronized void a() {
        float f = (float) (b().a / this.d);
        if (this.c == agg.a.a) {
            f *= -1.0f;
        }
        a aVar = this.s;
        aVar.a = f + aVar.a;
        a aVar2 = this.s;
        a aVar3 = this.C;
        float f2 = aVar3.a - aVar2.a;
        float f3 = aVar3.b - aVar2.b;
        if (((float) Math.sqrt((double) ((f3 * f3) + (f2 * f2)))) > this.r) {
            if (aVar2.a > this.C.a + this.r) {
                aVar2.a = this.C.a + this.r;
            } else if (aVar2.a < this.C.a - this.r) {
                aVar2.a = this.C.a - this.r;
            }
            aVar2.b = (float) (Math.sin(Math.acos((double) (Math.abs(aVar2.a - this.C.a) / this.r))) * ((double) this.r));
        }
        this.s = aVar2;
        c();
    }

    private agg.c b() {
        return this.c == agg.a.b ? this.h : this.i;
    }

    private void c() {
        int i = b().a;
        int i2 = b().b;
        this.w.a = ((float) i) - this.s.a;
        this.w.b = (float) i2;
        this.z.a = 0.0f;
        this.z.b = 0.0f;
        if (this.w.a > ((float) i) / 1.25f) {
            this.z.a = (float) i;
            this.z.b = ((float) i2) - (((((float) i) - this.w.a) * ((float) i2)) / this.w.a);
        } else {
            this.z.a = (float) ((int) (this.w.a * 1.25f));
            this.z.b = 0.0f;
        }
        double atan = Math.atan((double) ((((float) i2) - this.z.b) / ((this.z.a + this.s.a) - ((float) i))));
        double cos = Math.cos(2.0d * atan);
        double sin = Math.sin(atan * 2.0d);
        this.B.a = (float) (((double) (((float) i) - this.s.a)) + (((double) this.s.a) * cos));
        this.B.b = (float) (((double) i2) - (((double) this.s.a) * sin));
        if (this.w.a > ((float) i) / 1.25f) {
            this.A.a = this.z.a;
            this.A.b = this.z.b;
            return;
        }
        this.A.a = (float) ((cos * ((double) (((float) i) - this.z.a))) + ((double) this.z.a));
        this.A.b = (float) (-(sin * ((double) (((float) i) - this.z.a))));
    }

    public final void a(Canvas canvas) {
        boolean z2 = false;
        if (this.v) {
            this.v = false;
            this.r = (float) b().a;
            if (this.c == agg.a.a) {
                z2 = true;
            }
            this.s.a = z2 ? (float) b().a : (float) this.q;
            this.s.b = (float) this.q;
            this.t.a = 0.0f;
            this.t.b = 0.0f;
            this.w = new a((float) this.q, 0.0f);
            this.x = new a((float) b().a, (float) b().b);
            this.y = new a((float) b().a, 0.0f);
            this.z = new a(0.0f, 0.0f);
            this.A = new a(0.0f, 0.0f);
            this.B = new a(0.0f, 0.0f);
            this.C = new a(z2 ? (float) b().a : 0.0f, 0.0f);
            c();
        }
        a();
        try {
            agg.c b = b();
            Rect rect = new Rect();
            rect.left = b.d;
            rect.top = b.c;
            rect.bottom = rect.top + b.b;
            rect.right = b.a + rect.left;
            canvas.drawBitmap(this.c == agg.a.b ? (Bitmap) this.a.get() : (Bitmap) this.b.get(), (Rect) null, rect, (Paint) null);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            Path path = new Path();
            path.moveTo(this.w.a, this.w.b);
            path.lineTo(this.x.a, this.x.b);
            path.lineTo(this.y.a, this.y.b);
            path.lineTo(this.z.a, this.z.b);
            path.lineTo(this.w.a, this.w.b);
            new StringBuilder("Background path is: ").append(this.w.toString()).append(": ").append(this.x.toString()).append(": ").append(this.y.toString()).append(":").append(this.z.toString()).append(": ").append(this.w.toString());
            canvas.save();
            canvas.clipPath(path);
            agg.c cVar = this.c == agg.a.b ? this.i : this.h;
            Rect rect2 = new Rect();
            rect2.left = cVar.d;
            rect2.top = cVar.c;
            rect2.bottom = rect2.top + cVar.b;
            rect2.right = cVar.a + rect2.left;
            canvas.drawBitmap(this.c == agg.a.b ? (Bitmap) this.b.get() : (Bitmap) this.a.get(), (Rect) null, rect2, (Paint) null);
            canvas.restore();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        agg.c b2 = b();
        Path path2 = new Path();
        path2.moveTo(this.w.a, this.w.b);
        path2.lineTo(this.z.a, this.z.b);
        path2.lineTo(this.A.a, this.A.b);
        path2.lineTo(this.B.a, this.B.b);
        path2.lineTo(this.w.a, this.w.b);
        new StringBuilder("Curl path is: ").append(this.w.toString()).append(": ").append(this.z.toString()).append(": ").append(this.A.toString()).append(":").append(this.B.toString()).append(": ").append(this.w.toString());
        path2.offset((float) b2.d, (float) b2.c);
        canvas.drawPath(path2, this.u);
    }
}
