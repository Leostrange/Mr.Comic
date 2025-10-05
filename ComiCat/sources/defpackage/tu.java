package defpackage;

import com.radaee.pdf.BMP;
import com.radaee.pdf.DIB;
import com.radaee.pdf.Document;
import com.radaee.pdf.Page;

/* renamed from: tu  reason: default package */
/* compiled from: VCache */
public final class tu {
    Document a;
    Page b = null;
    public int c;
    float d;
    int e;
    int f;
    int g;
    int h;
    DIB i;
    public int j;
    public boolean k;

    protected tu(Document document, int i2, float f2, int i3, int i4, int i5, int i6) {
        this.a = document;
        this.c = i2;
        this.d = f2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = i6;
        this.i = null;
        this.j = 0;
        this.k = false;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final tu clone() {
        return new tu(this.a, this.c, this.d, this.e, this.f, this.g, this.h);
    }

    /* access modifiers changed from: protected */
    public final void a(BMP bmp, int i2, int i3) {
        if (!this.k || this.i == null) {
            bmp.a(i2, i3, this.g, this.h);
        } else {
            this.i.a(bmp, i2, i3);
        }
    }

    /* access modifiers changed from: protected */
    public final void b() {
        if (this.i != null) {
            this.i.a();
        }
        if (this.b != null) {
            this.b.a();
        }
        this.j = 0;
        this.i = null;
        this.b = null;
        this.k = false;
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        b();
        super.finalize();
    }
}
