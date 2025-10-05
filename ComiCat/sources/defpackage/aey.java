package defpackage;

import defpackage.ue;
import java.io.IOException;

/* renamed from: aey  reason: default package */
/* compiled from: CbrPage */
public final class aey implements aff {
    uo a;
    ua b;

    public aey(uo uoVar, ua uaVar) {
        this.a = uoVar;
        this.b = uaVar;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public ags a() {
        boolean z;
        byte[] bArr;
        ags ags = new ags((int) this.a.n);
        try {
            ua uaVar = this.b;
            uo uoVar = this.a;
            if (!uaVar.c.contains(uoVar)) {
                throw new ue(ue.a.headerNotInArchive);
            }
            try {
                ux uxVar = uaVar.b;
                uxVar.f = ags;
                uxVar.b = 0;
                uxVar.c = false;
                uxVar.d = false;
                uxVar.h = false;
                uxVar.i = false;
                uxVar.j = false;
                uxVar.u = 0;
                uxVar.v = 0;
                uxVar.k = 0;
                uxVar.o = 0;
                uxVar.n = 0;
                uxVar.m = 0;
                uxVar.l = 0;
                uxVar.t = -1;
                uxVar.s = -1;
                uxVar.r = -1;
                uxVar.w = -1;
                uxVar.g = null;
                uxVar.x = 0;
                uxVar.q = 0;
                uxVar.p = 0;
                ux uxVar2 = uaVar.b;
                long f = ((long) uoVar.f()) + uoVar.e();
                uxVar2.b = uoVar.m;
                uxVar2.e = new ui(uxVar2.a.a, f, uxVar2.b + f);
                uxVar2.g = uoVar;
                uxVar2.n = 0;
                uxVar2.m = 0;
                uxVar2.t = -1;
                uaVar.b.s = uaVar.d.g ? 0 : -1;
                if (uaVar.f == null) {
                    uaVar.f = new uy(uaVar.b);
                }
                boolean z2 = false;
                if (!uoVar.i()) {
                    ub ubVar = ua.h;
                    if (ubVar.b.tryLock()) {
                        byte[] bArr2 = null;
                        if (ubVar.a.a == null) {
                            ubVar.a.a = new byte[4194304];
                        }
                        if (ubVar.a.b) {
                            ubVar.a.b = false;
                            bArr2 = ubVar.a.a;
                        }
                        ubVar.b.unlock();
                        bArr = bArr2;
                    } else {
                        bArr = null;
                    }
                    z2 = bArr != null;
                    uaVar.f.a(bArr);
                }
                z = z2;
                uaVar.f.a(uoVar.n);
                uaVar.f.a((int) uoVar.j, uoVar.i());
                uo uoVar2 = uaVar.b.g;
                if ((uoVar2.h() ? uaVar.b.t ^ -1 : uaVar.b.s ^ -1) != ((long) uoVar2.i)) {
                    throw new ue(ue.a.crcError);
                }
                if (z) {
                    ua.h.a();
                }
                return ags;
            } catch (Exception e) {
                uaVar.f.b();
                if (z) {
                    ua.h.a();
                }
                if (e instanceof ue) {
                    throw ((ue) e);
                }
                throw new ue(e);
            } catch (Exception e2) {
                if (e2 instanceof ue) {
                    throw ((ue) e2);
                }
                throw new ue(e2);
            }
        } catch (ue e3) {
            e3.toString();
            try {
                ags.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return null;
        }
    }
}
