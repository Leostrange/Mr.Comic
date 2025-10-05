package defpackage;

/* renamed from: abm  reason: default package */
/* compiled from: TransTransactNamedPipe */
final class abm extends aag {
    private byte[] a;
    private int b;
    private int c;
    private int d;

    abm(int i, byte[] bArr, int i2, int i3) {
        this.b = i;
        this.a = bArr;
        this.c = i2;
        this.d = i3;
        this.g = 37;
        this.S = 38;
        this.N = 0;
        this.O = 65535;
        this.P = 0;
        this.R = 2;
        this.T = "\\PIPE\\";
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.S;
        bArr[i2] = 0;
        a((long) this.b, bArr, i2 + 1);
        return 4;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        if (bArr.length - i < this.d) {
            if (abx.a >= 3) {
                e.println("TransTransactNamedPipe data too long for buffer");
            }
            return 0;
        }
        System.arraycopy(this.a, this.c, bArr, i, this.d);
        return this.d;
    }

    public final String toString() {
        return new String("TransTransactNamedPipe[" + super.toString() + ",pipeFid=" + this.b + "]");
    }
}
