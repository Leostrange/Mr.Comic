package defpackage;

/* renamed from: ajo  reason: default package */
/* compiled from: Name2 */
public final class ajo extends ajm {
    final int c;
    final int d;

    ajo(String str, int i, int i2, int i3) {
        super(str, i);
        this.c = i2;
        this.d = i3;
    }

    public final boolean a(int i) {
        return false;
    }

    public final boolean a(int i, int i2) {
        return i == this.c && i2 == this.d;
    }

    public final boolean a(int[] iArr, int i) {
        return i == 2 && iArr[0] == this.c && iArr[1] == this.d;
    }
}
