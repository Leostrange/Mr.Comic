package defpackage;

import com.box.androidsdk.content.BoxConstants;

/* renamed from: ajg  reason: default package */
/* compiled from: NumberOutput */
public final class ajg {
    static final String a = "-9223372036854775808";
    static final char[] b = new char[4000];
    static final char[] c = new char[4000];
    static final byte[] d = new byte[4000];
    static final String[] e = {BoxConstants.ROOT_FOLDER_ID, "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
    static final String[] f = {"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    private static int g = 1000000;
    private static int h = 1000000000;
    private static long i = 10000000000L;
    private static long j = 1000;
    private static long k = -2147483648L;
    private static long l = 2147483647L;

    static {
        int i2 = 0;
        int i3 = 0;
        while (i2 < 10) {
            char c2 = (char) (i2 + 48);
            char c3 = i2 == 0 ? 0 : c2;
            int i4 = 0;
            while (i4 < 10) {
                char c4 = (char) (i4 + 48);
                char c5 = (i2 == 0 && i4 == 0) ? 0 : c4;
                int i5 = i3;
                for (int i6 = 0; i6 < 10; i6++) {
                    char c6 = (char) (i6 + 48);
                    b[i5] = c3;
                    b[i5 + 1] = c5;
                    b[i5 + 2] = c6;
                    c[i5] = c2;
                    c[i5 + 1] = c4;
                    c[i5 + 2] = c6;
                    i5 += 4;
                }
                i4++;
                i3 = i5;
            }
            i2++;
        }
        for (int i7 = 0; i7 < 4000; i7++) {
            d[i7] = (byte) c[i7];
        }
    }

    public static int a(int i2, byte[] bArr, int i3) {
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return a((long) i2, bArr, i3);
            }
            bArr[i3] = 45;
            i2 = -i2;
            i3++;
        }
        if (i2 >= g) {
            boolean z = i2 >= h;
            if (z) {
                i2 -= h;
                if (i2 >= h) {
                    i2 -= h;
                    bArr[i3] = 50;
                    i3++;
                } else {
                    bArr[i3] = 49;
                    i3++;
                }
            }
            int i4 = i2 / 1000;
            int i5 = i4 / 1000;
            return c(i2 - (i4 * 1000), bArr, c(i4 - (i5 * 1000), bArr, z ? c(i5, bArr, i3) : b(i5, bArr, i3)));
        } else if (i2 >= 1000) {
            int i6 = i2 / 1000;
            return c(i2 - (i6 * 1000), bArr, b(i6, bArr, i3));
        } else if (i2 >= 10) {
            return b(i2, bArr, i3);
        } else {
            int i7 = i3 + 1;
            bArr[i3] = (byte) (i2 + 48);
            return i7;
        }
    }

    public static int a(int i2, char[] cArr, int i3) {
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return a((long) i2, cArr, i3);
            }
            cArr[i3] = '-';
            i2 = -i2;
            i3++;
        }
        if (i2 >= g) {
            boolean z = i2 >= h;
            if (z) {
                i2 -= h;
                if (i2 >= h) {
                    i2 -= h;
                    cArr[i3] = '2';
                    i3++;
                } else {
                    cArr[i3] = '1';
                    i3++;
                }
            }
            int i4 = i2 / 1000;
            int i5 = i4 / 1000;
            return c(i2 - (i4 * 1000), cArr, c(i4 - (i5 * 1000), cArr, z ? c(i5, cArr, i3) : b(i5, cArr, i3)));
        } else if (i2 >= 1000) {
            int i6 = i2 / 1000;
            return c(i2 - (i6 * 1000), cArr, b(i6, cArr, i3));
        } else if (i2 >= 10) {
            return b(i2, cArr, i3);
        } else {
            int i7 = i3 + 1;
            cArr[i3] = (char) (i2 + 48);
            return i7;
        }
    }

    private static int a(long j2) {
        int i2 = 10;
        for (long j3 = i; j2 >= j3 && i2 != 19; j3 = (j3 << 1) + (j3 << 3)) {
            i2++;
        }
        return i2;
    }

    public static int a(long j2, byte[] bArr, int i2) {
        if (j2 < 0) {
            if (j2 > k) {
                return a((int) j2, bArr, i2);
            }
            if (j2 == Long.MIN_VALUE) {
                int length = a.length();
                int i3 = 0;
                int i4 = i2;
                while (i3 < length) {
                    bArr[i4] = (byte) a.charAt(i3);
                    i3++;
                    i4++;
                }
                return i4;
            }
            bArr[i2] = 45;
            j2 = -j2;
            i2++;
        } else if (j2 <= l) {
            return a((int) j2, bArr, i2);
        }
        int a2 = i2 + a(j2);
        int i5 = a2;
        while (j2 > l) {
            i5 -= 3;
            long j3 = j2 / j;
            c((int) (j2 - (j * j3)), bArr, i5);
            j2 = j3;
        }
        int i6 = i5;
        int i7 = (int) j2;
        while (i7 >= 1000) {
            int i8 = i6 - 3;
            int i9 = i7 / 1000;
            c(i7 - (i9 * 1000), bArr, i8);
            i7 = i9;
            i6 = i8;
        }
        b(i7, bArr, i2);
        return a2;
    }

    public static int a(long j2, char[] cArr, int i2) {
        if (j2 < 0) {
            if (j2 > k) {
                return a((int) j2, cArr, i2);
            }
            if (j2 == Long.MIN_VALUE) {
                int length = a.length();
                a.getChars(0, length, cArr, i2);
                return i2 + length;
            }
            cArr[i2] = '-';
            j2 = -j2;
            i2++;
        } else if (j2 <= l) {
            return a((int) j2, cArr, i2);
        }
        int a2 = i2 + a(j2);
        int i3 = a2;
        while (j2 > l) {
            i3 -= 3;
            long j3 = j2 / j;
            c((int) (j2 - (j * j3)), cArr, i3);
            j2 = j3;
        }
        int i4 = i3;
        int i5 = (int) j2;
        while (i5 >= 1000) {
            int i6 = i4 - 3;
            int i7 = i5 / 1000;
            c(i5 - (i7 * 1000), cArr, i6);
            i5 = i7;
            i4 = i6;
        }
        b(i5, cArr, i2);
        return a2;
    }

    private static int b(int i2, byte[] bArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i4 + 1;
        char c2 = b[i4];
        if (c2 != 0) {
            bArr[i3] = (byte) c2;
            i3++;
        }
        int i6 = i5 + 1;
        char c3 = b[i5];
        if (c3 != 0) {
            bArr[i3] = (byte) c3;
            i3++;
        }
        int i7 = i3 + 1;
        bArr[i3] = (byte) b[i6];
        return i7;
    }

    private static int b(int i2, char[] cArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i4 + 1;
        char c2 = b[i4];
        if (c2 != 0) {
            cArr[i3] = c2;
            i3++;
        }
        int i6 = i5 + 1;
        char c3 = b[i5];
        if (c3 != 0) {
            cArr[i3] = c3;
            i3++;
        }
        int i7 = i3 + 1;
        cArr[i3] = b[i6];
        return i7;
    }

    private static int c(int i2, byte[] bArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        bArr[i3] = d[i4];
        int i7 = i5 + 1;
        bArr[i5] = d[i6];
        int i8 = i7 + 1;
        bArr[i7] = d[i6 + 1];
        return i8;
    }

    private static int c(int i2, char[] cArr, int i3) {
        int i4 = i2 << 2;
        int i5 = i3 + 1;
        int i6 = i4 + 1;
        cArr[i3] = c[i4];
        int i7 = i5 + 1;
        cArr[i5] = c[i6];
        int i8 = i7 + 1;
        cArr[i7] = c[i6 + 1];
        return i8;
    }
}
