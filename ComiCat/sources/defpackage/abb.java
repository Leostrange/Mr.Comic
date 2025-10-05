package defpackage;

/* renamed from: abb  reason: default package */
/* compiled from: Trans2FindNext2 */
final class abb extends aag {
    private int a;
    private String aA;
    private int b = 260;
    private int c;
    private int d = 0;

    abb(int i, int i2, String str) {
        this.a = i;
        this.c = i2;
        this.aA = str;
        this.g = 50;
        this.S = 2;
        this.N = 8;
        this.O = aaz.a;
        this.P = 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        bArr[i] = this.S;
        bArr[i + 1] = 0;
        return 2;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i, String str) {
        super.e();
        this.c = i;
        this.aA = str;
        this.m = 0;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        a((long) this.a, bArr, i);
        int i2 = i + 2;
        a((long) aaz.b, bArr, i2);
        int i3 = i2 + 2;
        a((long) this.b, bArr, i3);
        int i4 = i3 + 2;
        b((long) this.c, bArr, i4);
        int i5 = i4 + 4;
        a((long) this.d, bArr, i5);
        int i6 = i5 + 2;
        return (i6 + a(this.aA, bArr, i6)) - i;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("Trans2FindNext2[" + super.toString() + ",sid=" + this.a + ",searchCount=" + aaz.a + ",informationLevel=0x" + abw.a(this.b, 3) + ",resumeKey=0x" + abw.a(this.c, 4) + ",flags=0x" + abw.a(this.d, 2) + ",filename=" + this.aA + "]");
    }
}
