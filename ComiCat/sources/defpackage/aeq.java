package defpackage;

import android.graphics.Bitmap;
import android.support.v4.app.NotificationCompat;
import defpackage.aft;
import java.lang.ref.SoftReference;
import java.util.Date;

/* renamed from: aeq  reason: default package */
/* compiled from: ComicBookData */
public final class aeq implements aft {
    public int a = -1;
    public int b;
    public String c;
    public String d;
    public String e = "";
    public String f = "";
    public int g = -1;
    public aet h = new aet(0);
    public int i = -1;
    public int j = -1;
    public String k = "";
    public long l = 0;
    public Date m;
    SoftReference<Bitmap> n = new SoftReference<>((Object) null);

    public final void a(boolean z) {
        this.h.a(32, z);
    }

    public final boolean a() {
        return !(this.j == -1 && this.i == -1) && !this.h.c(1);
    }

    public final void b(boolean z) {
        this.h.a(1, z);
        if (this.h.c(1)) {
            this.h.b(2);
            this.j = -1;
            this.l = ahc.b();
            if (aei.a().d.c("clear-bookmark-on-read")) {
                this.i = -1;
            }
        }
        aem b2 = ael.b(this);
        if (b2 != null) {
            b2.i();
        }
        aek aek = aei.a().b;
        aek.a(this);
    }

    public final boolean b() {
        return this.i != -1;
    }

    public final boolean c() {
        return this.h.c(32) || this.h.c(NotificationCompat.FLAG_HIGH_PRIORITY);
    }

    public final boolean d() {
        return this.h.c(8);
    }

    public final int e() {
        return this.g;
    }

    public final boolean g() {
        return this.h.c(16);
    }

    public final int j() {
        return this.a;
    }

    public final int k() {
        return aft.a.b;
    }

    public final String l() {
        return this.c;
    }

    public final Bitmap m() {
        if (this.n == null || this.n.get() == null) {
            this.n = new SoftReference<>(ahd.a(this.a, false));
        }
        if (this.n != null) {
            return this.n.get();
        }
        return null;
    }

    public final afu n() {
        return new afn(this);
    }

    public final boolean o() {
        return a();
    }

    public final boolean p() {
        return this.h.c(1);
    }

    public final long q() {
        return this.l;
    }
}
