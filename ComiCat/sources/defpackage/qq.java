package defpackage;

/* renamed from: qq  reason: default package */
/* compiled from: HostKey */
public class qq {
    private static final byte[][] f = {si.a("ssh-dss"), si.a("ssh-rsa"), si.a("ecdsa-sha2-nistp256"), si.a("ecdsa-sha2-nistp384"), si.a("ecdsa-sha2-nistp521")};
    protected String a;
    protected String b;
    protected int c;
    protected byte[] d;
    protected String e;

    public qq(String str, String str2, byte[] bArr) {
        this.a = str;
        this.b = str2;
        if (bArr[8] == 100) {
            this.c = 1;
        } else if (bArr[8] == 114) {
            this.c = 2;
        } else if (bArr[8] == 97 && bArr[20] == 50) {
            this.c = 3;
        } else if (bArr[8] == 97 && bArr[20] == 51) {
            this.c = 4;
        } else if (bArr[8] == 97 && bArr[20] == 53) {
            this.c = 5;
        } else {
            throw new qy("invalid key type");
        }
        this.d = bArr;
        this.e = null;
    }

    public qq(String str, byte[] bArr) {
        this(str, bArr, (byte) 0);
    }

    public qq(String str, byte[] bArr, byte b2) {
        this(str, bArr, 0);
    }

    private qq(String str, byte[] bArr, char c2) {
        this("", str, bArr);
    }

    public final String a() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public boolean a(String str) {
        String str2 = this.b;
        int length = str2.length();
        int length2 = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int indexOf = str2.indexOf(44, i);
            if (indexOf == -1) {
                if (length2 == length - i) {
                    return str2.regionMatches(true, i, str, 0, length2);
                }
            } else if (length2 == indexOf - i && str2.regionMatches(true, i, str, 0, length2)) {
                return true;
            } else {
                i = indexOf + 1;
            }
        }
        return false;
    }

    public final String b() {
        return (this.c == 1 || this.c == 2 || this.c == 3 || this.c == 4 || this.c == 5) ? si.a(f[this.c - 1]) : "UNKNOWN";
    }

    public final String c() {
        return si.a(si.b(this.d, this.d.length));
    }

    public final String d() {
        return this.e;
    }

    public final String e() {
        return this.a;
    }
}
