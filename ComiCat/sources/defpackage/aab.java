package defpackage;

import java.util.Date;

/* renamed from: aab  reason: default package */
/* compiled from: SmbComQueryInformationResponse */
final class aab extends zm implements zc {
    private int a = 0;
    private long b = 0;
    private long c;
    private int d = 0;

    aab(long j) {
        this.c = j;
        this.g = 8;
    }

    public final int a() {
        return this.a;
    }

    public final long b() {
        return this.b + this.c;
    }

    public final long c() {
        return this.b + this.c;
    }

    public final long d() {
        return (long) this.d;
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
        if (this.r == 0) {
            return 0;
        }
        this.a = d(bArr, i);
        int i2 = i + 2;
        this.b = h(bArr, i2);
        this.d = e(bArr, i2 + 4);
        return 20;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComQueryInformationResponse[" + super.toString() + ",fileAttributes=0x" + abw.a(this.a, 4) + ",lastWriteTime=" + new Date(this.b) + ",fileSize=" + this.d + "]");
    }
}
