package defpackage;

/* renamed from: aaa  reason: default package */
/* compiled from: SmbComQueryInformation */
final class aaa extends zm {
    aaa(String str) {
        this.A = str;
        this.g = 8;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = 4;
        return (i2 + a(this.A, bArr, i2)) - i;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComQueryInformation[" + super.toString() + ",filename=" + this.A + "]");
    }
}
