package defpackage;

/* renamed from: abg  reason: default package */
/* compiled from: Trans2QueryPathInformation */
final class abg extends aag {
    private int a;

    abg(String str, int i) {
        this.A = str;
        this.a = i;
        this.g = 50;
        this.S = 5;
        this.M = 0;
        this.N = 2;
        this.O = 40;
        this.P = 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        bArr[i] = this.S;
        bArr[i + 1] = 0;
        return 2;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        a((long) this.a, bArr, i);
        int i2 = i + 2;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        int i4 = i3 + 1;
        bArr[i3] = 0;
        int i5 = i4 + 1;
        bArr[i4] = 0;
        int i6 = i5 + 1;
        bArr[i5] = 0;
        return (i6 + a(this.A, bArr, i6)) - i;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("Trans2QueryPathInformation[" + super.toString() + ",informationLevel=0x" + abw.a(this.a, 3) + ",filename=" + this.A + "]");
    }
}
