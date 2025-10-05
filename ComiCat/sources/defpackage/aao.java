package defpackage;

/* renamed from: aao  reason: default package */
/* compiled from: SmbComWriteResponse */
final class aao extends zm {
    long a;

    aao() {
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
        this.a = ((long) d(bArr, i)) & 65535;
        return 8;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComWriteResponse[" + super.toString() + ",count=" + this.a + "]");
    }
}
