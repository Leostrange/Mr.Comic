package defpackage;

import defpackage.yd;

/* renamed from: xu  reason: default package */
/* compiled from: UUID */
public final class xu extends yd.a {
    static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public xu(String str) {
        char[] charArray = str.toCharArray();
        this.b = a(charArray, 0, 8);
        this.c = (short) (a(charArray, 9, 4) & 65535);
        this.d = (short) (a(charArray, 14, 4) & 65535);
        this.e = (byte) (a(charArray, 19, 2) & 255);
        this.f = (byte) (a(charArray, 21, 2) & 255);
        this.g = new byte[6];
        this.g[0] = (byte) (a(charArray, 24, 2) & 255);
        this.g[1] = (byte) (a(charArray, 26, 2) & 255);
        this.g[2] = (byte) (a(charArray, 28, 2) & 255);
        this.g[3] = (byte) (a(charArray, 30, 2) & 255);
        this.g[4] = (byte) (a(charArray, 32, 2) & 255);
        this.g[5] = (byte) (a(charArray, 34, 2) & 255);
    }

    private static int a(char[] cArr, int i, int i2) {
        int i3;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 < cArr.length && i4 < i2; i6++) {
            int i7 = i5 << 4;
            switch (cArr[i6]) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    i3 = cArr[i6] - '0';
                    break;
                case 'A':
                case 'B':
                case 'C':
                case 'D':
                case 'E':
                case 'F':
                    i3 = (cArr[i6] - 'A') + 10;
                    break;
                case 'a':
                case 'b':
                case 'c':
                case 'd':
                case 'e':
                case 'f':
                    i3 = (cArr[i6] - 'a') + 10;
                    break;
                default:
                    throw new IllegalArgumentException(new String(cArr, i, i2));
            }
            i5 = i7 + i3;
            i4++;
        }
        return i5;
    }

    private static String a(int i, int i2) {
        char[] cArr = new char[i2];
        int length = cArr.length;
        while (true) {
            int i3 = length - 1;
            if (length <= 0) {
                return new String(cArr);
            }
            cArr[i3] = a[i & 15];
            i >>>= 4;
            length = i3;
        }
    }

    public final String toString() {
        return a(this.b, 8) + '-' + a(this.c, 4) + '-' + a(this.d, 4) + '-' + a(this.e, 2) + a(this.f, 2) + '-' + a(this.g[0], 2) + a(this.g[1], 2) + a(this.g[2], 2) + a(this.g[3], 2) + a(this.g[4], 2) + a(this.g[5], 2);
    }
}
