package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: aaf  reason: default package */
/* compiled from: SmbComSessionSetupAndXResponse */
final class aaf extends yv {
    private String D = "";
    private String E = "";
    boolean b;
    byte[] c = null;
    private String d = "";

    aaf(zm zmVar) {
        super(zmVar);
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
        boolean z = true;
        if ((bArr[i] & 1) != 1) {
            z = false;
        }
        this.b = z;
        int i2 = i + 2;
        if (this.v) {
            int d2 = d(bArr, i2);
            i2 += 2;
            this.c = new byte[d2];
        }
        return i2 - i;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        int i2;
        if (this.v) {
            System.arraycopy(bArr, i, this.c, 0, this.c.length);
            i2 = this.c.length + i;
        } else {
            i2 = i;
        }
        this.d = a(bArr, i2, (int) NotificationCompat.FLAG_LOCAL_ONLY, this.t);
        int a = i2 + a(this.d, i2);
        this.D = b(bArr, a, this.s + i, this.t);
        int a2 = a + a(this.D, a);
        if (!this.v) {
            this.E = b(bArr, a2, this.s + i, this.t);
            a2 += a(this.E, a2);
        }
        return a2 - i;
    }

    public final String toString() {
        return new String("SmbComSessionSetupAndXResponse[" + super.toString() + ",isLoggedInAsGuest=" + this.b + ",nativeOs=" + this.d + ",nativeLanMan=" + this.D + ",primaryDomain=" + this.E + "]");
    }
}
