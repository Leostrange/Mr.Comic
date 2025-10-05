package defpackage;

import android.support.v4.app.NotificationCompat;
import java.util.Arrays;
import org.apache.http.message.TokenParser;

/* renamed from: ajt  reason: default package */
/* compiled from: CharTypes */
public final class ajt {
    static final int[] a;
    static final int[] b;
    static final int[] c;
    static final int[] d;
    static final int[] e = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    static final int[] f;
    static final int[] g;
    private static final char[] h;
    private static final byte[] i;

    static {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        h = charArray;
        int length = charArray.length;
        i = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            i[i2] = (byte) h[i2];
        }
        int[] iArr = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        for (int i3 = 0; i3 < 32; i3++) {
            iArr[i3] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        a = iArr;
        int[] iArr2 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        System.arraycopy(a, 0, iArr2, 0, a.length);
        for (int i4 = 128; i4 < 256; i4++) {
            iArr2[i4] = (i4 & 224) == 192 ? 2 : (i4 & 240) == 224 ? 3 : (i4 & 248) == 240 ? 4 : -1;
        }
        b = iArr2;
        int[] iArr3 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        Arrays.fill(iArr3, -1);
        for (int i5 = 33; i5 < 256; i5++) {
            if (Character.isJavaIdentifierPart((char) i5)) {
                iArr3[i5] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        c = iArr3;
        int[] iArr4 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        System.arraycopy(c, 0, iArr4, 0, c.length);
        Arrays.fill(iArr4, NotificationCompat.FLAG_HIGH_PRIORITY, NotificationCompat.FLAG_HIGH_PRIORITY, 0);
        d = iArr4;
        System.arraycopy(b, NotificationCompat.FLAG_HIGH_PRIORITY, e, NotificationCompat.FLAG_HIGH_PRIORITY, NotificationCompat.FLAG_HIGH_PRIORITY);
        Arrays.fill(e, 0, 32, -1);
        e[9] = 0;
        e[10] = 10;
        e[13] = 13;
        e[42] = 42;
        int[] iArr5 = new int[NotificationCompat.FLAG_HIGH_PRIORITY];
        for (int i6 = 0; i6 < 32; i6++) {
            iArr5[i6] = -1;
        }
        iArr5[34] = 34;
        iArr5[92] = 92;
        iArr5[8] = 98;
        iArr5[9] = 116;
        iArr5[12] = 102;
        iArr5[10] = 110;
        iArr5[13] = 114;
        f = iArr5;
        int[] iArr6 = new int[NotificationCompat.FLAG_HIGH_PRIORITY];
        g = iArr6;
        Arrays.fill(iArr6, -1);
        for (int i7 = 0; i7 < 10; i7++) {
            g[i7 + 48] = i7;
        }
        for (int i8 = 0; i8 < 6; i8++) {
            g[i8 + 97] = i8 + 10;
            g[i8 + 65] = i8 + 10;
        }
    }

    public static int a(int i2) {
        if (i2 > 127) {
            return -1;
        }
        return g[i2];
    }

    public static void a(StringBuilder sb, String str) {
        int[] iArr = f;
        int length = iArr.length;
        int length2 = str.length();
        for (int i2 = 0; i2 < length2; i2++) {
            char charAt = str.charAt(i2);
            if (charAt >= length || iArr[charAt] == 0) {
                sb.append(charAt);
            } else {
                sb.append(TokenParser.ESCAPE);
                int i3 = iArr[charAt];
                if (i3 < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    int i4 = -(i3 + 1);
                    sb.append(h[i4 >> 4]);
                    sb.append(h[i4 & 15]);
                } else {
                    sb.append((char) i3);
                }
            }
        }
    }

    public static final int[] a() {
        return a;
    }

    public static final int[] b() {
        return b;
    }

    public static final int[] c() {
        return c;
    }

    public static final int[] d() {
        return d;
    }

    public static final int[] e() {
        return e;
    }

    public static final int[] f() {
        return f;
    }

    public static char[] g() {
        return (char[]) h.clone();
    }

    public static byte[] h() {
        return (byte[]) i.clone();
    }
}
