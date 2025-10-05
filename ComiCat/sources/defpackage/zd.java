package defpackage;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: zd  reason: default package */
/* compiled from: NetServerEnum2 */
final class zd extends aag {
    static final String[] a = {"WrLehDO\u0000B16BBDz\u0000", "WrLehDz\u0000B16BBDz\u0000"};
    String b;
    String c = null;
    int d;

    zd(String str, int i) {
        this.b = str;
        this.d = i;
        this.g = 37;
        this.S = 104;
        this.T = "\\PIPE\\LANMAN";
        this.N = 8;
        this.O = 16384;
        this.P = 0;
        this.R = 0;
        this.Q = 5000;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i, String str) {
        super.e();
        this.c = str;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        char c2 = this.S == 104 ? (char) 0 : 1;
        try {
            byte[] bytes = a[c2].getBytes(HTTP.ASCII);
            a((long) (this.S & 255), bArr, i);
            int i2 = i + 2;
            System.arraycopy(bytes, 0, bArr, i2, bytes.length);
            int length = bytes.length + i2;
            a(1, bArr, length);
            int i3 = length + 2;
            a((long) this.O, bArr, i3);
            int i4 = i3 + 2;
            b((long) this.d, bArr, i4);
            int i5 = i4 + 4;
            int a2 = i5 + a(this.b.toUpperCase(), bArr, i5, false);
            return (c2 == 1 ? a(this.c.toUpperCase(), bArr, a2, false) + a2 : a2) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("NetServerEnum2[" + super.toString() + ",name=" + this.T + ",serverTypes=" + (this.d == -1 ? "SV_TYPE_ALL" : "SV_TYPE_DOMAIN_ENUM") + "]");
    }
}
