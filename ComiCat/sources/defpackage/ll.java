package defpackage;

import java.nio.charset.Charset;

/* renamed from: ll  reason: default package */
/* compiled from: AbstractHttpContent */
public abstract class ll implements ls {
    ly a;
    private long b;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    protected ll(String str) {
        this(str == null ? null : new ly(str));
    }

    protected ll(ly lyVar) {
        this.b = -1;
        this.a = lyVar;
    }

    public static long a(ls lsVar) {
        if (!lsVar.d()) {
            return -1;
        }
        return nx.a(lsVar);
    }

    public final long a() {
        if (this.b == -1) {
            this.b = a(this);
        }
        return this.b;
    }

    /* access modifiers changed from: protected */
    public final Charset b() {
        return (this.a == null || this.a.b() == null) ? np.a : this.a.b();
    }

    public final String c() {
        if (this.a == null) {
            return null;
        }
        return this.a.a();
    }

    public boolean d() {
        return true;
    }
}
