package defpackage;

/* renamed from: abk  reason: default package */
/* compiled from: TransPeekNamedPipe */
final class abk extends aag {
    private int a;

    abk(String str, int i) {
        this.T = str;
        this.a = i;
        this.g = 37;
        this.S = 35;
        this.Q = -1;
        this.N = 6;
        this.O = 1;
        this.P = 0;
        this.R = 2;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.S;
        bArr[i2] = 0;
        a((long) this.a, bArr, i2 + 1);
        return 4;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("TransPeekNamedPipe[" + super.toString() + ",pipeName=" + this.T + "]");
    }
}
