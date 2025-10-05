package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.radaee.pdf.Document;
import com.radaee.pdf.Matrix;
import com.radaee.pdf.Page;

/* renamed from: tx  reason: default package */
/* compiled from: VPageCache */
public final class tx {
    static Paint h;
    Document a;
    public a[] b;
    float c;
    int d;
    int e;
    int f;
    Bitmap.Config g;

    /* renamed from: tx$a */
    /* compiled from: VPageCache */
    public class a {
        int a;
        int b;
        int c;
        public int d;
        public Page e;
        Bitmap f;

        public a(a aVar) {
            if (tx.h == null) {
                Paint paint = new Paint();
                tx.h = paint;
                paint.setStyle(Paint.Style.FILL);
                tx.h.setColor(-1);
            }
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c;
        }

        /* access modifiers changed from: package-private */
        public final void a(Document document, int i, Matrix matrix, int i2, int i3) {
            this.e = document.a(i);
            Bitmap createBitmap = Bitmap.createBitmap(i2, i3, tx.this.g);
            createBitmap.eraseColor(-1);
            this.e.a(createBitmap, matrix);
            if (this.d != -1) {
                this.d = 2;
                this.f = createBitmap;
                return;
            }
            createBitmap.recycle();
            this.f = null;
        }

        /* access modifiers changed from: protected */
        public final boolean a(Canvas canvas, Rect rect, Rect rect2) {
            if (this.f == null) {
                return this.d == 0;
            }
            canvas.drawBitmap(this.f, rect, rect2, (Paint) null);
            return true;
        }

        /* access modifiers changed from: protected */
        public final void finalize() {
            if (this.e != null) {
                this.e.a();
            }
            if (this.f != null) {
                this.f.recycle();
            }
            super.finalize();
        }
    }

    private int a(float f2, float f3) {
        int c2 = this.f == 0 ? ((int) ((this.a.c(this.e) - f3) * this.c)) / this.d : ((int) (this.c * f2)) / this.d;
        if (c2 < 0) {
            c2 = 0;
        }
        return c2 >= this.b.length ? this.b.length - 1 : c2;
    }

    /* access modifiers changed from: protected */
    public final boolean a(Canvas canvas, float f2, float f3, float f4, float f5, int i, int i2, float f6) {
        int a2 = a(f2, f3);
        int a3 = a(f4, f5);
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        float f7 = f6 / this.c;
        if (this.f == 0) {
            rect.left = (int) (this.c * f2);
            rect.right = (int) (this.c * f4);
            rect2.left = i;
            rect2.right = rect2.left + ((int) ((f4 - f2) * f6));
            while (a2 < a3) {
                a aVar = this.b[a2];
                rect.top = ((int) ((this.a.c(this.e) - f3) * this.c)) - aVar.b;
                rect.bottom = aVar.c;
                rect2.top = i2;
                rect2.bottom = rect2.top + ((int) (((float) rect.height()) * f7));
                if (!aVar.a(canvas, rect, rect2)) {
                    return false;
                }
                f3 = this.a.c(this.e) - (((float) (aVar.c + aVar.b)) / this.c);
                i2 = rect2.bottom;
                a2++;
            }
            a aVar2 = this.b[a2];
            rect.top = ((int) ((this.a.c(this.e) - f3) * this.c)) - aVar2.b;
            rect.bottom = aVar2.c;
            rect2.top = i2;
            rect2.bottom = rect2.top + ((int) (f7 * ((float) rect.height())));
            return aVar2.a(canvas, rect, rect2);
        }
        rect.top = (int) ((this.a.c(this.e) - f3) * this.c);
        rect.bottom = (int) ((this.a.c(this.e) - f5) * this.c);
        rect2.top = i2;
        rect2.bottom = rect2.top + ((int) ((f3 - f5) * f6));
        while (a2 < a3) {
            a aVar3 = this.b[a2];
            rect.left = ((int) (this.c * f2)) - aVar3.a;
            rect.right = aVar3.c;
            rect2.left = i;
            rect2.right = rect2.left + ((int) (((float) rect.width()) * f7));
            if (!aVar3.a(canvas, rect, rect2)) {
                return false;
            }
            f2 = ((float) (aVar3.c + aVar3.a)) / this.c;
            i = rect2.right;
            a2++;
        }
        a aVar4 = this.b[a2];
        rect.left = ((int) (this.c * f2)) - aVar4.a;
        rect.right = aVar4.c;
        rect2.left = i;
        rect2.right = rect2.left + ((int) (f7 * ((float) rect.width())));
        return aVar4.a(canvas, rect, rect2);
    }
}
