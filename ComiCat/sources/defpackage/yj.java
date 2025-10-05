package defpackage;

import java.net.InetAddress;

/* renamed from: yj  reason: default package */
/* compiled from: NameServicePacket */
abstract class yj {
    int a;
    yk[] b;
    int c;
    int d;
    int e;
    int f = 1;
    int g;
    int h;
    int i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n = true;
    boolean o;
    boolean p = true;
    yf q;
    yf r;
    int s;
    int t = 1;
    int u;
    int v;
    int w;
    int x;
    InetAddress y;

    yj() {
    }

    static void a(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) ((i2 >> 8) & 255);
        bArr[i3 + 1] = (byte) (i2 & 255);
    }

    static int b(byte[] bArr, int i2) {
        return ((bArr[i2] & 255) << 8) + (bArr[i2 + 1] & 255);
    }

    static int c(byte[] bArr, int i2) {
        return ((bArr[i2] & 255) << 24) + ((bArr[i2 + 1] & 255) << 16) + ((bArr[i2 + 2] & 255) << 8) + (bArr[i2 + 3] & 255);
    }

    /* access modifiers changed from: package-private */
    public abstract int a(byte[] bArr);

    /* access modifiers changed from: package-private */
    public abstract int a(byte[] bArr, int i2);

    /* access modifiers changed from: package-private */
    public abstract int b(byte[] bArr);

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr) {
        int a2 = this.q.a(bArr, 12) + 12;
        a(this.s, bArr, a2);
        int i2 = a2 + 2;
        a(this.t, bArr, i2);
        return (i2 + 2) - 12;
    }

    /* access modifiers changed from: package-private */
    public final int d(byte[] bArr, int i2) {
        int a2;
        if ((bArr[12] & 192) == 192) {
            this.r = this.q;
            a2 = i2 + 2;
        } else {
            a2 = this.r.a(bArr) + 12;
        }
        this.u = b(bArr, a2);
        int i3 = a2 + 2;
        this.v = b(bArr, i3);
        int i4 = i3 + 2;
        this.w = c(bArr, i4);
        int i5 = i4 + 4;
        this.x = b(bArr, i5);
        int i6 = i5 + 2;
        this.b = new yk[(this.x / 6)];
        int i7 = this.x + i6;
        this.a = 0;
        while (i6 < i7) {
            i6 += a(bArr, i6);
            this.a++;
        }
        return i6 - 12;
    }

    public String toString() {
        String str;
        String str2;
        String str3;
        switch (this.d) {
            case 0:
                str = "QUERY";
                break;
            case 7:
                str = "WACK";
                break;
            default:
                str = Integer.toString(this.d);
                break;
        }
        switch (this.e) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
                break;
            default:
                new StringBuilder("0x").append(abw.a(this.e, 1));
                break;
        }
        switch (this.s) {
            case 32:
                str2 = "NB";
                break;
            case 33:
                str2 = "NBSTAT";
                break;
            default:
                str2 = "0x" + abw.a(this.s, 4);
                break;
        }
        switch (this.u) {
            case 1:
                str3 = "A";
                break;
            case 2:
                str3 = "NS";
                break;
            case 10:
                str3 = "NULL";
                break;
            case 32:
                str3 = "NB";
                break;
            case 33:
                str3 = "NBSTAT";
                break;
            default:
                str3 = "0x" + abw.a(this.u, 4);
                break;
        }
        return new String("nameTrnId=" + this.c + ",isResponse=" + this.k + ",opCode=" + str + ",isAuthAnswer=" + this.l + ",isTruncated=" + this.m + ",isRecurAvailable=" + this.o + ",isRecurDesired=" + this.n + ",isBroadcast=" + this.p + ",resultCode=" + this.e + ",questionCount=" + this.f + ",answerCount=" + this.g + ",authorityCount=" + this.h + ",additionalCount=" + this.i + ",questionName=" + this.q + ",questionType=" + str2 + ",questionClass=" + (this.t == 1 ? "IN" : "0x" + abw.a(this.t, 4)) + ",recordName=" + this.r + ",recordType=" + str3 + ",recordClass=" + (this.v == 1 ? "IN" : "0x" + abw.a(this.v, 4)) + ",ttl=" + this.w + ",rDataLength=" + this.x);
    }
}
