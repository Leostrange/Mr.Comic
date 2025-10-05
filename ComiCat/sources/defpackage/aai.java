package defpackage;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: aai  reason: default package */
/* compiled from: SmbComTreeConnectAndX */
final class aai extends yv {
    private static byte[] H = {1, 1, 1, 1, 1, 1, 1, 1, 0};
    private static final boolean c = xj.a("jcifs.smb.client.disablePlainTextPasswords", true);
    private boolean D = false;
    private String E;
    private byte[] F;
    private int G;
    String b;
    private aav d;

    static {
        String a = xj.a("jcifs.smb.client.TreeConnectAndX.CheckDirectory");
        if (a != null) {
            H[0] = Byte.parseByte(a);
        }
        String a2 = xj.a("jcifs.smb.client.TreeConnectAndX.CreateDirectory");
        if (a2 != null) {
            H[2] = Byte.parseByte(a2);
        }
        String a3 = xj.a("jcifs.smb.client.TreeConnectAndX.Delete");
        if (a3 != null) {
            H[3] = Byte.parseByte(a3);
        }
        String a4 = xj.a("jcifs.smb.client.TreeConnectAndX.DeleteDirectory");
        if (a4 != null) {
            H[4] = Byte.parseByte(a4);
        }
        String a5 = xj.a("jcifs.smb.client.TreeConnectAndX.OpenAndX");
        if (a5 != null) {
            H[5] = Byte.parseByte(a5);
        }
        String a6 = xj.a("jcifs.smb.client.TreeConnectAndX.Rename");
        if (a6 != null) {
            H[6] = Byte.parseByte(a6);
        }
        String a7 = xj.a("jcifs.smb.client.TreeConnectAndX.Transaction");
        if (a7 != null) {
            H[7] = Byte.parseByte(a7);
        }
        String a8 = xj.a("jcifs.smb.client.TreeConnectAndX.QueryInformation");
        if (a8 != null) {
            H[8] = Byte.parseByte(a8);
        }
    }

    aai(aav aav, String str, String str2, zm zmVar) {
        super(zmVar);
        this.d = aav;
        this.b = str;
        this.E = str2;
        this.g = 117;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte b2) {
        switch (b2 & 255) {
            case 0:
                return H[2];
            case 1:
                return H[4];
            case 6:
                return H[3];
            case 7:
                return H[6];
            case 8:
                return H[8];
            case 16:
                return H[0];
            case 37:
                return H[7];
            case 45:
                return H[5];
            default:
                return 0;
        }
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        byte b2 = 1;
        if (this.d.e.s.g != 0 || (!this.d.f.m && this.d.f.j.length() <= 0)) {
            this.G = 1;
        } else if (this.d.e.s.h) {
            this.F = this.d.f.a(this.d.e.s.p);
            this.G = this.F.length;
        } else if (c) {
            throw new RuntimeException("Plain text passwords are disabled");
        } else {
            this.F = new byte[((this.d.f.j.length() + 1) * 2)];
            this.G = a(this.d.f.j, this.F, 0);
        }
        int i2 = i + 1;
        if (!this.D) {
            b2 = 0;
        }
        bArr[i] = b2;
        bArr[i2] = 0;
        a((long) this.G, bArr, i2 + 1);
        return 4;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int i2;
        if (this.d.e.s.g != 0 || (!this.d.f.m && this.d.f.j.length() <= 0)) {
            i2 = i + 1;
            bArr[i] = 0;
        } else {
            System.arraycopy(this.F, 0, bArr, i, this.G);
            i2 = this.G + i;
        }
        int a = i2 + a(this.b, bArr, i2);
        try {
            System.arraycopy(this.E.getBytes(HTTP.ASCII), 0, bArr, a, this.E.length());
            int length = a + this.E.length();
            bArr[length] = 0;
            return (length + 1) - i;
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
        return new String("SmbComTreeConnectAndX[" + super.toString() + ",disconnectTid=" + this.D + ",passwordLength=" + this.G + ",password=" + abw.a(this.F, 0) + ",path=" + this.b + ",service=" + this.E + "]");
    }
}
