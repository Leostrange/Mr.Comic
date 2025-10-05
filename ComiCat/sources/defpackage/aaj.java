package defpackage;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: aaj  reason: default package */
/* compiled from: SmbComTreeConnectAndXResponse */
final class aaj extends yv {
    String D = "";
    boolean b;
    boolean c;
    String d;

    aaj(zm zmVar) {
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
        this.b = (bArr[i] & 1) == 1;
        if ((bArr[i] & 2) != 2) {
            z = false;
        }
        this.c = z;
        return 2;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        int i2 = 0;
        while (bArr[i + i2] != 0) {
            int i3 = i2 + 1;
            if (i2 > 32) {
                throw new RuntimeException("zero termination not found: " + this);
            }
            i2 = i3;
        }
        try {
            this.d = new String(bArr, i, i2, HTTP.ASCII);
            return ((i2 + 1) + i) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    public final String toString() {
        return new String("SmbComTreeConnectAndXResponse[" + super.toString() + ",supportSearchBits=" + this.b + ",shareIsInDfs=" + this.c + ",service=" + this.d + ",nativeFileSystem=" + this.D + "]");
    }
}
