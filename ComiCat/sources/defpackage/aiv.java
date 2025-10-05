package defpackage;

import org.apache.http.message.TokenParser;

/* renamed from: aiv  reason: default package */
/* compiled from: JsonWriteContext */
public final class aiv extends aik {
    protected final aiv c;
    protected String d;
    protected aiv e = null;

    aiv(int i, aiv aiv) {
        this.a = i;
        this.c = aiv;
        this.b = -1;
    }

    private final aiv a(int i) {
        this.a = i;
        this.b = -1;
        this.d = null;
        return this;
    }

    public final int a(String str) {
        if (this.a != 2 || this.d != null) {
            return 4;
        }
        this.d = str;
        return this.b < 0 ? 0 : 1;
    }

    public final aiv g() {
        aiv aiv = this.e;
        if (aiv != null) {
            return aiv.a(1);
        }
        aiv aiv2 = new aiv(1, this);
        this.e = aiv2;
        return aiv2;
    }

    public final aiv h() {
        aiv aiv = this.e;
        if (aiv != null) {
            return aiv.a(2);
        }
        aiv aiv2 = new aiv(2, this);
        this.e = aiv2;
        return aiv2;
    }

    public final aiv i() {
        return this.c;
    }

    public final int j() {
        if (this.a == 2) {
            if (this.d == null) {
                return 5;
            }
            this.d = null;
            this.b++;
            return 2;
        } else if (this.a == 1) {
            int i = this.b;
            this.b++;
            return i < 0 ? 0 : 1;
        } else {
            this.b++;
            return this.b == 0 ? 0 : 3;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        if (this.a == 2) {
            sb.append('{');
            if (this.d != null) {
                sb.append(TokenParser.DQUOTE);
                sb.append(this.d);
                sb.append(TokenParser.DQUOTE);
            } else {
                sb.append('?');
            }
            sb.append('}');
        } else if (this.a == 1) {
            sb.append('[');
            sb.append(f());
            sb.append(']');
        } else {
            sb.append("/");
        }
        return sb.toString();
    }
}
