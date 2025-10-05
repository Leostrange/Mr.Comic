package defpackage;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: zf  reason: default package */
/* compiled from: NetShareEnum */
final class zf extends aag {
    zf() {
        this.g = 37;
        this.S = 0;
        this.T = new String("\\PIPE\\LANMAN");
        this.N = 8;
        this.P = 0;
        this.R = 0;
        this.Q = 5000;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i) {
        try {
            byte[] bytes = "WrLeh\u0000B13BWz\u0000".getBytes(HTTP.ASCII);
            a(0, bArr, i);
            int i2 = i + 2;
            System.arraycopy(bytes, 0, bArr, i2, bytes.length);
            int length = bytes.length + i2;
            a(1, bArr, length);
            int i3 = length + 2;
            a((long) this.O, bArr, i3);
            return (i3 + 2) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("NetShareEnum[" + super.toString() + "]");
    }
}
