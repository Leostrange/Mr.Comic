package defpackage;

/* renamed from: aad  reason: default package */
/* compiled from: SmbComReadAndXResponse */
final class aad extends yv {
    int D;
    int E;
    byte[] b;
    int c;
    int d;

    aad() {
    }

    aad(byte[] bArr, int i) {
        this.b = bArr;
        this.c = i;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        int i2 = i + 2;
        this.d = d(bArr, i2);
        int i3 = i2 + 4;
        this.D = d(bArr, i3);
        int i4 = i3 + 2;
        this.E = d(bArr, i4);
        return (i4 + 12) - i;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComReadAndXResponse[" + super.toString() + ",dataCompactionMode=" + this.d + ",dataLength=" + this.D + ",dataOffset=" + this.E + "]");
    }
}
