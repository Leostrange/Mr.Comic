package defpackage;

/* renamed from: ajm  reason: default package */
/* compiled from: Name */
public abstract class ajm {
    protected final String a;
    protected final int b;

    protected ajm(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final String a() {
        return this.a;
    }

    public abstract boolean a(int i);

    public abstract boolean a(int i, int i2);

    public abstract boolean a(int[] iArr, int i);

    public boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return this.b;
    }

    public String toString() {
        return this.a;
    }
}
