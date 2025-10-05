package defpackage;

import android.support.v4.app.NotificationCompat;
import java.util.Random;

/* renamed from: ws  reason: default package */
/* compiled from: MathLib */
public final class ws {
    static final double[] a = {0.4636476090008061d, 0.7853981633974483d, 0.982793723247329d, 1.5707963267948966d};
    static final double[] b = {2.2698777452961687E-17d, 3.061616997868383E-17d, 1.3903311031230998E-17d, 6.123233995736766E-17d};
    static final double[] c = {0.3333333333333293d, -0.19999999999876483d, 0.14285714272503466d, -0.11111110405462356d, 0.09090887133436507d, -0.0769187620504483d, 0.06661073137387531d, -0.058335701337905735d, 0.049768779946159324d, -0.036531572744216916d, 0.016285820115365782d};
    static final double[] d = {0.5d, -0.5d};
    static final double[] e = {0.6931471803691238d, -0.6931471803691238d};
    static final double[] f = {1.9082149292705877E-10d, -1.9082149292705877E-10d};
    private static final Random g = new Random();
    private static final byte[] h;
    private static final int[] i = {1, 5, 25, 125, 625, 3125, 15625, 78125, 390625, 1953125, 9765625, 48828125, 244140625, 1220703125};
    private static double j = 0.4342944819032518d;

    static {
        byte[] bArr = new byte[NotificationCompat.FLAG_LOCAL_ONLY];
        // fill-array-data instruction
        bArr[0] = 0;
        bArr[1] = 1;
        bArr[2] = 2;
        bArr[3] = 2;
        bArr[4] = 3;
        bArr[5] = 3;
        bArr[6] = 3;
        bArr[7] = 3;
        bArr[8] = 4;
        bArr[9] = 4;
        bArr[10] = 4;
        bArr[11] = 4;
        bArr[12] = 4;
        bArr[13] = 4;
        bArr[14] = 4;
        bArr[15] = 4;
        bArr[16] = 5;
        bArr[17] = 5;
        bArr[18] = 5;
        bArr[19] = 5;
        bArr[20] = 5;
        bArr[21] = 5;
        bArr[22] = 5;
        bArr[23] = 5;
        bArr[24] = 5;
        bArr[25] = 5;
        bArr[26] = 5;
        bArr[27] = 5;
        bArr[28] = 5;
        bArr[29] = 5;
        bArr[30] = 5;
        bArr[31] = 5;
        bArr[32] = 6;
        bArr[33] = 6;
        bArr[34] = 6;
        bArr[35] = 6;
        bArr[36] = 6;
        bArr[37] = 6;
        bArr[38] = 6;
        bArr[39] = 6;
        bArr[40] = 6;
        bArr[41] = 6;
        bArr[42] = 6;
        bArr[43] = 6;
        bArr[44] = 6;
        bArr[45] = 6;
        bArr[46] = 6;
        bArr[47] = 6;
        bArr[48] = 6;
        bArr[49] = 6;
        bArr[50] = 6;
        bArr[51] = 6;
        bArr[52] = 6;
        bArr[53] = 6;
        bArr[54] = 6;
        bArr[55] = 6;
        bArr[56] = 6;
        bArr[57] = 6;
        bArr[58] = 6;
        bArr[59] = 6;
        bArr[60] = 6;
        bArr[61] = 6;
        bArr[62] = 6;
        bArr[63] = 6;
        bArr[64] = 7;
        bArr[65] = 7;
        bArr[66] = 7;
        bArr[67] = 7;
        bArr[68] = 7;
        bArr[69] = 7;
        bArr[70] = 7;
        bArr[71] = 7;
        bArr[72] = 7;
        bArr[73] = 7;
        bArr[74] = 7;
        bArr[75] = 7;
        bArr[76] = 7;
        bArr[77] = 7;
        bArr[78] = 7;
        bArr[79] = 7;
        bArr[80] = 7;
        bArr[81] = 7;
        bArr[82] = 7;
        bArr[83] = 7;
        bArr[84] = 7;
        bArr[85] = 7;
        bArr[86] = 7;
        bArr[87] = 7;
        bArr[88] = 7;
        bArr[89] = 7;
        bArr[90] = 7;
        bArr[91] = 7;
        bArr[92] = 7;
        bArr[93] = 7;
        bArr[94] = 7;
        bArr[95] = 7;
        bArr[96] = 7;
        bArr[97] = 7;
        bArr[98] = 7;
        bArr[99] = 7;
        bArr[100] = 7;
        bArr[101] = 7;
        bArr[102] = 7;
        bArr[103] = 7;
        bArr[104] = 7;
        bArr[105] = 7;
        bArr[106] = 7;
        bArr[107] = 7;
        bArr[108] = 7;
        bArr[109] = 7;
        bArr[110] = 7;
        bArr[111] = 7;
        bArr[112] = 7;
        bArr[113] = 7;
        bArr[114] = 7;
        bArr[115] = 7;
        bArr[116] = 7;
        bArr[117] = 7;
        bArr[118] = 7;
        bArr[119] = 7;
        bArr[120] = 7;
        bArr[121] = 7;
        bArr[122] = 7;
        bArr[123] = 7;
        bArr[124] = 7;
        bArr[125] = 7;
        bArr[126] = 7;
        bArr[127] = 7;
        bArr[128] = 8;
        bArr[129] = 8;
        bArr[130] = 8;
        bArr[131] = 8;
        bArr[132] = 8;
        bArr[133] = 8;
        bArr[134] = 8;
        bArr[135] = 8;
        bArr[136] = 8;
        bArr[137] = 8;
        bArr[138] = 8;
        bArr[139] = 8;
        bArr[140] = 8;
        bArr[141] = 8;
        bArr[142] = 8;
        bArr[143] = 8;
        bArr[144] = 8;
        bArr[145] = 8;
        bArr[146] = 8;
        bArr[147] = 8;
        bArr[148] = 8;
        bArr[149] = 8;
        bArr[150] = 8;
        bArr[151] = 8;
        bArr[152] = 8;
        bArr[153] = 8;
        bArr[154] = 8;
        bArr[155] = 8;
        bArr[156] = 8;
        bArr[157] = 8;
        bArr[158] = 8;
        bArr[159] = 8;
        bArr[160] = 8;
        bArr[161] = 8;
        bArr[162] = 8;
        bArr[163] = 8;
        bArr[164] = 8;
        bArr[165] = 8;
        bArr[166] = 8;
        bArr[167] = 8;
        bArr[168] = 8;
        bArr[169] = 8;
        bArr[170] = 8;
        bArr[171] = 8;
        bArr[172] = 8;
        bArr[173] = 8;
        bArr[174] = 8;
        bArr[175] = 8;
        bArr[176] = 8;
        bArr[177] = 8;
        bArr[178] = 8;
        bArr[179] = 8;
        bArr[180] = 8;
        bArr[181] = 8;
        bArr[182] = 8;
        bArr[183] = 8;
        bArr[184] = 8;
        bArr[185] = 8;
        bArr[186] = 8;
        bArr[187] = 8;
        bArr[188] = 8;
        bArr[189] = 8;
        bArr[190] = 8;
        bArr[191] = 8;
        bArr[192] = 8;
        bArr[193] = 8;
        bArr[194] = 8;
        bArr[195] = 8;
        bArr[196] = 8;
        bArr[197] = 8;
        bArr[198] = 8;
        bArr[199] = 8;
        bArr[200] = 8;
        bArr[201] = 8;
        bArr[202] = 8;
        bArr[203] = 8;
        bArr[204] = 8;
        bArr[205] = 8;
        bArr[206] = 8;
        bArr[207] = 8;
        bArr[208] = 8;
        bArr[209] = 8;
        bArr[210] = 8;
        bArr[211] = 8;
        bArr[212] = 8;
        bArr[213] = 8;
        bArr[214] = 8;
        bArr[215] = 8;
        bArr[216] = 8;
        bArr[217] = 8;
        bArr[218] = 8;
        bArr[219] = 8;
        bArr[220] = 8;
        bArr[221] = 8;
        bArr[222] = 8;
        bArr[223] = 8;
        bArr[224] = 8;
        bArr[225] = 8;
        bArr[226] = 8;
        bArr[227] = 8;
        bArr[228] = 8;
        bArr[229] = 8;
        bArr[230] = 8;
        bArr[231] = 8;
        bArr[232] = 8;
        bArr[233] = 8;
        bArr[234] = 8;
        bArr[235] = 8;
        bArr[236] = 8;
        bArr[237] = 8;
        bArr[238] = 8;
        bArr[239] = 8;
        bArr[240] = 8;
        bArr[241] = 8;
        bArr[242] = 8;
        bArr[243] = 8;
        bArr[244] = 8;
        bArr[245] = 8;
        bArr[246] = 8;
        bArr[247] = 8;
        bArr[248] = 8;
        bArr[249] = 8;
        bArr[250] = 8;
        bArr[251] = 8;
        bArr[252] = 8;
        bArr[253] = 8;
        bArr[254] = 8;
        bArr[255] = 8;
        h = bArr;
    }

    public static double a(long j2, int i2) {
        int i3;
        long j3;
        long j4;
        int i4 = i2;
        long j5 = j2;
        while (j5 != 0) {
            if (j5 == Long.MIN_VALUE) {
                j5 = -922337203685477580L;
                i4++;
            } else if (j5 < 0) {
                return -a(-j5, i4);
            } else {
                if (i4 >= 0) {
                    if (i4 > 308) {
                        return Double.POSITIVE_INFINITY;
                    }
                    long j6 = j5 & 4294967295L;
                    long j7 = j5 >>> 32;
                    int i5 = 0;
                    long j8 = 0;
                    long j9 = j6;
                    long j10 = j7;
                    long j11 = 0;
                    long j12 = j9;
                    while (i4 != 0) {
                        int length = i4 >= i.length ? i.length - 1 : i4;
                        int i6 = i[length];
                        if (((int) j8) != 0) {
                            j8 *= (long) i6;
                        }
                        if (((int) j11) != 0) {
                            j11 *= (long) i6;
                        }
                        long j13 = j10 * ((long) i6);
                        long j14 = j11 + (j8 >>> 32);
                        long j15 = j8 & 4294967295L;
                        long j16 = (j14 >>> 32) + (j12 * ((long) i6));
                        long j17 = j14 & 4294967295L;
                        long j18 = j13 + (j16 >>> 32);
                        long j19 = j16 & 4294967295L;
                        int i7 = i5 + length;
                        i4 -= length;
                        long j20 = j18 >>> 32;
                        if (j20 != 0) {
                            i3 = i7 + 32;
                            j4 = j20;
                            j3 = j18 & 4294967295L;
                        } else {
                            i3 = i7;
                            j3 = j19;
                            j4 = j18;
                            j19 = j17;
                            j17 = j15;
                        }
                        i5 = i3;
                        j10 = j4;
                        j11 = j19;
                        j12 = j3;
                        j8 = j17;
                    }
                    int b2 = 31 - b(j10);
                    return b(b2 < 0 ? (j10 << 31) | (j12 >>> 1) : (j11 >>> (32 - b2)) | (((j10 << 32) | j12) << b2), i5 - b2);
                } else if (i4 < -344) {
                    return 0.0d;
                } else {
                    long j21 = 0;
                    int i8 = 0;
                    while (true) {
                        int b3 = 63 - b(j5);
                        long j22 = (j5 << b3) | (j21 >>> (63 - b3));
                        long j23 = (j21 << b3) & Long.MAX_VALUE;
                        int i9 = i8 - b3;
                        if (i4 == 0) {
                            return b(j22, i9);
                        }
                        int length2 = (-i4) >= i.length ? i.length - 1 : -i4;
                        int i10 = i[length2];
                        long j24 = j22 >>> 32;
                        long j25 = j24 / ((long) i10);
                        long j26 = (j22 & 4294967295L) | ((j24 - (((long) i10) * j25)) << 32);
                        long j27 = j26 / ((long) i10);
                        long j28 = j26 - (((long) i10) * j27);
                        j5 = (j25 << 32) | j27;
                        long j29 = (j28 << 31) | (j23 >>> 32);
                        long j30 = j29 / ((long) i10);
                        j21 = (((j23 & 4294967295L) | ((j29 - (((long) i10) * j30)) << 32)) / ((long) i10)) | (j30 << 32);
                        i4 += length2;
                        i8 = i9 - length2;
                    }
                }
            }
        }
        return 0.0d;
    }

    public static float a(float f2) {
        return f2 < 0.0f ? -f2 : f2;
    }

    public static int a(double d2) {
        int c2 = (int) (0.3010299956639812d * ((double) c(d2)));
        double a2 = a(1, c2);
        return (a2 > d2 || 10.0d * a2 <= d2) ? a2 > d2 ? c2 - 1 : c2 + 1 : c2;
    }

    public static int a(int i2) {
        while (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                return 10;
            }
            i2 = -i2;
        }
        if (i2 >= 100000) {
            if (i2 < 10000000) {
                return i2 >= 1000000 ? 7 : 6;
            }
            if (i2 >= 1000000000) {
                return 10;
            }
            return i2 >= 100000000 ? 9 : 8;
        } else if (i2 < 100) {
            return i2 >= 10 ? 2 : 1;
        } else {
            if (i2 >= 10000) {
                return 5;
            }
            return i2 >= 1000 ? 4 : 3;
        }
    }

    public static int a(int i2, int i3) {
        return i2 < i3 ? i2 : i3;
    }

    public static int a(long j2) {
        while (j2 < 0) {
            if (j2 == Long.MIN_VALUE) {
                return 19;
            }
            j2 = -j2;
        }
        if (j2 <= 2147483647L) {
            return a((int) j2);
        }
        if (j2 >= 100000000000000L) {
            if (j2 < 10000000000000000L) {
                return j2 >= 1000000000000000L ? 16 : 15;
            }
            if (j2 < 1000000000000000000L) {
                return j2 >= 100000000000000000L ? 18 : 17;
            }
            return 19;
        } else if (j2 < 100000000000L) {
            return j2 >= 10000000000L ? 11 : 10;
        } else {
            if (j2 >= 10000000000000L) {
                return 14;
            }
            return j2 >= 1000000000000L ? 13 : 12;
        }
    }

    public static long a(double d2, int i2) {
        long j2;
        int i3;
        long j3;
        int i4;
        long j4;
        int i5;
        while (true) {
            long doubleToLongBits = Double.doubleToLongBits(d2);
            boolean z = (doubleToLongBits >> 63) != 0;
            int i6 = ((int) (doubleToLongBits >> 52)) & 2047;
            long j5 = doubleToLongBits & 4503599627370495L;
            if (i6 == 2047) {
                throw new ArithmeticException("Cannot convert to long (Infinity or NaN)");
            } else if (i6 != 0) {
                long j6 = j5 | 4503599627370496L;
                int i7 = (i6 - 1023) - 52;
                if (i2 >= 0) {
                    long j7 = j6 & 4294967295L;
                    long j8 = j6 >>> 32;
                    long j9 = 0;
                    int i8 = i7;
                    long j10 = 0;
                    long j11 = j7;
                    long j12 = j8;
                    int i9 = i2;
                    while (i9 != 0) {
                        int length = i9 >= i.length ? i.length - 1 : i9;
                        int i10 = i[length];
                        long j13 = ((int) j9) != 0 ? j9 * ((long) i10) : j9;
                        long j14 = ((int) j10) != 0 ? ((long) i10) * j10 : j10;
                        long j15 = ((long) i10) * j11;
                        long j16 = ((long) i10) * j12;
                        long j17 = j14 + (j13 >>> 32);
                        long j18 = 4294967295L & j13;
                        long j19 = j15 + (j17 >>> 32);
                        long j20 = 4294967295L & j17;
                        long j21 = (j19 >>> 32) + j16;
                        j10 = j19 & 4294967295L;
                        int i11 = i8 + length;
                        int i12 = i9 - length;
                        long j22 = j21 >>> 32;
                        if (j22 != 0) {
                            j4 = j21 & 4294967295L;
                            i5 = i11 + 32;
                        } else {
                            j22 = j21;
                            j4 = j10;
                            j10 = j20;
                            j20 = j18;
                            i5 = i11;
                        }
                        j11 = j4;
                        i8 = i5;
                        j9 = j20;
                        j12 = j22;
                        i9 = i12;
                    }
                    int b2 = 31 - b(j12);
                    i4 = i8 - b2;
                    j3 = b2 < 0 ? (j12 << 31) | (j11 >>> 1) : (j10 >>> (32 - b2)) | (((j12 << 32) | j11) << b2);
                } else {
                    long j23 = 0;
                    while (true) {
                        int b3 = 63 - b(j6);
                        j2 = (j6 << b3) | (j23 >>> (63 - b3));
                        long j24 = Long.MAX_VALUE & (j23 << b3);
                        i3 = i7 - b3;
                        if (i2 == 0) {
                            break;
                        }
                        int length2 = (-i2) >= i.length ? i.length - 1 : -i2;
                        int i13 = i[length2];
                        long j25 = j2 >>> 32;
                        long j26 = j25 / ((long) i13);
                        long j27 = (j2 & 4294967295L) | ((j25 - (((long) i13) * j26)) << 32);
                        long j28 = j27 / ((long) i13);
                        long j29 = j27 - (((long) i13) * j28);
                        j6 = (j26 << 32) | j28;
                        long j30 = (j29 << 31) | (j24 >>> 32);
                        long j31 = j30 / ((long) i13);
                        j23 = (((j24 & 4294967295L) | ((j30 - (((long) i13) * j31)) << 32)) / ((long) i13)) | (j31 << 32);
                        i2 += length2;
                        i7 = i3 - length2;
                    }
                    j3 = j2;
                    i4 = i3;
                }
                if (i4 > 0) {
                    throw new ArithmeticException("Overflow");
                } else if (i4 < -63) {
                    return 0;
                } else {
                    long j32 = ((j3 >> (-(i4 + 1))) & 1) + (j3 >> (-i4));
                    return z ? -j32 : j32;
                }
            } else if (j5 == 0) {
                return 0;
            } else {
                d2 *= 1.0E16d;
                i2 -= 16;
            }
        }
    }

    public static double b(double d2) {
        return d2 < 0.0d ? -d2 : d2;
    }

    private static double b(long j2, int i2) {
        long j3;
        while (j2 != 0) {
            if (j2 == Long.MIN_VALUE) {
                j2 = -4611686018427387904L;
                i2++;
            } else if (j2 < 0) {
                return -b(-j2, i2);
            } else {
                int b2 = b(j2) - 53;
                long j4 = 1075 + ((long) i2) + ((long) b2);
                if (j4 >= 2047) {
                    return Double.POSITIVE_INFINITY;
                }
                if (j4 > 0) {
                    if (b2 > 0) {
                        j3 = ((j2 >> (b2 - 1)) & 1) + (j2 >> b2);
                    } else {
                        j3 = j2 << (-b2);
                    }
                    if ((j3 >> 52) != 1) {
                        j4++;
                        if (j4 >= 2047) {
                            return Double.POSITIVE_INFINITY;
                        }
                    }
                    return Double.longBitsToDouble((j4 << 52) | (j3 & 4503599627370495L));
                } else if (j4 <= -54) {
                    return 0.0d;
                } else {
                    return b(j2, i2 + 54) / 1.8014398509481984E16d;
                }
            }
        }
        return 0.0d;
    }

    private static int b(long j2) {
        while (true) {
            int i2 = (int) (j2 >> 32);
            if (i2 > 0) {
                return i2 < 65536 ? i2 < 256 ? h[i2] + 32 : h[i2 >>> 8] + 40 : i2 < 16777216 ? h[i2 >>> 16] + 48 : h[i2 >>> 24] + 56;
            }
            if (i2 < 0) {
                j2 = -(1 + j2);
            } else {
                int i3 = (int) j2;
                if (i3 >= 0) {
                    return i3 < 65536 ? i3 < 256 ? h[i3] : h[i3 >>> 8] + 8 : i3 < 16777216 ? h[i3 >>> 16] + 16 : h[i3 >>> 24] + 24;
                }
                return 32;
            }
        }
    }

    private static int c(double d2) {
        if (d2 <= 0.0d) {
            throw new ArithmeticException("Negative number or zero");
        }
        int doubleToLongBits = ((int) (Double.doubleToLongBits(d2) >> 52)) & 2047;
        if (doubleToLongBits != 2047) {
            return doubleToLongBits == 0 ? c(1.8014398509481984E16d * d2) - 54 : doubleToLongBits - 1023;
        }
        throw new ArithmeticException("Infinity or NaN");
    }
}
