package defpackage;

/* renamed from: or  reason: default package */
/* compiled from: PercentEscaper */
public final class or extends ot {
    private static final char[] a = {'+'};
    private static final char[] b = "0123456789ABCDEF".toCharArray();
    private final boolean c;
    private final boolean[] d;

    public or(String str, boolean z) {
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        } else if (z && str.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        } else if (str.contains("%")) {
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        } else {
            this.c = z;
            this.d = b(str);
        }
    }

    private static boolean[] b(String str) {
        char[] charArray = str.toCharArray();
        int i = 122;
        for (char max : charArray) {
            i = Math.max(max, i);
        }
        boolean[] zArr = new boolean[(i + 1)];
        for (int i2 = 48; i2 <= 57; i2++) {
            zArr[i2] = true;
        }
        for (int i3 = 65; i3 <= 90; i3++) {
            zArr[i3] = true;
        }
        for (int i4 = 97; i4 <= 122; i4++) {
            zArr[i4] = true;
        }
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        return zArr;
    }

    /* access modifiers changed from: protected */
    public final int a(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            if (charAt >= this.d.length || !this.d[charAt]) {
                break;
            }
            i++;
        }
        return i;
    }

    public final String a(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt >= this.d.length || !this.d[charAt]) {
                return a(str, i);
            }
        }
        return str;
    }

    /* access modifiers changed from: protected */
    public final char[] a(int i) {
        if (i < this.d.length && this.d[i]) {
            return null;
        }
        if (i == 32 && this.c) {
            return a;
        }
        if (i <= 127) {
            char[] cArr = new char[3];
            cArr[0] = '%';
            cArr[2] = b[i & 15];
            cArr[1] = b[i >>> 4];
            return cArr;
        } else if (i <= 2047) {
            char[] cArr2 = new char[6];
            cArr2[0] = '%';
            cArr2[3] = '%';
            cArr2[5] = b[i & 15];
            int i2 = i >>> 4;
            cArr2[4] = b[(i2 & 3) | 8];
            int i3 = i2 >>> 2;
            cArr2[2] = b[i3 & 15];
            cArr2[1] = b[(i3 >>> 4) | 12];
            return cArr2;
        } else if (i <= 65535) {
            char[] cArr3 = new char[9];
            cArr3[0] = '%';
            cArr3[1] = 'E';
            cArr3[3] = '%';
            cArr3[6] = '%';
            cArr3[8] = b[i & 15];
            int i4 = i >>> 4;
            cArr3[7] = b[(i4 & 3) | 8];
            int i5 = i4 >>> 2;
            cArr3[5] = b[i5 & 15];
            int i6 = i5 >>> 4;
            cArr3[4] = b[(i6 & 3) | 8];
            cArr3[2] = b[i6 >>> 2];
            return cArr3;
        } else if (i <= 1114111) {
            char[] cArr4 = new char[12];
            cArr4[0] = '%';
            cArr4[1] = 'F';
            cArr4[3] = '%';
            cArr4[6] = '%';
            cArr4[9] = '%';
            cArr4[11] = b[i & 15];
            int i7 = i >>> 4;
            cArr4[10] = b[(i7 & 3) | 8];
            int i8 = i7 >>> 2;
            cArr4[8] = b[i8 & 15];
            int i9 = i8 >>> 4;
            cArr4[7] = b[(i9 & 3) | 8];
            int i10 = i9 >>> 2;
            cArr4[5] = b[i10 & 15];
            int i11 = i10 >>> 4;
            cArr4[4] = b[(i11 & 3) | 8];
            cArr4[2] = b[(i11 >>> 2) & 7];
            return cArr4;
        } else {
            throw new IllegalArgumentException("Invalid unicode character value " + i);
        }
    }
}
