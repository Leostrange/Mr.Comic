package defpackage;

import android.graphics.Bitmap;
import defpackage.aft;
import java.io.File;
import java.util.List;

/* renamed from: aem  reason: default package */
/* compiled from: CatalogFolderData */
public final class aem implements aft {
    public int a = -1;
    public String b;
    public int c = -1;
    public int d = 0;
    public int e = 0;
    public aet f;
    public int g = 0;
    public int h = 0;
    public long i = 0;
    public String j;
    private String k;

    public static aem a(String str) {
        aem aem = new aem();
        aem.j = str.length() > 1 ? agp.a(str) : str;
        aem.b = new File(str).getName();
        aem.c = -1;
        aem.d = 0;
        aem.e = 0;
        aem.g = 0;
        aem.i = 0;
        aem.h = 0;
        aem.f = new aet(0);
        return aem;
    }

    public final String a() {
        String str = this.j;
        if (!d()) {
            return str;
        }
        if (this.k == null) {
            acs a2 = act.b().a(this.c);
            if (a2 != null) {
                this.k = agp.a(agp.b(a2.h(), this.j));
            }
            this.k = this.k != null ? this.k : this.j;
        }
        return this.k;
    }

    public final boolean a(boolean z) {
        boolean z2 = true;
        boolean z3 = z && this.e != 0;
        if (this.d == 0 && !z3) {
            return false;
        }
        if (this.h != this.d) {
            z2 = false;
        }
        if (!z2 || !z3) {
            return z2;
        }
        boolean z4 = z2;
        for (aem a2 : ael.a(this)) {
            z4 = a2.a(false);
            if (!z4) {
                return z4;
            }
        }
        return z4;
    }

    /* access modifiers changed from: package-private */
    public final String b() {
        return this.c != -1 ? String.valueOf(this.c) + "?" + this.j : this.j;
    }

    public final void b(boolean z) {
        this.f.a(1, z);
    }

    public final void c(boolean z) {
        this.f.a(8, z);
    }

    public final boolean c() {
        return this.f.c(1);
    }

    public final boolean d() {
        return this.f.c(2);
    }

    public final int e() {
        return this.c;
    }

    public final boolean f() {
        return this.f.c(16);
    }

    public final boolean g() {
        return false;
    }

    public final void h() {
        this.g = 0;
        aen aen = aei.a().c;
        aen.c(this);
    }

    public final void i() {
        int i2;
        List<aeq> a2 = ael.a(this, false);
        if (a2 == null || a2.size() <= 0) {
            i2 = 0;
        } else {
            i2 = 0;
            for (aeq p : a2) {
                i2 = p.p() ? i2 + 1 : i2;
            }
        }
        if (this.h != i2) {
            this.h = i2;
            if (this.h == this.d) {
                this.g = 0;
            }
            aen aen = aei.a().c;
            aen.c(this);
        }
    }

    public final int j() {
        return this.a;
    }

    public final int k() {
        return aft.a.c;
    }

    public final String l() {
        return this.b;
    }

    public final Bitmap m() {
        return ahd.c(this.a, false);
    }

    public final afu n() {
        return new afr(this);
    }

    public final boolean o() {
        return this.g != 0;
    }

    public final boolean p() {
        return this.d != 0 && this.d == this.h;
    }

    public final long q() {
        return this.i;
    }
}
