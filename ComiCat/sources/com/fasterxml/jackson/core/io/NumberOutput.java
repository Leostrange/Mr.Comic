package com.fasterxml.jackson.core.io;

import com.box.androidsdk.content.BoxConstants;

public final class NumberOutput {
    private static int BILLION = 1000000000;
    private static final char[] FULL_3 = new char[4000];
    private static final byte[] FULL_TRIPLETS_B = new byte[4000];
    private static final char[] LEAD_3 = new char[4000];
    private static long MAX_INT_AS_LONG = 2147483647L;
    private static int MILLION = 1000000;
    private static long MIN_INT_AS_LONG = -2147483648L;
    static final String SMALLEST_LONG = "-9223372036854775808";
    private static long TEN_BILLION_L = 10000000000L;
    private static long THOUSAND_L = 1000;
    private static final String[] sSmallIntStrs = {BoxConstants.ROOT_FOLDER_ID, "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
    private static final String[] sSmallIntStrs2 = {"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};

    static {
        int i = 0;
        int i2 = 0;
        while (i < 10) {
            char c = (char) (i + 48);
            char c2 = i == 0 ? 0 : c;
            int i3 = 0;
            while (i3 < 10) {
                char c3 = (char) (i3 + 48);
                char c4 = (i == 0 && i3 == 0) ? 0 : c3;
                int i4 = i2;
                for (int i5 = 0; i5 < 10; i5++) {
                    char c5 = (char) (i5 + 48);
                    LEAD_3[i4] = c2;
                    LEAD_3[i4 + 1] = c4;
                    LEAD_3[i4 + 2] = c5;
                    FULL_3[i4] = c;
                    FULL_3[i4 + 1] = c3;
                    FULL_3[i4 + 2] = c5;
                    i4 += 4;
                }
                i3++;
                i2 = i4;
            }
            i++;
        }
        for (int i6 = 0; i6 < 4000; i6++) {
            FULL_TRIPLETS_B[i6] = (byte) FULL_3[i6];
        }
    }

    private static int calcLongStrLength(long j) {
        int i = 10;
        for (long j2 = TEN_BILLION_L; j >= j2 && i != 19; j2 = (j2 << 1) + (j2 << 3)) {
            i++;
        }
        return i;
    }

    private static int full3(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        int i5 = i3 + 1;
        bArr[i2] = FULL_TRIPLETS_B[i3];
        int i6 = i4 + 1;
        bArr[i4] = FULL_TRIPLETS_B[i5];
        int i7 = i6 + 1;
        bArr[i6] = FULL_TRIPLETS_B[i5 + 1];
        return i7;
    }

    private static int full3(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        int i5 = i3 + 1;
        cArr[i2] = FULL_3[i3];
        int i6 = i4 + 1;
        cArr[i4] = FULL_3[i5];
        int i7 = i6 + 1;
        cArr[i6] = FULL_3[i5 + 1];
        return i7;
    }

    private static int leading3(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        int i4 = i3 + 1;
        char c = LEAD_3[i3];
        if (c != 0) {
            bArr[i2] = (byte) c;
            i2++;
        }
        int i5 = i4 + 1;
        char c2 = LEAD_3[i4];
        if (c2 != 0) {
            bArr[i2] = (byte) c2;
            i2++;
        }
        int i6 = i2 + 1;
        bArr[i2] = (byte) LEAD_3[i5];
        return i6;
    }

    private static int leading3(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        int i4 = i3 + 1;
        char c = LEAD_3[i3];
        if (c != 0) {
            cArr[i2] = c;
            i2++;
        }
        int i5 = i4 + 1;
        char c2 = LEAD_3[i4];
        if (c2 != 0) {
            cArr[i2] = c2;
            i2++;
        }
        int i6 = i2 + 1;
        cArr[i2] = LEAD_3[i5];
        return i6;
    }

    public static int outputInt(int i, byte[] bArr, int i2) {
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return outputLong((long) i, bArr, i2);
            }
            bArr[i2] = 45;
            i = -i;
            i2++;
        }
        if (i >= MILLION) {
            boolean z = i >= BILLION;
            if (z) {
                i -= BILLION;
                if (i >= BILLION) {
                    i -= BILLION;
                    bArr[i2] = 50;
                    i2++;
                } else {
                    bArr[i2] = 49;
                    i2++;
                }
            }
            int i3 = i / 1000;
            int i4 = i3 / 1000;
            return full3(i - (i3 * 1000), bArr, full3(i3 - (i4 * 1000), bArr, z ? full3(i4, bArr, i2) : leading3(i4, bArr, i2)));
        } else if (i >= 1000) {
            int i5 = i / 1000;
            return full3(i - (i5 * 1000), bArr, leading3(i5, bArr, i2));
        } else if (i >= 10) {
            return leading3(i, bArr, i2);
        } else {
            int i6 = i2 + 1;
            bArr[i2] = (byte) (i + 48);
            return i6;
        }
    }

    public static int outputInt(int i, char[] cArr, int i2) {
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                return outputLong((long) i, cArr, i2);
            }
            cArr[i2] = '-';
            i = -i;
            i2++;
        }
        if (i >= MILLION) {
            boolean z = i >= BILLION;
            if (z) {
                i -= BILLION;
                if (i >= BILLION) {
                    i -= BILLION;
                    cArr[i2] = '2';
                    i2++;
                } else {
                    cArr[i2] = '1';
                    i2++;
                }
            }
            int i3 = i / 1000;
            int i4 = i3 / 1000;
            return full3(i - (i3 * 1000), cArr, full3(i3 - (i4 * 1000), cArr, z ? full3(i4, cArr, i2) : leading3(i4, cArr, i2)));
        } else if (i >= 1000) {
            int i5 = i / 1000;
            return full3(i - (i5 * 1000), cArr, leading3(i5, cArr, i2));
        } else if (i >= 10) {
            return leading3(i, cArr, i2);
        } else {
            int i6 = i2 + 1;
            cArr[i2] = (char) (i + 48);
            return i6;
        }
    }

    public static int outputLong(long j, byte[] bArr, int i) {
        if (j < 0) {
            if (j > MIN_INT_AS_LONG) {
                return outputInt((int) j, bArr, i);
            }
            if (j == Long.MIN_VALUE) {
                int length = SMALLEST_LONG.length();
                int i2 = 0;
                int i3 = i;
                while (i2 < length) {
                    bArr[i3] = (byte) SMALLEST_LONG.charAt(i2);
                    i2++;
                    i3++;
                }
                return i3;
            }
            bArr[i] = 45;
            j = -j;
            i++;
        } else if (j <= MAX_INT_AS_LONG) {
            return outputInt((int) j, bArr, i);
        }
        int calcLongStrLength = i + calcLongStrLength(j);
        int i4 = calcLongStrLength;
        while (j > MAX_INT_AS_LONG) {
            i4 -= 3;
            long j2 = j / THOUSAND_L;
            full3((int) (j - (THOUSAND_L * j2)), bArr, i4);
            j = j2;
        }
        int i5 = i4;
        int i6 = (int) j;
        while (i6 >= 1000) {
            int i7 = i5 - 3;
            int i8 = i6 / 1000;
            full3(i6 - (i8 * 1000), bArr, i7);
            i6 = i8;
            i5 = i7;
        }
        leading3(i6, bArr, i);
        return calcLongStrLength;
    }

    public static int outputLong(long j, char[] cArr, int i) {
        if (j < 0) {
            if (j > MIN_INT_AS_LONG) {
                return outputInt((int) j, cArr, i);
            }
            if (j == Long.MIN_VALUE) {
                int length = SMALLEST_LONG.length();
                SMALLEST_LONG.getChars(0, length, cArr, i);
                return i + length;
            }
            cArr[i] = '-';
            j = -j;
            i++;
        } else if (j <= MAX_INT_AS_LONG) {
            return outputInt((int) j, cArr, i);
        }
        int calcLongStrLength = i + calcLongStrLength(j);
        int i2 = calcLongStrLength;
        while (j > MAX_INT_AS_LONG) {
            i2 -= 3;
            long j2 = j / THOUSAND_L;
            full3((int) (j - (THOUSAND_L * j2)), cArr, i2);
            j = j2;
        }
        int i3 = i2;
        int i4 = (int) j;
        while (i4 >= 1000) {
            int i5 = i3 - 3;
            int i6 = i4 / 1000;
            full3(i4 - (i6 * 1000), cArr, i5);
            i4 = i6;
            i3 = i5;
        }
        leading3(i4, cArr, i);
        return calcLongStrLength;
    }
}
