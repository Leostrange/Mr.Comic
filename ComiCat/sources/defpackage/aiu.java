package defpackage;

import org.apache.http.message.TokenParser;

/* renamed from: aiu  reason: default package */
/* compiled from: JsonReadContext */
public final class aiu extends aik {
    protected final aiu c;
    protected int d;
    protected int e;
    protected String f;
    protected aiu g = null;

    public aiu(aiu aiu, int i, int i2, int i3) {
        this.a = i;
        this.c = aiu;
        this.d = i2;
        this.e = i3;
        this.b = -1;
    }

    private void a(int i, int i2, int i3) {
        this.a = i;
        this.b = -1;
        this.d = i2;
        this.e = i3;
        this.f = null;
    }

    public final aig a(Object obj) {
        return new aig(obj, -1, this.d, this.e);
    }

    public final aiu a(int i, int i2) {
        aiu aiu = this.g;
        if (aiu == null) {
            aiu aiu2 = new aiu(this, 1, i, i2);
            this.g = aiu2;
            return aiu2;
        }
        aiu.a(1, i, i2);
        return aiu;
    }

    public final void a(String str) {
        this.f = str;
    }

    public final aiu b(int i, int i2) {
        aiu aiu = this.g;
        if (aiu == null) {
            aiu aiu2 = new aiu(this, 2, i, i2);
            this.g = aiu2;
            return aiu2;
        }
        aiu.a(2, i, i2);
        return aiu;
    }

    public final String g() {
        return this.f;
    }

    public final aiu h() {
        return this.c;
    }

    public final boolean i() {
        int i = this.b + 1;
        this.b = i;
        return this.a != 0 && i > 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        switch (this.a) {
            case 0:
                sb.append("/");
                break;
            case 1:
                sb.append('[');
                sb.append(f());
                sb.append(']');
                break;
            case 2:
                sb.append('{');
                if (this.f != null) {
                    sb.append(TokenParser.DQUOTE);
                    ajt.a(sb, this.f);
                    sb.append(TokenParser.DQUOTE);
                } else {
                    sb.append('?');
                }
                sb.append('}');
                break;
        }
        return sb.toString();
    }
}
