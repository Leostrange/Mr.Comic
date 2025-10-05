package defpackage;

/* renamed from: aan  reason: default package */
/* compiled from: SmbComWriteAndXResponse */
final class aan extends yv {
    long b;

    aan() {
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
        this.b = ((long) d(bArr, i)) & 65535;
        return 8;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComWriteAndXResponse[" + super.toString() + ",count=" + this.b + "]");
    }
}
