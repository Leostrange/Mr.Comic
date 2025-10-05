package defpackage;

/* renamed from: abe  reason: default package */
/* compiled from: Trans2QueryFSInformation */
final class abe extends aag {
    private int a = 1;

    abe() {
        this.g = 50;
        this.S = 3;
        this.L = 2;
        this.M = 0;
        this.N = 0;
        this.O = 800;
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
        return (i + 2) - i;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("Trans2QueryFSInformation[" + super.toString() + ",informationLevel=0x" + abw.a(this.a, 3) + "]");
    }
}
