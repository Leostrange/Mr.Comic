package defpackage;

/* renamed from: aik  reason: default package */
/* compiled from: JsonStreamContext */
public abstract class aik {
    protected int a;
    protected int b;

    protected aik() {
    }

    public final boolean a() {
        return this.a == 1;
    }

    public final boolean b() {
        return this.a == 0;
    }

    public final boolean c() {
        return this.a == 2;
    }

    public final String d() {
        switch (this.a) {
            case 0:
                return "ROOT";
            case 1:
                return "ARRAY";
            case 2:
                return "OBJECT";
            default:
                return "?";
        }
    }

    public final int e() {
        return this.b + 1;
    }

    public final int f() {
        if (this.b < 0) {
            return 0;
        }
        return this.b;
    }
}
