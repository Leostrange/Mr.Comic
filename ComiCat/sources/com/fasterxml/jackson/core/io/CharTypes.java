package com.fasterxml.jackson.core.io;

import android.support.v4.app.NotificationCompat;
import java.util.Arrays;
import org.apache.http.message.TokenParser;

public final class CharTypes {
    private static final byte[] HB;
    private static final char[] HC;
    private static final int[] sHexValues;
    private static final int[] sInputCodes;
    private static final int[] sInputCodesComment;
    private static final int[] sInputCodesJsNames;
    private static final int[] sInputCodesUTF8;
    private static final int[] sInputCodesUtf8JsNames;
    private static final int[] sInputCodesWS;
    private static final int[] sOutputEscapes128;

    static {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        HC = charArray;
        int length = charArray.length;
        HB = new byte[length];
        for (int i = 0; i < length; i++) {
            HB[i] = (byte) HC[i];
        }
        int[] iArr = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        for (int i2 = 0; i2 < 32; i2++) {
            iArr[i2] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        sInputCodes = iArr;
        int[] iArr2 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        System.arraycopy(sInputCodes, 0, iArr2, 0, NotificationCompat.FLAG_LOCAL_ONLY);
        for (int i3 = 128; i3 < 256; i3++) {
            iArr2[i3] = (i3 & 224) == 192 ? 2 : (i3 & 240) == 224 ? 3 : (i3 & 248) == 240 ? 4 : -1;
        }
        sInputCodesUTF8 = iArr2;
        int[] iArr3 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        Arrays.fill(iArr3, -1);
        for (int i4 = 33; i4 < 256; i4++) {
            if (Character.isJavaIdentifierPart((char) i4)) {
                iArr3[i4] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        sInputCodesJsNames = iArr3;
        int[] iArr4 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        System.arraycopy(sInputCodesJsNames, 0, iArr4, 0, NotificationCompat.FLAG_LOCAL_ONLY);
        Arrays.fill(iArr4, NotificationCompat.FLAG_HIGH_PRIORITY, NotificationCompat.FLAG_HIGH_PRIORITY, 0);
        sInputCodesUtf8JsNames = iArr4;
        int[] iArr5 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        System.arraycopy(sInputCodesUTF8, NotificationCompat.FLAG_HIGH_PRIORITY, iArr5, NotificationCompat.FLAG_HIGH_PRIORITY, NotificationCompat.FLAG_HIGH_PRIORITY);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        sInputCodesComment = iArr5;
        int[] iArr6 = new int[NotificationCompat.FLAG_LOCAL_ONLY];
        System.arraycopy(sInputCodesUTF8, NotificationCompat.FLAG_HIGH_PRIORITY, iArr6, NotificationCompat.FLAG_HIGH_PRIORITY, NotificationCompat.FLAG_HIGH_PRIORITY);
        Arrays.fill(iArr6, 0, 32, -1);
        iArr6[32] = 1;
        iArr6[9] = 1;
        iArr6[10] = 10;
        iArr6[13] = 13;
        iArr6[47] = 47;
        iArr6[35] = 35;
        sInputCodesWS = iArr6;
        int[] iArr7 = new int[NotificationCompat.FLAG_HIGH_PRIORITY];
        for (int i5 = 0; i5 < 32; i5++) {
            iArr7[i5] = -1;
        }
        iArr7[34] = 34;
        iArr7[92] = 92;
        iArr7[8] = 98;
        iArr7[9] = 116;
        iArr7[12] = 102;
        iArr7[10] = 110;
        iArr7[13] = 114;
        sOutputEscapes128 = iArr7;
        int[] iArr8 = new int[NotificationCompat.FLAG_HIGH_PRIORITY];
        sHexValues = iArr8;
        Arrays.fill(iArr8, -1);
        for (int i6 = 0; i6 < 10; i6++) {
            sHexValues[i6 + 48] = i6;
        }
        for (int i7 = 0; i7 < 6; i7++) {
            sHexValues[i7 + 97] = i7 + 10;
            sHexValues[i7 + 65] = i7 + 10;
        }
    }

    public static void appendQuoted(StringBuilder sb, String str) {
        int[] iArr = sOutputEscapes128;
        int length = iArr.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            char charAt = str.charAt(i);
            if (charAt >= length || iArr[charAt] == 0) {
                sb.append(charAt);
            } else {
                sb.append(TokenParser.ESCAPE);
                int i2 = iArr[charAt];
                if (i2 < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    sb.append(HC[charAt >> 4]);
                    sb.append(HC[charAt & 15]);
                } else {
                    sb.append((char) i2);
                }
            }
        }
    }

    public static int charToHex(int i) {
        if (i > 127) {
            return -1;
        }
        return sHexValues[i];
    }

    public static byte[] copyHexBytes() {
        return (byte[]) HB.clone();
    }

    public static char[] copyHexChars() {
        return (char[]) HC.clone();
    }

    public static int[] get7BitOutputEscapes() {
        return sOutputEscapes128;
    }

    public static int[] getInputCodeComment() {
        return sInputCodesComment;
    }

    public static int[] getInputCodeLatin1() {
        return sInputCodes;
    }

    public static int[] getInputCodeLatin1JsNames() {
        return sInputCodesJsNames;
    }

    public static int[] getInputCodeUtf8() {
        return sInputCodesUTF8;
    }

    public static int[] getInputCodeUtf8JsNames() {
        return sInputCodesUtf8JsNames;
    }
}
