package defpackage;

import defpackage.xx;

/* renamed from: xv  reason: default package */
/* compiled from: MsrpcDfsRootEnum */
public final class xv extends xx.f {
    public xv(String str) {
        super(str, new xx.c(), new yb());
        this.l.a = this.c;
        this.l.b = new xx.b();
        this.f = 0;
        this.g = 3;
    }

    public final za[] d() {
        xx.b bVar = (xx.b) this.l.b;
        aaw[] aawArr = new aaw[bVar.a];
        for (int i = 0; i < bVar.a; i++) {
            aawArr[i] = new aaw(bVar.b[i].a);
        }
        return aawArr;
    }
}
