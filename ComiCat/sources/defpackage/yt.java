package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.Arrays;

/* renamed from: yt  reason: default package */
/* compiled from: Type3Message */
public final class yt extends yq {
    private static final int e;
    private static final String f = xj.b("jcifs.smb.client.domain", (String) null);
    private static final String g = xj.b("jcifs.smb.client.username", (String) null);
    private static final String h = xj.b("jcifs.smb.client.password", (String) null);
    private static final String i;
    private static final int j = xj.a("jcifs.smb.lmCompatibility", 3);
    private static final SecureRandom k = new SecureRandom();
    public byte[] d = null;
    private byte[] l;
    private byte[] m;
    private String n;
    private String o;
    private String p;
    private byte[] q = null;

    static {
        String str;
        int i2 = 1;
        if (!xj.a("jcifs.smb.client.useUnicode", true)) {
            i2 = 2;
        }
        e = i2 | NotificationCompat.FLAG_GROUP_SUMMARY;
        try {
            str = yk.a().f();
        } catch (UnknownHostException e2) {
            str = null;
        }
        i = str;
    }

    public yt() {
        this.c = e;
        this.n = f;
        this.o = g;
        this.p = i;
    }

    public yt(ys ysVar, String str, String str2, String str3, String str4, int i2) {
        this.c = ((ysVar.c & 1) != 0 ? 1 : 2) | NotificationCompat.FLAG_GROUP_SUMMARY | i2;
        this.p = str4 == null ? i : str4;
        this.n = str2;
        this.o = str3;
        switch (j) {
            case 0:
            case 1:
                if ((this.c & 524288) != 0) {
                    byte[] bArr = new byte[24];
                    k.nextBytes(bArr);
                    Arrays.fill(bArr, 8, 24, (byte) 0);
                    byte[] a = zl.a(str);
                    byte[] a2 = zl.a(a, ysVar.d, bArr);
                    this.l = bArr;
                    this.m = a2;
                    if ((this.c & 16) == 16) {
                        byte[] bArr2 = new byte[16];
                        System.arraycopy(ysVar.d, 0, bArr2, 0, 8);
                        System.arraycopy(bArr, 0, bArr2, 8, 8);
                        aby aby = new aby();
                        aby.update(a);
                        abv abv = new abv(aby.digest());
                        abv.update(bArr2);
                        byte[] digest = abv.digest();
                        if ((this.c & 1073741824) != 0) {
                            this.d = new byte[16];
                            k.nextBytes(this.d);
                            byte[] bArr3 = new byte[16];
                            new abz(digest).a(this.d, 0, bArr3, 0);
                            this.q = bArr3;
                            return;
                        }
                        this.d = digest;
                        this.q = this.d;
                        return;
                    }
                    return;
                }
                break;
            case 2:
                byte[] a3 = a(ysVar, str);
                this.l = a3;
                this.m = a3;
                return;
            case 3:
            case 4:
            case 5:
                byte[] a4 = zl.a(str2, str3, str);
                byte[] bArr4 = new byte[8];
                k.nextBytes(bArr4);
                this.l = (str2 == null || str3 == null || str == null) ? null : zl.a(str2, str3, str, ysVar.d, bArr4);
                byte[] bArr5 = new byte[8];
                k.nextBytes(bArr5);
                this.m = a4 == null ? null : zl.a(a4, ysVar.d, bArr5, (System.currentTimeMillis() + 11644473600000L) * 10000, ysVar.e);
                if ((this.c & 16) == 16) {
                    abv abv2 = new abv(a4);
                    abv2.update(this.m, 0, 16);
                    byte[] digest2 = abv2.digest();
                    if ((this.c & 1073741824) != 0) {
                        this.d = new byte[16];
                        k.nextBytes(this.d);
                        byte[] bArr6 = new byte[16];
                        new abz(digest2).a(this.d, 0, bArr6, 0);
                        this.q = bArr6;
                        return;
                    }
                    this.d = digest2;
                    this.q = this.d;
                    return;
                }
                return;
        }
        this.l = str == null ? null : zl.a(str, ysVar.d);
        this.m = a(ysVar, str);
    }

    private static byte[] a(ys ysVar, String str) {
        if (ysVar == null || str == null) {
            return null;
        }
        return zl.b(str, ysVar.d);
    }

    public final byte[] a() {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        try {
            int i2 = this.c;
            boolean z = (i2 & 1) != 0;
            String str = z ? null : yq.b;
            String str2 = this.n;
            if (str2 == null || str2.length() == 0) {
                bArr = null;
            } else {
                bArr = z ? str2.getBytes("UTF-16LE") : str2.getBytes(str);
            }
            int length = bArr != null ? bArr.length : 0;
            String str3 = this.o;
            if (str3 == null || str3.length() == 0) {
                bArr2 = null;
            } else {
                bArr2 = z ? str3.getBytes("UTF-16LE") : str3.toUpperCase().getBytes(str);
            }
            int length2 = bArr2 != null ? bArr2.length : 0;
            String str4 = this.p;
            if (str4 == null || str4.length() == 0) {
                bArr3 = null;
            } else {
                bArr3 = z ? str4.getBytes("UTF-16LE") : str4.toUpperCase().getBytes(str);
            }
            int length3 = bArr3 != null ? bArr3.length : 0;
            byte[] bArr4 = this.l;
            int length4 = bArr4 != null ? bArr4.length : 0;
            byte[] bArr5 = this.m;
            int length5 = bArr5 != null ? bArr5.length : 0;
            byte[] bArr6 = this.q;
            byte[] bArr7 = new byte[((bArr6 != null ? bArr6.length : 0) + length + 64 + length2 + length3 + length4 + length5)];
            System.arraycopy(a, 0, bArr7, 0, 8);
            a(bArr7, 8, 3);
            a(bArr7, 12, 64, bArr4);
            int i3 = length4 + 64;
            a(bArr7, 20, i3, bArr5);
            int i4 = length5 + i3;
            a(bArr7, 28, i4, bArr);
            int i5 = i4 + length;
            a(bArr7, 36, i5, bArr2);
            int i6 = i5 + length2;
            a(bArr7, 44, i6, bArr3);
            a(bArr7, 52, i6 + length3, bArr6);
            a(bArr7, 60, i2);
            return bArr7;
        } catch (IOException e2) {
            throw new IllegalStateException(e2.getMessage());
        }
    }

    public final String toString() {
        String str = this.o;
        String str2 = this.n;
        String str3 = this.p;
        byte[] bArr = this.l;
        byte[] bArr2 = this.m;
        byte[] bArr3 = this.q;
        return "Type3Message[domain=" + str2 + ",user=" + str + ",workstation=" + str3 + ",lmResponse=" + (bArr == null ? "null" : "<" + bArr.length + " bytes>") + ",ntResponse=" + (bArr2 == null ? "null" : "<" + bArr2.length + " bytes>") + ",sessionKey=" + (bArr3 == null ? "null" : "<" + bArr3.length + " bytes>") + ",flags=0x" + abw.a(this.c, 8) + "]";
    }
}
