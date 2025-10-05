package defpackage;

/* renamed from: ajn  reason: default package */
/* compiled from: Name1 */
public final class ajn extends ajm {
    static final ajn c = new ajn("", 0, 0);
    final int d;

    ajn(String str, int i, int i2) {
        super(str, i);
        this.d = i2;
    }

    public static final ajn b() {
        return c;
    }

    public final boolean a(int i) {
        return i == this.d;
    }

    public final boolean a(int i, int i2) {
        return i == this.d && i2 == 0;
    }

    public final boolean a(int[] iArr, int i) {
        return i == 1 && iArr[0] == this.d;
    }
}
