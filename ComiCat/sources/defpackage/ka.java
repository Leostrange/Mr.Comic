package defpackage;

import defpackage.Cif;
import defpackage.kb;

/* renamed from: ka  reason: default package */
/* compiled from: DbxUserUsersRequests */
public final class ka {
    private final io a;

    public ka(io ioVar) {
        this.a = ioVar;
    }

    public final kb a() {
        try {
            return (kb) this.a.a(this.a.a.b, "2/users/get_current_account", null, Cif.h.a, kb.a.a, Cif.h.a);
        } catch (ho e) {
            throw new hh(e.b, e.c, "Unexpected error response for \"get_current_account\":" + e.a);
        }
    }
}
