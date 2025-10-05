package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.net.UnknownHostException;

/* renamed from: ys  reason: default package */
/* compiled from: Type2Message */
public final class ys extends yq {
    private static final int f = ((xj.a("jcifs.smb.client.useUnicode", true) ? 1 : 2) | NotificationCompat.FLAG_GROUP_SUMMARY);
    private static final String g = xj.b("jcifs.smb.client.domain", (String) null);
    private static final byte[] h;
    public byte[] d;
    byte[] e;
    private String i;
    private byte[] j;

    static {
        int i2;
        byte[] bArr = new byte[0];
        if (g != null) {
            try {
                bArr = g.getBytes("UTF-16LE");
            } catch (IOException e2) {
            }
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[0];
        try {
            String f2 = yk.a().f();
            if (f2 != null) {
                try {
                    bArr2 = f2.getBytes("UTF-16LE");
                } catch (IOException e3) {
                }
            }
        } catch (UnknownHostException e4) {
        }
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[((length2 > 0 ? length2 + 4 : 0) + (length > 0 ? length + 4 : 0) + 4)];
        if (length > 0) {
            b(bArr3, 0, 2);
            b(bArr3, 2, length);
            System.arraycopy(bArr, 0, bArr3, 4, length);
            i2 = length + 4;
        } else {
            i2 = 0;
        }
        if (length2 > 0) {
            b(bArr3, i2, 1);
            int i3 = i2 + 2;
            b(bArr3, i3, length2);
            System.arraycopy(bArr2, 0, bArr3, i3 + 2, length2);
        }
        h = bArr3;
    }

    public ys() {
        this(f);
    }

    private ys(int i2) {
        this.c = i2;
        this.d = null;
        this.i = null;
    }

    public ys(byte[] bArr) {
        for (int i2 = 0; i2 < 8; i2++) {
            if (bArr[i2] != a[i2]) {
                throw new IOException("Not an NTLMSSP message.");
            }
        }
        if (a(bArr, 8) != 2) {
            throw new IOException("Not a Type 2 message.");
        }
        int a = a(bArr, 20);
        this.c = a;
        String str = null;
        byte[] b = b(bArr, 12);
        if (b.length != 0) {
            str = new String(b, (a & 1) != 0 ? "UTF-16LE" : yq.b);
        }
        this.i = str;
        int i3 = 24;
        while (true) {
            if (i3 >= 32) {
                break;
            } else if (bArr[i3] != 0) {
                byte[] bArr2 = new byte[8];
                System.arraycopy(bArr, 24, bArr2, 0, 8);
                this.d = bArr2;
                break;
            } else {
                i3++;
            }
        }
        int a2 = a(bArr, 16);
        if (a2 != 32 && bArr.length != 32) {
            int i4 = 32;
            while (true) {
                if (i4 >= 40) {
                    break;
                } else if (bArr[i4] != 0) {
                    byte[] bArr3 = new byte[8];
                    System.arraycopy(bArr, 32, bArr3, 0, 8);
                    this.j = bArr3;
                    break;
                } else {
                    i4++;
                }
            }
            if (a2 != 40 && bArr.length != 40) {
                byte[] b2 = b(bArr, 40);
                if (b2.length != 0) {
                    this.e = b2;
                }
            }
        }
    }

    public final String toString() {
        String str = this.i;
        byte[] bArr = this.d;
        byte[] bArr2 = this.j;
        byte[] bArr3 = this.e;
        return "Type2Message[target=" + str + ",challenge=" + (bArr == null ? "null" : "<" + bArr.length + " bytes>") + ",context=" + (bArr2 == null ? "null" : "<" + bArr2.length + " bytes>") + ",targetInformation=" + (bArr3 == null ? "null" : "<" + bArr3.length + " bytes>") + ",flags=0x" + abw.a(this.c, 8) + "]";
    }
}
