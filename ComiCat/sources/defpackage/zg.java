package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: zg  reason: default package */
/* compiled from: NetShareEnumResponse */
final class zg extends aah {
    private int S;
    private int a;

    zg() {
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        this.P = d(bArr, i);
        int i2 = i + 2;
        this.a = d(bArr, i2);
        int i3 = i2 + 2;
        this.Q = d(bArr, i3);
        int i4 = i3 + 2;
        this.S = d(bArr, i4);
        return (i4 + 2) - i;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        this.t = false;
        this.R = new aaw[this.Q];
        int i3 = i;
        for (int i4 = 0; i4 < this.Q; i4++) {
            za[] zaVarArr = this.R;
            aaw aaw = new aaw();
            zaVarArr[i4] = aaw;
            aaw.b = a(bArr, i3, 13, false);
            int i5 = i3 + 14;
            aaw.c = d(bArr, i5);
            int i6 = i5 + 2;
            int e = e(bArr, i6);
            i3 = i6 + 4;
            aaw.d = a(bArr, ((e & 65535) - this.a) + i, (int) NotificationCompat.FLAG_HIGH_PRIORITY, false);
            if (abx.a >= 4) {
                e.println(aaw);
            }
        }
        return i3 - i;
    }

    public final String toString() {
        return new String("NetShareEnumResponse[" + super.toString() + ",status=" + this.P + ",converter=" + this.a + ",entriesReturned=" + this.Q + ",totalAvailableEntries=" + this.S + "]");
    }
}
