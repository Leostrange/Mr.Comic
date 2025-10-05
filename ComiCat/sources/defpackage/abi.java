package defpackage;

/* renamed from: abi  reason: default package */
/* compiled from: TransCallNamedPipe */
final class abi extends aag {
    private byte[] a;
    private int b;
    private int c;

    abi(String str, byte[] bArr, int i, int i2) {
        this.T = str;
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.g = 37;
        this.S = 84;
        this.Q = -1;
        this.N = 0;
        this.O = 65535;
        this.P = 0;
        this.R = 2;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.S;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        bArr[i3] = 0;
        bArr[i3 + 1] = 0;
        return 4;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        if (bArr.length - i < this.c) {
            if (abx.a >= 3) {
                e.println("TransCallNamedPipe data too long for buffer");
            }
            return 0;
        }
        System.arraycopy(this.a, this.b, bArr, i, this.c);
        return this.c;
    }

    public final String toString() {
        return new String("TransCallNamedPipe[" + super.toString() + ",pipeName=" + this.T + "]");
    }
}
