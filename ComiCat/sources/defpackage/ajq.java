package defpackage;

/* renamed from: ajq  reason: default package */
/* compiled from: NameN */
public final class ajq extends ajm {
    final int[] c;
    final int d;

    ajq(String str, int i, int[] iArr, int i2) {
        super(str, i);
        if (i2 < 3) {
            throw new IllegalArgumentException("Qlen must >= 3");
        }
        this.c = iArr;
        this.d = i2;
    }

    public final boolean a(int i) {
        return false;
    }

    public final boolean a(int i, int i2) {
        return false;
    }

    public final boolean a(int[] iArr, int i) {
        if (i != this.d) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != this.c[i2]) {
                return false;
            }
        }
        return true;
    }
}
