package defpackage;

/* renamed from: aal  reason: default package */
/* compiled from: SmbComWrite */
final class aal extends zm {
    int D;
    byte[] E;
    int a;
    int b;
    int c;
    int d;

    aal() {
        this.g = 11;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        a((long) this.a, bArr, i);
        int i2 = i + 2;
        a((long) this.b, bArr, i2);
        int i3 = i2 + 2;
        b((long) this.c, bArr, i3);
        int i4 = i3 + 4;
        a((long) this.d, bArr, i4);
        return (i4 + 2) - i;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = 1;
        a((long) this.b, bArr, i2);
        int i3 = i2 + 2;
        System.arraycopy(this.E, this.D, bArr, i3, this.b);
        return (i3 + this.b) - i;
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
        return new String("SmbComWrite[" + super.toString() + ",fid=" + this.a + ",count=" + this.b + ",offset=" + this.c + ",remaining=" + this.d + "]");
    }
}
