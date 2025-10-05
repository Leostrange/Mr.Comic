package defpackage;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* renamed from: mx  reason: default package */
/* compiled from: JsonObjectParser */
public final class mx implements of {
    public final mv a;
    public final Set<String> b;

    /* renamed from: mx$a */
    /* compiled from: JsonObjectParser */
    public static class a {
        final mv a;
        public Collection<String> b = new HashSet();

        public a(mv mvVar) {
            this.a = (mv) ni.a(mvVar);
        }

        public final mx a() {
            return new mx(this);
        }
    }

    public mx(mv mvVar) {
        this(new a(mvVar));
    }

    protected mx(a aVar) {
        this.a = aVar.a;
        this.b = new HashSet(aVar.b);
    }

    public final <T> T a(InputStream inputStream, Charset charset, Class<T> cls) {
        boolean z = false;
        my b2 = this.a.b(inputStream);
        if (!this.b.isEmpty()) {
            try {
                if (!(b2.a(this.b) == null || b2.d() == nb.END_OBJECT)) {
                    z = true;
                }
                oh.a(z, "wrapper key(s) not found: %s", this.b);
            } catch (Throwable th) {
                b2.b();
                throw th;
            }
        }
        return b2.a(cls, true);
    }
}
