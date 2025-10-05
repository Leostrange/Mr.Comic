package defpackage;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: zv  reason: default package */
/* compiled from: SmbComNegotiate */
final class zv extends zm {
    zv() {
        this.g = 114;
        this.m = an;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        try {
            byte[] bytes = "\u0002NT LM 0.12\u0000".getBytes(HTTP.ASCII);
            System.arraycopy(bytes, 0, bArr, i, bytes.length);
            return bytes.length;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
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
        return new String("SmbComNegotiate[" + super.toString() + ",wordCount=" + this.r + ",dialects=NT LM 0.12]");
    }
}
