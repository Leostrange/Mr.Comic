package defpackage;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Principal;
import java.util.Arrays;
import java.util.Random;
import org.apache.http.protocol.HTTP;

/* renamed from: zl  reason: default package */
/* compiled from: NtlmPasswordAuthentication */
public final class zl implements Serializable, Principal {
    static String a;
    static String b;
    static String c;
    public static final zl d = new zl("", "", "");
    static final zl e = new zl("", "", "");
    static final zl f = new zl("?", "GUEST", "");
    static final zl g = new zl((String) null);
    private static final int p = xj.a("jcifs.smb.lmCompatibility", 3);
    private static final Random q = new Random();
    private static abx r = abx.a();
    private static final byte[] s = {75, 71, 83, 33, 64, 35, 36, 37};
    String h;
    String i;
    String j;
    byte[] k;
    byte[] l;
    boolean m;
    byte[] n;
    byte[] o;

    public zl(String str) {
        this.m = false;
        this.n = null;
        this.o = null;
        this.j = null;
        this.i = null;
        this.h = null;
        if (str != null) {
            try {
                str = b(str);
            } catch (UnsupportedEncodingException e2) {
            }
            int length = str.length();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                char charAt = str.charAt(i3);
                if (charAt == ';') {
                    this.h = str.substring(0, i3);
                    i2 = i3 + 1;
                } else if (charAt == ':') {
                    this.j = str.substring(i3 + 1);
                    break;
                }
                i3++;
            }
            this.i = str.substring(i2, i3);
        }
        a();
        if (this.h == null) {
            this.h = a;
        }
        if (this.i == null) {
            this.i = b;
        }
        if (this.j == null) {
            this.j = c;
        }
    }

    public zl(String str, String str2, String str3) {
        this.m = false;
        this.n = null;
        this.o = null;
        if (str2 != null) {
            int indexOf = str2.indexOf(64);
            if (indexOf > 0) {
                str = str2.substring(indexOf + 1);
                str2 = str2.substring(0, indexOf);
            } else {
                int indexOf2 = str2.indexOf(92);
                if (indexOf2 > 0) {
                    str = str2.substring(0, indexOf2);
                    str2 = str2.substring(indexOf2 + 1);
                }
            }
        }
        this.h = str;
        this.i = str2;
        this.j = str3;
        a();
        if (str == null) {
            this.h = a;
        }
        if (str2 == null) {
            this.i = b;
        }
        if (str3 == null) {
            this.j = c;
        }
    }

    static void a() {
        if (a == null) {
            a = xj.b("jcifs.smb.client.domain", "?");
            b = xj.b("jcifs.smb.client.username", "GUEST");
            c = xj.b("jcifs.smb.client.password", "");
        }
    }

    public static byte[] a(String str) {
        if (str == null) {
            throw new RuntimeException("Password parameter is required");
        }
        try {
            aby aby = new aby();
            aby.update(str.getBytes("UTF-16LE"));
            return aby.digest();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2.getMessage());
        }
    }

    public static byte[] a(String str, String str2, String str3) {
        try {
            aby aby = new aby();
            aby.update(str3.getBytes("UTF-16LE"));
            abv abv = new abv(aby.digest());
            abv.update(str2.toUpperCase().getBytes("UTF-16LE"));
            abv.update(str.getBytes("UTF-16LE"));
            return abv.digest();
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2.getMessage());
        }
    }

    public static byte[] a(String str, String str2, String str3, byte[] bArr, byte[] bArr2) {
        try {
            byte[] bArr3 = new byte[24];
            aby aby = new aby();
            aby.update(str3.getBytes("UTF-16LE"));
            abv abv = new abv(aby.digest());
            abv.update(str2.toUpperCase().getBytes("UTF-16LE"));
            abv.update(str.toUpperCase().getBytes("UTF-16LE"));
            abv abv2 = new abv(abv.digest());
            abv2.update(bArr);
            abv2.update(bArr2);
            abv2.digest(bArr3, 0, 16);
            System.arraycopy(bArr2, 0, bArr3, 16, 8);
            return bArr3;
        } catch (Exception e2) {
            if (abx.a > 0) {
                e2.printStackTrace(r);
            }
            return null;
        }
    }

    public static byte[] a(String str, byte[] bArr) {
        int i2 = 14;
        byte[] bArr2 = new byte[14];
        byte[] bArr3 = new byte[21];
        byte[] bArr4 = new byte[24];
        try {
            byte[] bytes = str.toUpperCase().getBytes(zm.am);
            int length = bytes.length;
            if (length <= 14) {
                i2 = length;
            }
            System.arraycopy(bytes, 0, bArr2, 0, i2);
            b(bArr2, s, bArr3);
            b(bArr3, bArr, bArr4);
            return bArr4;
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("Try setting jcifs.encoding=US-ASCII", e2);
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[8];
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr2);
            instance.update(bArr3, 0, 8);
            System.arraycopy(instance.digest(), 0, bArr4, 0, 8);
            byte[] bArr5 = new byte[21];
            System.arraycopy(bArr, 0, bArr5, 0, 16);
            byte[] bArr6 = new byte[24];
            b(bArr5, bArr4, bArr6);
            return bArr6;
        } catch (GeneralSecurityException e2) {
            if (abx.a > 0) {
                e2.printStackTrace(r);
            }
            throw new RuntimeException("MD5", e2);
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, byte[] bArr4) {
        int length = bArr4 != null ? bArr4.length : 0;
        byte[] bArr5 = new byte[(length + 28 + 4)];
        abu.a(257, bArr5, 0);
        abu.a(0, bArr5, 4);
        abu.a((int) (j2 & 4294967295L), bArr5, 8);
        abu.a((int) ((j2 >> 32) & 4294967295L), bArr5, 12);
        System.arraycopy(bArr3, 0, bArr5, 16, 8);
        abu.a(0, bArr5, 24);
        if (bArr4 != null) {
            System.arraycopy(bArr4, 0, bArr5, 28, length);
        }
        abu.a(0, bArr5, length + 28);
        int length2 = bArr5.length;
        abv abv = new abv(bArr);
        abv.update(bArr2);
        abv.update(bArr5, 0, length2);
        byte[] digest = abv.digest();
        byte[] bArr6 = new byte[(digest.length + bArr5.length)];
        System.arraycopy(digest, 0, bArr6, 0, digest.length);
        System.arraycopy(bArr5, 0, bArr6, digest.length, bArr5.length);
        return bArr6;
    }

    private static String b(String str) {
        int i2;
        byte[] bArr = new byte[1];
        if (str == null) {
            return null;
        }
        int length = str.length();
        char[] cArr = new char[length];
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        while (i4 < length) {
            switch (z) {
                case false:
                    char charAt = str.charAt(i4);
                    if (charAt != '%') {
                        cArr[i3] = charAt;
                        i3++;
                        i2 = i4;
                        break;
                    } else {
                        z = true;
                        i2 = i4;
                        break;
                    }
                case true:
                    bArr[0] = (byte) (Integer.parseInt(str.substring(i4, i4 + 2), 16) & 255);
                    cArr[i3] = new String(bArr, 0, 1, HTTP.ASCII).charAt(0);
                    i2 = i4 + 1;
                    i3++;
                    z = false;
                    break;
                default:
                    i2 = i4;
                    break;
            }
            i4 = i2 + 1;
        }
        return new String(cArr, 0, i3);
    }

    private static void b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[7];
        byte[] bArr5 = new byte[8];
        for (int i2 = 0; i2 < bArr.length / 7; i2++) {
            System.arraycopy(bArr, i2 * 7, bArr4, 0, 7);
            abt abt = new abt(bArr4);
            abt.a(bArr2, abt.b);
            abt.a(abt.b, abt.b, abt.a);
            abt.a(abt.b, bArr5);
            System.arraycopy(bArr5, 0, bArr3, i2 * 8, 8);
        }
    }

    public static byte[] b(String str, byte[] bArr) {
        byte[] bArr2 = null;
        byte[] bArr3 = new byte[21];
        byte[] bArr4 = new byte[24];
        try {
            bArr2 = str.getBytes("UTF-16LE");
        } catch (UnsupportedEncodingException e2) {
            if (abx.a > 0) {
                e2.printStackTrace(r);
            }
        }
        aby aby = new aby();
        aby.update(bArr2);
        try {
            aby.digest(bArr3, 0, 16);
        } catch (Exception e3) {
            if (abx.a > 0) {
                e3.printStackTrace(r);
            }
        }
        b(bArr3, bArr, bArr4);
        return bArr4;
    }

    public final byte[] a(byte[] bArr) {
        if (this.m) {
            return this.k;
        }
        switch (p) {
            case 0:
            case 1:
                return a(this.j, bArr);
            case 2:
                return b(this.j, bArr);
            case 3:
            case 4:
            case 5:
                if (this.n == null) {
                    this.n = new byte[8];
                    q.nextBytes(this.n);
                }
                return a(this.h, this.i, this.j, bArr, this.n);
            default:
                return a(this.j, bArr);
        }
    }

    public final byte[] b(byte[] bArr) {
        if (this.m) {
            return this.l;
        }
        switch (p) {
            case 0:
            case 1:
            case 2:
                return b(this.j, bArr);
            case 3:
            case 4:
            case 5:
                return new byte[0];
            default:
                return b(this.j, bArr);
        }
    }

    public final byte[] c(byte[] bArr) {
        switch (p) {
            case 0:
            case 1:
            case 2:
                byte[] bArr2 = new byte[40];
                if (!this.m) {
                    try {
                        aby aby = new aby();
                        aby.update(this.j.getBytes("UTF-16LE"));
                        switch (p) {
                            case 0:
                            case 1:
                            case 2:
                                aby.update(aby.digest());
                                aby.digest(bArr2, 0, 16);
                                break;
                            case 3:
                            case 4:
                            case 5:
                                if (this.n == null) {
                                    this.n = new byte[8];
                                    q.nextBytes(this.n);
                                }
                                abv abv = new abv(aby.digest());
                                abv.update(this.i.toUpperCase().getBytes("UTF-16LE"));
                                abv.update(this.h.toUpperCase().getBytes("UTF-16LE"));
                                byte[] digest = abv.digest();
                                abv abv2 = new abv(digest);
                                abv2.update(bArr);
                                abv2.update(this.n);
                                abv abv3 = new abv(digest);
                                abv3.update(abv2.digest());
                                abv3.digest(bArr2, 0, 16);
                                break;
                            default:
                                aby.update(aby.digest());
                                aby.digest(bArr2, 0, 16);
                                break;
                        }
                    } catch (Exception e2) {
                        throw new aaq("", (Throwable) e2);
                    }
                }
                System.arraycopy(b(bArr), 0, bArr2, 16, 24);
                return bArr2;
            case 3:
            case 4:
            case 5:
                throw new aaq("NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)");
            default:
                return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zl) {
            zl zlVar = (zl) obj;
            if (zlVar.h.toUpperCase().equals(this.h.toUpperCase()) && zlVar.i.toUpperCase().equals(this.i.toUpperCase())) {
                if (this.m && zlVar.m) {
                    return Arrays.equals(this.k, zlVar.k) && Arrays.equals(this.l, zlVar.l);
                }
                if (!this.m && this.j.equals(zlVar.j)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String getName() {
        return this.h.length() > 0 && !this.h.equals("?") ? this.h + "\\" + this.i : this.i;
    }

    public final int hashCode() {
        return getName().toUpperCase().hashCode();
    }

    public final String toString() {
        return getName();
    }
}
