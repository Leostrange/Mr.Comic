package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;

public final class NumberInput {
    static final String MAX_LONG_STR = "9223372036854775807";
    static final String MIN_LONG_STR_NO_SIGN = "-9223372036854775808".substring(1);

    private static NumberFormatException _badBD(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }

    public static boolean inLongRange(char[] cArr, int i, int i2, boolean z) {
        String str = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str.length();
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int charAt = cArr[i + i3] - str.charAt(i3);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static BigDecimal parseBigDecimal(char[] cArr) {
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i, int i2) {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw _badBD(new String(cArr, i, i2));
        }
    }

    public static double parseDouble(String str) {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static int parseInt(char[] cArr, int i, int i2) {
        int i3 = cArr[i] - '0';
        if (i2 > 4) {
            int i4 = i + 1;
            int i5 = i4 + 1;
            int i6 = i5 + 1;
            i = i6 + 1;
            i3 = (((((((i3 * 10) + (cArr[i4] - '0')) * 10) + (cArr[i5] - '0')) * 10) + (cArr[i6] - '0')) * 10) + (cArr[i] - '0');
            i2 -= 4;
            if (i2 > 4) {
                int i7 = i + 1;
                int i8 = i7 + 1;
                int i9 = i8 + 1;
                return (((((((i3 * 10) + (cArr[i7] - '0')) * 10) + (cArr[i8] - '0')) * 10) + (cArr[i9] - '0')) * 10) + (cArr[i9 + 1] - '0');
            }
        }
        if (i2 <= 1) {
            return i3;
        }
        int i10 = i + 1;
        int i11 = (i3 * 10) + (cArr[i10] - '0');
        if (i2 <= 2) {
            return i11;
        }
        int i12 = i10 + 1;
        int i13 = (i11 * 10) + (cArr[i12] - '0');
        return i2 > 3 ? (i13 * 10) + (cArr[i12 + 1] - '0') : i13;
    }

    public static long parseLong(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return ((long) parseInt(cArr, i3 + i, 9)) + (((long) parseInt(cArr, i, i3)) * 1000000000);
    }
}
