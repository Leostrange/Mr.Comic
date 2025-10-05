package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.radaee.pdf.BMP;
import com.radaee.pdf.Document;
import defpackage.tx;
import java.lang.reflect.Array;

/* renamed from: tw  reason: default package */
/* compiled from: VPage */
public final class tw {
    protected static int k;
    protected static int l;
    public tu[][] a;
    public Bitmap b;
    public Document c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public float i;
    public tx j;
    public boolean m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;

    /* renamed from: tw$a */
    /* compiled from: VPage */
    public class a {
        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        boolean[][] i;

        a(int i2, int i3) {
            this.i = (boolean[][]) Array.newInstance(Boolean.TYPE, new int[]{i2, i3});
        }
    }

    private final void a(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.n = this.e - i2;
        this.o = this.f - i3;
        this.p = this.n + this.g + k;
        this.q = this.o + this.h + l;
        if (this.p > i4) {
            this.p = i4;
        }
        if (this.q > i5) {
            this.q = i5;
        }
        this.r = 0;
        while (this.r < i6 && this.n <= (-this.a[this.r][0].g)) {
            this.n += this.a[this.r][0].g;
            this.r++;
        }
        this.s = 0;
        while (this.s < i7 && this.o <= (-this.a[0][this.s].h)) {
            this.o += this.a[0][this.s].h;
            this.s++;
        }
    }

    private final void a(ty tyVar, int i2, int i3, int i4) {
        while (i2 < i3) {
            tu tuVar = this.a[i2][i4];
            if ((!tuVar.k && tuVar.j == 0 && tuVar.i == null) ? false : true) {
                this.a[i2][i4] = tuVar.clone();
            }
            tyVar.b(tuVar);
            i2++;
        }
    }

    private final void b(ty tyVar, int i2, int i3, int i4) {
        while (i2 < i3) {
            a(tyVar, 0, i4, i2);
            i2++;
        }
    }

    public final a a(ty tyVar, BMP bmp, int i2, int i3) {
        boolean z;
        if (this.a == null) {
            return null;
        }
        a aVar = new a(this.a.length, this.a[0].length);
        aVar.a = bmp.b();
        aVar.b = bmp.c();
        aVar.c = this.a.length;
        aVar.d = this.a[0].length;
        a(i2, i3, aVar.a, aVar.b, aVar.c, aVar.d);
        aVar.e = this.r;
        aVar.f = this.s;
        aVar.g = this.n;
        aVar.h = this.o;
        int i4 = aVar.f;
        b(tyVar, 0, aVar.f, aVar.c);
        int i5 = aVar.h;
        int i6 = i4;
        boolean z2 = true;
        while (i5 < this.q && i6 < aVar.d) {
            a(tyVar, 0, aVar.e, i6);
            int i7 = aVar.e;
            int i8 = aVar.g;
            int i9 = i7;
            while (i8 < this.p && i9 < aVar.c) {
                tu tuVar = this.a[i9][i6];
                tyVar.a(tuVar);
                if (tuVar.k && tuVar.j > 0) {
                    tuVar.a(bmp, i8, i5);
                    aVar.i[i9][i6] = true;
                    z = z2;
                } else {
                    z = false;
                }
                i9++;
                i8 = tuVar.g + i8;
                z2 = z;
            }
            a(tyVar, i9, aVar.c, i6);
            i5 += this.a[0][i6].h;
            i6++;
        }
        b(tyVar, i6, aVar.d, aVar.c);
        if (!z2) {
            return aVar;
        }
        return null;
    }

    public final void a() {
        int i2 = 0;
        int i3 = this.g / k;
        int i4 = this.h / l;
        int i5 = this.g % k;
        int i6 = this.h % l;
        if (i5 > (k >> 1)) {
            i3++;
        }
        if (i6 > (l >> 1)) {
            i4++;
        }
        int i7 = i3 <= 0 ? 1 : i3;
        int i8 = i4 <= 0 ? 1 : i4;
        this.a = (tu[][]) Array.newInstance(tu.class, new int[]{i7, i8});
        int i9 = 0;
        int i10 = 0;
        while (i10 < i8 - 1) {
            int i11 = 0;
            int i12 = 0;
            while (i12 < i7 - 1) {
                this.a[i12][i10] = new tu(this.c, this.d, this.i, i11, i9, k, l);
                i11 += k;
                i12++;
            }
            this.a[i12][i10] = new tu(this.c, this.d, this.i, i11, i9, this.g - i11, l);
            i9 += l;
            i10++;
        }
        int i13 = 0;
        while (i2 < i7 - 1) {
            this.a[i2][i10] = new tu(this.c, this.d, this.i, i13, i9, k, this.h - i9);
            i13 += k;
            i2++;
        }
        this.a[i2][i10] = new tu(this.c, this.d, this.i, i13, i9, this.g - i13, this.h - i9);
    }

    public final void a(Bitmap.Config config) {
        boolean z;
        int i2;
        int i3;
        int i4;
        tx txVar = this.j;
        int length = txVar.b.length;
        int i5 = 0;
        while (true) {
            if (i5 < length) {
                tx.a aVar = txVar.b[i5];
                if (aVar.d != 2 && aVar.d != 0) {
                    z = false;
                    break;
                }
                i5++;
            } else {
                z = true;
                break;
            }
        }
        if (!z) {
            long j2 = ((long) this.g) * ((long) this.h);
            int i6 = this.g;
            int i7 = this.h;
            int i8 = 0;
            while (j2 > 1048576) {
                j2 >>= 2;
                i6 = i2 >> 1;
                i7 = i3 >> 1;
                i8 = i4 + 1;
            }
            while (true) {
                int i9 = i4;
                int i10 = i3;
                int i11 = i2;
                if (this.b != null) {
                    BMP bmp = new BMP();
                    bmp.a(this.b);
                    int length2 = this.a.length;
                    int length3 = this.a[0].length;
                    if (i9 == 0) {
                        int i12 = 0;
                        for (int i13 = 0; i13 < length3; i13++) {
                            int i14 = 0;
                            for (int i15 = 0; i15 < length2; i15++) {
                                this.a[i15][i13].a(bmp, i14, i12);
                                i14 += this.a[i15][i13].g;
                            }
                            i12 = this.a[0][i13].h + i12;
                        }
                    } else {
                        int i16 = 0;
                        for (int i17 = 0; i17 < length3; i17++) {
                            int i18 = 0;
                            for (int i19 = 0; i19 < length2; i19++) {
                                tu tuVar = this.a[i19][i17];
                                int i20 = i18 >> i9;
                                int i21 = i16 >> i9;
                                int i22 = tuVar.g >> i9;
                                int i23 = tuVar.h >> i9;
                                if (!tuVar.k || tuVar.i == null) {
                                    bmp.a(i20, i21, i22, i23);
                                } else {
                                    tuVar.i.a(bmp, i20, i21, i22, i23);
                                }
                                i18 = this.a[i19][i17].g + i18;
                            }
                            i16 = this.a[0][i17].h + i16;
                        }
                    }
                    bmp.b(this.b);
                    return;
                }
                try {
                    this.b = Bitmap.createBitmap(i11, i10, config);
                    i2 = i11;
                    i3 = i10;
                    i4 = i9;
                } catch (Exception e2) {
                    i2 = i11 >> 1;
                    i3 = i10 >> 1;
                    i4 = i9 + 1;
                }
                if (i4 > 8) {
                    return;
                }
            }
        }
    }

    public final void a(Canvas canvas, int i2, int i3) {
        if (!this.j.a(canvas, 0.0f, this.c.c(this.d), this.c.b(this.d), 0.0f, this.e - i2, this.f - i3, this.i)) {
            Rect rect = new Rect();
            rect.left = this.e - i2;
            rect.top = this.f - i3;
            rect.right = rect.left + this.g;
            rect.bottom = rect.top + this.h;
            if (this.b != null) {
                canvas.drawBitmap(this.b, (Rect) null, rect, (Paint) null);
                return;
            }
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(-1);
            canvas.drawRect(rect, paint);
        }
    }

    public final void a(BMP bmp, a aVar) {
        if (this.a != null && aVar != null) {
            int i2 = aVar.f;
            int i3 = aVar.h;
            while (i3 < this.q && i2 < aVar.d) {
                int i4 = aVar.e;
                int i5 = aVar.g;
                while (i5 < this.p && i4 < aVar.c) {
                    tu tuVar = this.a[i4][i2];
                    if (!aVar.i[i4][i2]) {
                        tuVar.a(bmp, i5, i3);
                    }
                    i5 += tuVar.g;
                    i4++;
                }
                i3 += this.a[0][i2].h;
                i2++;
            }
        }
    }

    public final void a(ty tyVar) {
        if (this.a != null) {
            int length = this.a[0].length;
            for (int i2 = 0; i2 < length; i2++) {
                for (tu[] tuVarArr : this.a) {
                    tyVar.b(tuVarArr[i2]);
                }
            }
            this.a = null;
        }
    }

    public final void a(ty tyVar, int i2, int i3, int i4, int i5) {
        int length = this.a.length;
        int length2 = this.a[0].length;
        a(i2, i3, i4, i5, length, length2);
        int i6 = this.r;
        int i7 = this.s;
        int i8 = this.n;
        int i9 = this.o;
        b(tyVar, 0, i7, length);
        while (i9 < this.q && i7 < length2) {
            a(tyVar, 0, i6, i7);
            int i10 = i8;
            int i11 = i6;
            while (i10 < this.p && i11 < length) {
                tyVar.a(this.a[i11][i7]);
                i10 += this.a[i11][i7].g;
                i11++;
            }
            a(tyVar, i11, length, i7);
            i9 += this.a[0][i7].h;
            i7++;
        }
        b(tyVar, i7, length2, length);
    }

    public final boolean a(Canvas canvas, a aVar) {
        if (this.a == null || aVar == null) {
            return false;
        }
        int i2 = aVar.f;
        float f2 = 1.0f / this.i;
        int i3 = aVar.h;
        int i4 = i2;
        boolean z = false;
        while (i3 < this.q && i4 < aVar.d) {
            int i5 = aVar.e;
            int i6 = aVar.g;
            int i7 = i5;
            boolean z2 = z;
            while (i6 < this.p && i7 < aVar.c) {
                tu tuVar = this.a[i7][i4];
                if (!aVar.i[i7][i4]) {
                    tu tuVar2 = this.a[i7][i4];
                    aVar.i[i7][i4] = this.j.a(canvas, ((float) tuVar2.e) * f2, this.c.c(this.d) - (((float) tuVar2.f) * f2), ((float) (tuVar2.e + tuVar2.g)) * f2, this.c.c(this.d) - (((float) (tuVar2.h + tuVar2.f)) * f2), i6, i3, this.i);
                }
                if (!aVar.i[i7][i4]) {
                    z2 = true;
                }
                i6 += tuVar.g;
                i7++;
            }
            i3 += this.a[0][i4].h;
            i4++;
            z = z2;
        }
        return z;
    }
}
