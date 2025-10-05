package defpackage;

import defpackage.xy;

/* renamed from: xw  reason: default package */
/* compiled from: MsrpcShareEnum */
public final class xw extends xy.a {

    /* renamed from: xw$a */
    /* compiled from: MsrpcShareEnum */
    class a extends aaw {
        a(xy.c cVar) {
            this.b = cVar.a;
            this.c = cVar.b;
            this.d = cVar.c;
        }
    }

    public xw(String str) {
        super("\\\\" + str, new xy.e());
        this.f = 0;
        this.g = 3;
    }

    public final za[] d() {
        xy.e eVar = (xy.e) this.d;
        a[] aVarArr = new a[eVar.a];
        for (int i = 0; i < eVar.a; i++) {
            aVarArr[i] = new a(eVar.b[i]);
        }
        return aVarArr;
    }
}
