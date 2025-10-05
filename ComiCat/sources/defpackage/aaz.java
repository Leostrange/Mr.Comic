package defpackage;

import org.apache.http.HttpStatus;

/* renamed from: aaz  reason: default package */
/* compiled from: Trans2FindFirst2 */
final class aaz extends aag {
    static final int a = xj.a("jcifs.smb.client.listSize", 65535);
    static final int b = xj.a("jcifs.smb.client.listCount", (int) HttpStatus.SC_OK);
    private int aA;
    private int aB = 0;
    private String aC;
    private int c;
    private int d;

    aaz(String str, String str2) {
        if (str.equals("\\")) {
            this.A = str;
        } else {
            this.A = str + "\\";
        }
        this.aC = str2;
        this.c = 22;
        this.g = 50;
        this.S = 1;
        this.d = 0;
        this.aA = 260;
        this.M = 0;
        this.N = 10;
        this.O = a;
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
        a((long) this.c, bArr, i);
        int i2 = i + 2;
        a((long) b, bArr, i2);
        int i3 = i2 + 2;
        a((long) this.d, bArr, i3);
        int i4 = i3 + 2;
        a((long) this.aA, bArr, i4);
        int i5 = i4 + 2;
        b((long) this.aB, bArr, i5);
        int i6 = i5 + 4;
        return (i6 + a(this.A + this.aC, bArr, i6)) - i;
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("Trans2FindFirst2[" + super.toString() + ",searchAttributes=0x" + abw.a(this.c, 2) + ",searchCount=" + b + ",flags=0x" + abw.a(this.d, 2) + ",informationLevel=0x" + abw.a(this.aA, 3) + ",searchStorageType=" + this.aB + ",filename=" + this.A + "]");
    }
}
