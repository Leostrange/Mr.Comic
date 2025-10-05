package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: zt  reason: default package */
/* compiled from: SmbComNTCreateAndX */
final class zt extends yv {
    private int D = NotificationCompat.FLAG_HIGH_PRIORITY;
    private int E;
    private int F;
    private int G;
    private int H;
    private long I;
    private byte J;
    private int K;
    int b;
    int c;
    private int d;

    zt(String str, int i, int i2, int i3) {
        super((zm) null);
        this.A = str;
        this.g = -94;
        this.c = i2;
        this.c |= 137;
        this.E = i3;
        if ((i & 64) == 64) {
            if ((i & 16) == 16) {
                this.F = 5;
            } else {
                this.F = 4;
            }
        } else if ((i & 16) != 16) {
            this.F = 1;
        } else if ((i & 32) == 32) {
            this.F = 2;
        } else {
            this.F = 3;
        }
        this.G = 64;
        this.H = 2;
        this.J = 3;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = 0;
        this.K = i2;
        int i3 = i2 + 2;
        b((long) this.b, bArr, i3);
        int i4 = i3 + 4;
        b((long) this.d, bArr, i4);
        int i5 = i4 + 4;
        b((long) this.c, bArr, i5);
        int i6 = i5 + 4;
        long j = this.I;
        bArr[i6] = (byte) ((int) j);
        int i7 = i6 + 1;
        long j2 = j >> 8;
        bArr[i7] = (byte) ((int) j2);
        int i8 = i7 + 1;
        long j3 = j2 >> 8;
        bArr[i8] = (byte) ((int) j3);
        int i9 = i8 + 1;
        long j4 = j3 >> 8;
        bArr[i9] = (byte) ((int) j4);
        int i10 = i9 + 1;
        long j5 = j4 >> 8;
        bArr[i10] = (byte) ((int) j5);
        int i11 = i10 + 1;
        long j6 = j5 >> 8;
        bArr[i11] = (byte) ((int) j6);
        int i12 = i11 + 1;
        long j7 = j6 >> 8;
        bArr[i12] = (byte) ((int) j7);
        bArr[i12 + 1] = (byte) ((int) (j7 >> 8));
        int i13 = i6 + 8;
        b((long) this.D, bArr, i13);
        int i14 = i13 + 4;
        b((long) this.E, bArr, i14);
        int i15 = i14 + 4;
        b((long) this.F, bArr, i15);
        int i16 = i15 + 4;
        b((long) this.G, bArr, i16);
        int i17 = i16 + 4;
        b((long) this.H, bArr, i17);
        int i18 = i17 + 4;
        bArr[i18] = this.J;
        return (i18 + 1) - i;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int a = a(this.A, bArr, i);
        a((long) (this.t ? this.A.length() * 2 : a), bArr, this.K);
        return a;
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
        return new String("SmbComNTCreateAndX[" + super.toString() + ",flags=0x" + abw.a(this.b, 2) + ",rootDirectoryFid=" + this.d + ",desiredAccess=0x" + abw.a(this.c, 4) + ",allocationSize=" + this.I + ",extFileAttributes=0x" + abw.a(this.D, 4) + ",shareAccess=0x" + abw.a(this.E, 4) + ",createDisposition=0x" + abw.a(this.F, 4) + ",createOptions=0x" + abw.a(this.G, 8) + ",impersonationLevel=0x" + abw.a(this.H, 4) + ",securityFlags=0x" + abw.a((int) this.J, 2) + ",name=" + this.A + "]");
    }
}
