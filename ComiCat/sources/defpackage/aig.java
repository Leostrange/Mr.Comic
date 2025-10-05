package defpackage;

import java.io.Serializable;

/* renamed from: aig  reason: default package */
/* compiled from: JsonLocation */
public final class aig implements Serializable {
    public static final aig a = new aig("N/A", -1, -1, -1, (byte) 0);
    final long b;
    final long c;
    final int d;
    final int e;
    final Object f;

    public aig(Object obj, long j, int i, int i2) {
        this(obj, j, i, i2, (byte) 0);
    }

    private aig(Object obj, long j, int i, int i2, byte b2) {
        this.f = obj;
        this.b = -1;
        this.c = j;
        this.d = i;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof aig)) {
            return false;
        }
        aig aig = (aig) obj;
        if (this.f == null) {
            if (aig.f != null) {
                return false;
            }
        } else if (!this.f.equals(aig.f)) {
            return false;
        }
        return this.d == aig.d && this.e == aig.e && this.c == aig.c && this.b == aig.b;
    }

    public final int hashCode() {
        return ((((this.f == null ? 1 : this.f.hashCode()) ^ this.d) + this.e) ^ ((int) this.c)) + ((int) this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(80);
        sb.append("[Source: ");
        if (this.f == null) {
            sb.append("UNKNOWN");
        } else {
            sb.append(this.f.toString());
        }
        sb.append("; line: ");
        sb.append(this.d);
        sb.append(", column: ");
        sb.append(this.e);
        sb.append(']');
        return sb.toString();
    }
}
