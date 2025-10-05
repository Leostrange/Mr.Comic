package defpackage;

import defpackage.hy;
import java.util.List;

/* renamed from: im  reason: default package */
/* compiled from: DbxClientV2 */
public final class im extends in {

    /* renamed from: im$a */
    /* compiled from: DbxClientV2 */
    static final class a extends io {
        private final String b;

        public a(hl hlVar, String str, hk hkVar) {
            super(hlVar, hkVar);
            if (str == null) {
                throw new NullPointerException("accessToken");
            }
            this.b = str;
        }

        /* access modifiers changed from: protected */
        public final void a(List<hy.a> list) {
            hm.a(list, this.b);
        }
    }

    public im(hl hlVar, String str) {
        this(hlVar, str, hk.a);
    }

    private im(hl hlVar, String str, hk hkVar) {
        super(new a(hlVar, str, hkVar));
    }
}
