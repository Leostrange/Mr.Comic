package defpackage;

import defpackage.hy;
import defpackage.it;
import defpackage.iu;
import defpackage.iw;
import defpackage.jb;
import defpackage.jc;
import defpackage.jd;
import defpackage.jf;
import defpackage.jh;
import java.util.List;

/* renamed from: iq  reason: default package */
/* compiled from: DbxUserFilesRequests */
public final class iq {
    private final io a;

    public iq(io ioVar) {
        this.a = ioVar;
    }

    public final hi<iw> a(it itVar, List<hy.a> list) {
        try {
            return this.a.a(this.a.a.c, "2/files/download", itVar, list, it.a.a, iw.a.a, iu.a.a);
        } catch (ho e) {
            throw new iv("2/files/download", e.b, e.c, (iu) e.a);
        }
    }

    public final jh a(jb jbVar) {
        try {
            return (jh) this.a.a(this.a.a.b, "2/files/list_folder", jbVar, jb.a.a, jh.a.a, jf.a.a);
        } catch (ho e) {
            throw new jg("2/files/list_folder", e.b, e.c, (jf) e.a);
        }
    }

    public final jh a(jc jcVar) {
        try {
            return (jh) this.a.a(this.a.a.b, "2/files/list_folder/continue", jcVar, jc.a.a, jh.a.a, jd.a.a);
        } catch (ho e) {
            throw new je("2/files/list_folder/continue", e.b, e.c, (jd) e.a);
        }
    }
}
