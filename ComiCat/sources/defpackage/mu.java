package defpackage;

import java.io.IOException;

/* renamed from: mu  reason: default package */
/* compiled from: GenericJson */
public class mu extends nw implements Cloneable {
    mv a;

    /* renamed from: a */
    public mu d() {
        return (mu) super.clone();
    }

    /* renamed from: a */
    public mu d(String str, Object obj) {
        return (mu) super.d(str, obj);
    }

    public final String c() {
        return this.a != null ? this.a.a(this, true) : super.toString();
    }

    public String toString() {
        if (this.a == null) {
            return super.toString();
        }
        try {
            return this.a.a(this, false);
        } catch (IOException e) {
            throw om.a(e);
        }
    }
}
