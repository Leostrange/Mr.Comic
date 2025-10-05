package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: abz  reason: default package */
/* compiled from: RC4 */
public final class abz {
    byte[] a;
    int b;
    int c;

    public abz() {
    }

    public abz(byte[] bArr) {
        a(bArr, bArr.length);
    }

    private void a(byte[] bArr, int i) {
        this.a = new byte[NotificationCompat.FLAG_LOCAL_ONLY];
        this.b = 0;
        while (this.b < 256) {
            this.a[this.b] = (byte) this.b;
            this.b++;
        }
        this.c = 0;
        this.b = 0;
        while (this.b < 256) {
            this.c = (this.c + bArr[(this.b % i) + 0] + this.a[this.b]) & 255;
            byte b2 = this.a[this.b];
            this.a[this.b] = this.a[this.c];
            this.a[this.c] = b2;
            this.b++;
        }
        this.c = 0;
        this.b = 0;
    }

    public final void a(byte[] bArr, int i, byte[] bArr2, int i2) {
        while (i < 16) {
            this.b = (this.b + 1) & 255;
            this.c = (this.c + this.a[this.b]) & 255;
            byte b2 = this.a[this.b];
            this.a[this.b] = this.a[this.c];
            this.a[this.c] = b2;
            bArr2[i2] = (byte) (bArr[i] ^ this.a[(this.a[this.b] + this.a[this.c]) & 255]);
            i2++;
            i++;
        }
    }
}
