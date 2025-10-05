package defpackage;

import com.box.androidsdk.content.BoxConstants;

/* renamed from: xl  reason: default package */
/* compiled from: DcerpcBind */
public final class xl extends xr {
    static final String[] a = {BoxConstants.ROOT_FOLDER_ID, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED", "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED", "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"};
    xm b;
    int c;
    int d;

    public xl() {
    }

    xl(xm xmVar, xq xqVar) {
        this.b = xmVar;
        this.c = xqVar.b;
        this.d = xqVar.c;
        this.f = 11;
        this.g = 3;
    }

    public final xp a() {
        if (this.k == 0) {
            return null;
        }
        int i = this.k;
        return new xp(i < 4 ? a[i] : "0x" + abw.a(i, 4));
    }

    public final void a(xz xzVar) {
        xzVar.f(this.c);
        xzVar.f(this.d);
        xzVar.g(0);
        xzVar.e(1);
        xzVar.e(0);
        xzVar.f(0);
        xzVar.f(0);
        xzVar.e(1);
        xzVar.e(0);
        this.b.f.e(xzVar);
        xzVar.f(this.b.g);
        xzVar.f(this.b.h);
        e.e(xzVar);
        xzVar.g(2);
    }

    public final int b() {
        return 0;
    }

    public final void b(xz xzVar) {
        xzVar.c();
        xzVar.c();
        xzVar.d();
        xzVar.c(xzVar.c());
        xzVar.d(4);
        xzVar.b();
        xzVar.d(4);
        this.k = xzVar.c();
        xzVar.c();
        xzVar.c(20);
    }
}
