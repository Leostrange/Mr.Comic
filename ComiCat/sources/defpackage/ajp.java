package defpackage;

/* renamed from: ajp  reason: default package */
/* compiled from: Name3 */
public final class ajp extends ajm {
    final int c;
    final int d;
    final int e;

    ajp(String str, int i, int i2, int i3, int i4) {
        super(str, i);
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    public final boolean a(int i) {
        return false;
    }

    public final boolean a(int i, int i2) {
        return false;
    }

    public final boolean a(int[] iArr, int i) {
        return i == 3 && iArr[0] == this.c && iArr[1] == this.d && iArr[2] == this.e;
    }
}
