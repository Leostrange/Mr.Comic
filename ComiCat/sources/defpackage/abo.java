package defpackage;

/* renamed from: abo  reason: default package */
/* compiled from: TransWaitNamedPipe */
final class abo extends aag {
    abo(String str) {
        this.T = str;
        this.g = 37;
        this.S = 83;
        this.Q = -1;
        this.N = 0;
        this.O = 0;
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
        return 0;
    }

    public final String toString() {
        return new String("TransWaitNamedPipe[" + super.toString() + ",pipeName=" + this.T + "]");
    }
}
