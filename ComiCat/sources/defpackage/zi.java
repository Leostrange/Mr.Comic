package defpackage;

/* renamed from: zi  reason: default package */
/* compiled from: NtTransQuerySecurityDesc */
final class zi extends zx {
    int a;
    int b;

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        a((long) this.a, bArr, i);
        int i2 = i + 2;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        int i4 = i3 + 1;
        bArr[i3] = 0;
        b((long) this.b, bArr, i4);
        return (i4 + 4) - i;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("NtTransQuerySecurityDesc[" + super.toString() + ",fid=0x" + abw.a(this.a, 4) + ",securityInformation=0x" + abw.a(this.b, 8) + "]");
    }
}
