package defpackage;

import java.io.PrintStream;
import org.apache.http.message.TokenParser;

/* renamed from: abw  reason: default package */
/* compiled from: Hexdump */
public final class abw {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final String b;
    private static final int c;
    private static final char[] d = {TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP, TokenParser.SP};

    static {
        String property = System.getProperty("line.separator");
        b = property;
        c = property.length();
    }

    public static String a(int i, int i2) {
        char[] cArr = new char[i2];
        a(i, cArr, 0, i2);
        return new String(cArr);
    }

    public static String a(byte[] bArr, int i) {
        int i2 = 0;
        char[] cArr = new char[i];
        int i3 = i % 2 == 0 ? i / 2 : (i / 2) + 1;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + 1;
            cArr[i2] = a[(bArr[i4] >> 4) & 15];
            if (i5 == cArr.length) {
                break;
            }
            i2 = i5 + 1;
            cArr[i5] = a[bArr[i4] & 15];
        }
        return new String(cArr);
    }

    private static void a(int i, char[] cArr, int i2, int i3) {
        int i4 = i;
        while (i3 > 0) {
            int i5 = (i2 + i3) - 1;
            if (i5 < cArr.length) {
                cArr[i5] = a[i4 & 15];
            }
            if (i4 != 0) {
                i4 >>>= 4;
            }
            i3--;
        }
    }

    public static void a(PrintStream printStream, byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            int i3 = i2 % 16;
            char[] cArr = new char[((i3 == 0 ? i2 / 16 : (i2 / 16) + 1) * (c + 74))];
            char[] cArr2 = new char[16];
            int i4 = 0;
            int i5 = 0;
            do {
                a(i5, cArr, i4, 5);
                int i6 = i4 + 5;
                int i7 = i6 + 1;
                cArr[i6] = ':';
                while (true) {
                    if (i5 != i2) {
                        int i8 = i7 + 1;
                        cArr[i7] = TokenParser.SP;
                        byte b2 = bArr[i + i5] & 255;
                        a((int) b2, cArr, i8, 2);
                        i7 = i8 + 2;
                        if (b2 < 0 || Character.isISOControl((char) b2)) {
                            cArr2[i5 % 16] = '.';
                        } else {
                            cArr2[i5 % 16] = (char) b2;
                        }
                        i5++;
                        if (i5 % 16 == 0) {
                            break;
                        }
                    } else {
                        int i9 = 16 - i3;
                        System.arraycopy(d, 0, cArr, i7, i9 * 3);
                        i7 += i9 * 3;
                        System.arraycopy(d, 0, cArr2, i3, i9);
                        break;
                    }
                }
                int i10 = i7 + 1;
                cArr[i7] = TokenParser.SP;
                int i11 = i10 + 1;
                cArr[i10] = TokenParser.SP;
                int i12 = i11 + 1;
                cArr[i11] = '|';
                System.arraycopy(cArr2, 0, cArr, i12, 16);
                int i13 = i12 + 16;
                int i14 = i13 + 1;
                cArr[i13] = '|';
                b.getChars(0, c, cArr, i14);
                i4 = c + i14;
            } while (i5 < i2);
            printStream.println(cArr);
        }
    }
}
