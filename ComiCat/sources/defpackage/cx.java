package defpackage;

import defpackage.cy;
import java.util.Iterator;
import java.util.List;

/* renamed from: cx  reason: default package */
/* compiled from: DefaultGenerator */
public final class cx extends cy.b {
    private List<cy.c> a;
    private int b;
    private cy.c c;
    private cy.c d;
    private cy.c e;
    private cy.c f;
    private cy.c g;
    private cy.c h;

    private static float a(float f2, float f3) {
        return 1.0f - Math.abs(f2 - f3);
    }

    private cy.c a(float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8;
        cy.c cVar;
        cy.c cVar2 = null;
        float f9 = 0.0f;
        Iterator<cy.c> it = this.a.iterator();
        while (it.hasNext()) {
            cy.c next = it.next();
            float f10 = next.a()[1];
            float f11 = next.a()[2];
            if (f10 >= f6 && f10 <= f7 && f11 >= f3 && f11 <= f4) {
                if (!(this.c == next || this.e == next || this.g == next || this.d == next || this.f == next || this.h == next)) {
                    float[] fArr = {a(f10, f5), 3.0f, a(f11, f2), 6.0f, ((float) next.b) / ((float) this.b), 1.0f};
                    float f12 = 0.0f;
                    float f13 = 0.0f;
                    for (int i = 0; i < 6; i += 2) {
                        float f14 = fArr[i];
                        float f15 = fArr[i + 1];
                        f12 += f14 * f15;
                        f13 += f15;
                    }
                    float f16 = f12 / f13;
                    if (cVar2 == null || f16 > f9) {
                        cVar = next;
                        f8 = f16;
                        cVar2 = cVar;
                        f9 = f8;
                    }
                }
            }
            f8 = f9;
            cVar = cVar2;
            cVar2 = cVar;
            f9 = f8;
        }
        return cVar2;
    }

    private static float[] a(cy.c cVar) {
        float[] fArr = new float[3];
        System.arraycopy(cVar.a(), 0, fArr, 0, 3);
        return fArr;
    }

    public final cy.c a() {
        return this.c;
    }

    public final void a(List<cy.c> list) {
        int i;
        this.a = list;
        int i2 = 0;
        Iterator<cy.c> it = this.a.iterator();
        while (true) {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            i2 = Math.max(i, it.next().b);
        }
        this.b = i;
        this.c = a(0.5f, 0.3f, 0.7f, 1.0f, 0.35f, 1.0f);
        this.g = a(0.74f, 0.55f, 1.0f, 1.0f, 0.35f, 1.0f);
        this.e = a(0.26f, 0.0f, 0.45f, 1.0f, 0.35f, 1.0f);
        this.d = a(0.5f, 0.3f, 0.7f, 0.3f, 0.0f, 0.4f);
        this.h = a(0.74f, 0.55f, 1.0f, 0.3f, 0.0f, 0.4f);
        this.f = a(0.26f, 0.0f, 0.45f, 0.3f, 0.0f, 0.4f);
        if (this.c == null && this.e != null) {
            float[] a2 = a(this.e);
            a2[2] = 0.5f;
            this.c = new cy.c(h.a(a2), 0);
        }
        if (this.e == null && this.c != null) {
            float[] a3 = a(this.c);
            a3[2] = 0.26f;
            this.e = new cy.c(h.a(a3), 0);
        }
    }
}
