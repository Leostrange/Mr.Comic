package defpackage;

import android.support.v4.app.FragmentTransaction;

/* renamed from: abc  reason: default package */
/* compiled from: Trans2GetDfsReferral */
final class abc extends aag {
    private int a = 3;

    abc(String str) {
        this.A = str;
        this.g = 50;
        this.S = 16;
        this.M = 0;
        this.N = 0;
        this.O = FragmentTransaction.TRANSIT_ENTER_MASK;
        this.P = 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        bArr[i] = this.S;
        bArr[i + 1] = 0;
        return 2;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        a((long) this.a, bArr, i);
        int i2 = i + 2;
        return (i2 + a(this.A, bArr, i2)) - i;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("Trans2GetDfsReferral[" + super.toString() + ",maxReferralLevel=0x" + this.a + ",filename=" + this.A + "]");
    }
}
