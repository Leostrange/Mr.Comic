package defpackage;

import java.io.UnsupportedEncodingException;

/* renamed from: yf  reason: default package */
/* compiled from: Name */
public final class yf {
    static final String a = xj.b("jcifs.encoding", System.getProperty("file.encoding"));
    private static final String f = xj.a("jcifs.netbios.scope");
    public String b;
    public String c;
    public int d;
    int e;

    yf() {
    }

    public yf(String str, int i, String str2) {
        this.b = (str.length() > 15 ? str.substring(0, 15) : str).toUpperCase();
        this.d = i;
        this.c = (str2 == null || str2.length() <= 0) ? f : str2;
        this.e = 0;
    }

    private int b(byte[] bArr, int i) {
        if (this.c == null) {
            bArr[i] = 0;
            return 1;
        }
        int i2 = i + 1;
        bArr[i] = 46;
        try {
            System.arraycopy(this.c.getBytes(a), 0, bArr, i2, this.c.length());
        } catch (UnsupportedEncodingException e2) {
        }
        int length = i2 + this.c.length();
        bArr[length] = 0;
        int i3 = (length + 1) - 2;
        int length2 = i3 - this.c.length();
        int i4 = i3;
        int i5 = 0;
        while (true) {
            if (bArr[i4] == 46) {
                bArr[i4] = (byte) i5;
                i5 = 0;
            } else {
                i5++;
            }
            int i6 = i4 - 1;
            if (i4 <= length2) {
                return this.c.length() + 2;
            }
            i4 = i6;
        }
    }

    private int c(byte[] bArr, int i) {
        int i2 = i + 1;
        byte b2 = bArr[45] & 255;
        if (b2 == 0) {
            this.c = null;
            return 1;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer(new String(bArr, 46, b2, a));
            int i3 = b2 + 46;
            while (true) {
                i2 = i3 + 1;
                byte b3 = bArr[i3] & 255;
                if (b3 == 0) {
                    break;
                }
                stringBuffer.append('.').append(new String(bArr, i2, b3, a));
                i3 = i2 + b3;
            }
            this.c = stringBuffer.toString();
        } catch (UnsupportedEncodingException e2) {
        }
        return i2 - 45;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr) {
        byte[] bArr2 = new byte[33];
        int i = 15;
        for (int i2 = 0; i2 < 15; i2++) {
            bArr2[i2] = (byte) (((bArr[((i2 * 2) + 1) + 12] & 255) - 65) << 4);
            bArr2[i2] = (byte) (bArr2[i2] | ((byte) (((bArr[((i2 * 2) + 2) + 12] & 255) - 65) & 15)));
            if (bArr2[i2] != 32) {
                i = i2 + 1;
            }
        }
        try {
            this.b = new String(bArr2, 0, i, a);
        } catch (UnsupportedEncodingException e2) {
        }
        this.d = ((bArr[43] & 255) - 65) << 4;
        this.d |= ((bArr[44] & 255) - 65) & 15;
        return c(bArr, 45) + 33;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        bArr[i] = 32;
        try {
            byte[] bytes = this.b.getBytes(a);
            int i2 = 0;
            while (i2 < bytes.length) {
                bArr[(i2 * 2) + 1 + i] = (byte) (((bytes[i2] & 240) >> 4) + 65);
                bArr[(i2 * 2) + 2 + i] = (byte) ((bytes[i2] & 15) + 65);
                i2++;
            }
            while (i2 < 15) {
                bArr[(i2 * 2) + 1 + i] = 67;
                bArr[(i2 * 2) + 2 + i] = 65;
                i2++;
            }
            bArr[i + 31] = (byte) (((this.d & 240) >> 4) + 65);
            bArr[i + 31 + 1] = (byte) ((this.d & 15) + 65);
        } catch (UnsupportedEncodingException e2) {
        }
        return b(bArr, i + 33) + 33;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof yf)) {
            return false;
        }
        yf yfVar = (yf) obj;
        return (this.c == null && yfVar.c == null) ? this.b.equals(yfVar.b) && this.d == yfVar.d : this.b.equals(yfVar.b) && this.d == yfVar.d && this.c.equals(yfVar.c);
    }

    public final int hashCode() {
        int hashCode = this.b.hashCode() + (this.d * 65599) + (this.e * 65599);
        return (this.c == null || this.c.length() == 0) ? hashCode : hashCode + this.c.hashCode();
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.b;
        if (str == null) {
            str = "null";
        } else if (str.charAt(0) == 1) {
            char[] charArray = str.toCharArray();
            charArray[0] = '.';
            charArray[1] = '.';
            charArray[14] = '.';
            str = new String(charArray);
        }
        stringBuffer.append(str).append("<").append(abw.a(this.d, 2)).append(">");
        if (this.c != null) {
            stringBuffer.append(".").append(this.c);
        }
        return stringBuffer.toString();
    }
}
