package defpackage;

import android.support.v4.app.NotificationCompat;
import defpackage.aif;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

/* renamed from: aix  reason: default package */
/* compiled from: Utf8Generator */
public final class aix extends air {
    static final byte[] g = ajt.h();
    protected static final int[] h = ajt.f();
    private static final byte[] u = {110, 117, 108, 108};
    private static final byte[] v = {116, 114, 117, 101};
    private static final byte[] w = {102, 97, 108, 115, 101};
    protected final ajc i;
    protected final OutputStream j;
    protected int[] k = h;
    protected int l;
    protected ajb m;
    protected byte[] n;
    protected int o = 0;
    protected final int p;
    protected final int q;
    protected char[] r;
    protected final int s;
    protected boolean t;

    public aix(ajc ajc, int i2, aim aim, OutputStream outputStream) {
        super(i2, aim);
        this.i = ajc;
        this.j = outputStream;
        this.t = true;
        this.n = ajc.f();
        this.p = this.n.length;
        this.q = this.p >> 3;
        this.r = ajc.h();
        this.s = this.r.length;
        if (a(aif.a.ESCAPE_NON_ASCII)) {
            this.l = 127;
        }
    }

    private final int a(int i2, int i3) {
        byte[] bArr = this.n;
        if (i2 < 55296 || i2 > 57343) {
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((i2 >> 12) | 224);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (((i2 >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i6 = i5 + 1;
            bArr[i5] = (byte) ((i2 & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            return i6;
        }
        int i7 = i3 + 1;
        bArr[i3] = 92;
        int i8 = i7 + 1;
        bArr[i7] = 117;
        int i9 = i8 + 1;
        bArr[i8] = g[(i2 >> 12) & 15];
        int i10 = i9 + 1;
        bArr[i9] = g[(i2 >> 8) & 15];
        int i11 = i10 + 1;
        bArr[i10] = g[(i2 >> 4) & 15];
        int i12 = i11 + 1;
        bArr[i11] = g[i2 & 15];
        return i12;
    }

    private final int a(int i2, char[] cArr, int i3, int i4) {
        if (i2 < 55296 || i2 > 57343) {
            byte[] bArr = this.n;
            int i5 = this.o;
            this.o = i5 + 1;
            bArr[i5] = (byte) ((i2 >> 12) | 224);
            int i6 = this.o;
            this.o = i6 + 1;
            bArr[i6] = (byte) (((i2 >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i7 = this.o;
            this.o = i7 + 1;
            bArr[i7] = (byte) ((i2 & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            return i3;
        }
        if (i3 >= i4) {
            e("Split surrogate on writeRaw() input (last character)");
        }
        char c = cArr[i3];
        if (c < 56320 || c > 57343) {
            e("Incomplete surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(c));
        }
        int i8 = (c - 56320) + 65536 + ((i2 - 55296) << 10);
        if (this.o + 4 > this.p) {
            l();
        }
        byte[] bArr2 = this.n;
        int i9 = this.o;
        this.o = i9 + 1;
        bArr2[i9] = (byte) ((i8 >> 18) | 240);
        int i10 = this.o;
        this.o = i10 + 1;
        bArr2[i10] = (byte) (((i8 >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        int i11 = this.o;
        this.o = i11 + 1;
        bArr2[i11] = (byte) (((i8 >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        int i12 = this.o;
        this.o = i12 + 1;
        bArr2[i12] = (byte) ((i8 & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        return i3 + 1;
    }

    private int a(byte[] bArr, int i2, aio aio, int i3) {
        int i4;
        byte[] b = aio.b();
        int length = b.length;
        if (length > 6) {
            int i5 = this.p;
            int length2 = b.length;
            if (i2 + length2 > i5) {
                this.o = i2;
                l();
                int i6 = this.o;
                if (length2 > bArr.length) {
                    this.j.write(b, 0, length2);
                    return i6;
                }
                System.arraycopy(b, 0, bArr, i6, length2);
                i4 = i6 + length2;
            } else {
                i4 = i2;
            }
            if ((i3 * 6) + i4 <= i5) {
                return i4;
            }
            l();
            return this.o;
        }
        System.arraycopy(b, 0, bArr, i2, length);
        return length + i2;
    }

    private final void a(Object obj) {
        if (this.o >= this.p) {
            l();
        }
        byte[] bArr = this.n;
        int i2 = this.o;
        this.o = i2 + 1;
        bArr[i2] = 34;
        c(obj.toString());
        if (this.o >= this.p) {
            l();
        }
        byte[] bArr2 = this.n;
        int i3 = this.o;
        this.o = i3 + 1;
        bArr2[i3] = 34;
    }

    private int b(int i2, int i3) {
        int i4;
        byte[] bArr = this.n;
        int i5 = i3 + 1;
        bArr[i3] = 92;
        int i6 = i5 + 1;
        bArr[i5] = 117;
        if (i2 > 255) {
            int i7 = (i2 >> 8) & 255;
            int i8 = i6 + 1;
            bArr[i6] = g[i7 >> 4];
            i4 = i8 + 1;
            bArr[i8] = g[i7 & 15];
            i2 &= 255;
        } else {
            int i9 = i6 + 1;
            bArr[i6] = 48;
            i4 = i9 + 1;
            bArr[i9] = 48;
        }
        int i10 = i4 + 1;
        bArr[i4] = g[i2 >> 4];
        int i11 = i10 + 1;
        bArr[i10] = g[i2 & 15];
        return i11;
    }

    private final void b(char[] cArr, int i2, int i3) {
        do {
            int min = Math.min(this.q, i3);
            if (this.o + min > this.p) {
                l();
            }
            c(cArr, i2, min);
            i2 += min;
            i3 -= min;
        } while (i3 > 0);
    }

    private final void c(char[] cArr, int i2, int i3) {
        int i4;
        int i5 = i3 + i2;
        int i6 = this.o;
        byte[] bArr = this.n;
        int[] iArr = this.k;
        int i7 = i2;
        while (i4 < i5) {
            char c = cArr[i4];
            if (c > 127 || iArr[c] != 0) {
                break;
            }
            bArr[i6] = (byte) c;
            i7 = i4 + 1;
            i6++;
        }
        this.o = i6;
        if (i4 >= i5) {
            return;
        }
        if (this.m != null) {
            if (this.o + ((i5 - i4) * 6) > this.p) {
                l();
            }
            int i8 = this.o;
            byte[] bArr2 = this.n;
            int[] iArr2 = this.k;
            int i9 = this.l <= 0 ? 65535 : this.l;
            ajb ajb = this.m;
            while (i4 < i5) {
                int i10 = i4 + 1;
                char c2 = cArr[i4];
                if (c2 <= 127) {
                    if (iArr2[c2] == 0) {
                        bArr2[i8] = (byte) c2;
                        i8++;
                        i4 = i10;
                    } else {
                        int i11 = iArr2[c2];
                        if (i11 > 0) {
                            int i12 = i8 + 1;
                            bArr2[i8] = 92;
                            i8 = i12 + 1;
                            bArr2[i12] = (byte) i11;
                            i4 = i10;
                        } else if (i11 == -2) {
                            aio b = ajb.b();
                            if (b == null) {
                                throw new aie("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c2) + ", although was supposed to have one");
                            }
                            i8 = a(bArr2, i8, b, i5 - i10);
                            i4 = i10;
                        } else {
                            i8 = b(c2, i8);
                            i4 = i10;
                        }
                    }
                } else if (c2 > i9) {
                    i8 = b(c2, i8);
                    i4 = i10;
                } else {
                    aio b2 = ajb.b();
                    if (b2 != null) {
                        i8 = a(bArr2, i8, b2, i5 - i10);
                        i4 = i10;
                    } else if (c2 <= 2047) {
                        int i13 = i8 + 1;
                        bArr2[i8] = (byte) ((c2 >> 6) | 192);
                        i8 = i13 + 1;
                        bArr2[i13] = (byte) ((c2 & '?') | 128);
                        i4 = i10;
                    } else {
                        i8 = a(c2, i8);
                        i4 = i10;
                    }
                }
            }
            this.o = i8;
        } else if (this.l == 0) {
            d(cArr, i4, i5);
        } else {
            e(cArr, i4, i5);
        }
    }

    private final void d(char[] cArr, int i2, int i3) {
        if (this.o + ((i3 - i2) * 6) > this.p) {
            l();
        }
        int i4 = this.o;
        byte[] bArr = this.n;
        int[] iArr = this.k;
        while (i2 < i3) {
            int i5 = i2 + 1;
            char c = cArr[i2];
            if (c <= 127) {
                if (iArr[c] == 0) {
                    bArr[i4] = (byte) c;
                    i4++;
                    i2 = i5;
                } else {
                    int i6 = iArr[c];
                    if (i6 > 0) {
                        int i7 = i4 + 1;
                        bArr[i4] = 92;
                        i4 = i7 + 1;
                        bArr[i7] = (byte) i6;
                        i2 = i5;
                    } else {
                        i4 = b(c, i4);
                        i2 = i5;
                    }
                }
            } else if (c <= 2047) {
                int i8 = i4 + 1;
                bArr[i4] = (byte) ((c >> 6) | 192);
                i4 = i8 + 1;
                bArr[i8] = (byte) ((c & '?') | 128);
                i2 = i5;
            } else {
                i4 = a(c, i4);
                i2 = i5;
            }
        }
        this.o = i4;
    }

    private final void e(char[] cArr, int i2, int i3) {
        if (this.o + ((i3 - i2) * 6) > this.p) {
            l();
        }
        int i4 = this.o;
        byte[] bArr = this.n;
        int[] iArr = this.k;
        int i5 = this.l;
        while (i2 < i3) {
            int i6 = i2 + 1;
            char c = cArr[i2];
            if (c <= 127) {
                if (iArr[c] == 0) {
                    bArr[i4] = (byte) c;
                    i4++;
                    i2 = i6;
                } else {
                    int i7 = iArr[c];
                    if (i7 > 0) {
                        int i8 = i4 + 1;
                        bArr[i4] = 92;
                        i4 = i8 + 1;
                        bArr[i8] = (byte) i7;
                        i2 = i6;
                    } else {
                        i4 = b(c, i4);
                        i2 = i6;
                    }
                }
            } else if (c > i5) {
                i4 = b(c, i4);
                i2 = i6;
            } else if (c <= 2047) {
                int i9 = i4 + 1;
                bArr[i4] = (byte) ((c >> 6) | 192);
                i4 = i9 + 1;
                bArr[i9] = (byte) ((c & '?') | 128);
                i2 = i6;
            } else {
                i4 = a(c, i4);
                i2 = i6;
            }
        }
        this.o = i4;
    }

    private final void f(String str) {
        int length = str.length();
        char[] cArr = this.r;
        int i2 = length;
        int i3 = 0;
        while (i2 > 0) {
            int min = Math.min(this.q, i2);
            str.getChars(i3, i3 + min, cArr, 0);
            if (this.o + min > this.p) {
                l();
            }
            c(cArr, 0, min);
            i3 += min;
            i2 -= min;
        }
    }

    private final void k() {
        if (this.o + 4 >= this.p) {
            l();
        }
        System.arraycopy(u, 0, this.n, this.o, 4);
        this.o += 4;
    }

    private void l() {
        int i2 = this.o;
        if (i2 > 0) {
            this.o = 0;
            this.j.write(this.n, 0, i2);
        }
    }

    public final aif a(ajb ajb) {
        this.m = ajb;
        if (ajb == null) {
            this.k = h;
        } else {
            this.k = ajb.a();
        }
        return this;
    }

    public final void a(char c) {
        if (this.o + 3 >= this.p) {
            l();
        }
        byte[] bArr = this.n;
        if (c <= 127) {
            int i2 = this.o;
            this.o = i2 + 1;
            bArr[i2] = (byte) c;
        } else if (c < 2048) {
            int i3 = this.o;
            this.o = i3 + 1;
            bArr[i3] = (byte) ((c >> 6) | 192);
            int i4 = this.o;
            this.o = i4 + 1;
            bArr[i4] = (byte) ((c & '?') | 128);
        } else {
            a((int) c, (char[]) null, 0, 0);
        }
    }

    public final void a(double d) {
        if (this.d || ((Double.isNaN(d) || Double.isInfinite(d)) && a(aif.a.QUOTE_NON_NUMERIC_NUMBERS))) {
            b(String.valueOf(d));
            return;
        }
        d("write number");
        c(String.valueOf(d));
    }

    public final void a(float f) {
        if (this.d || ((Float.isNaN(f) || Float.isInfinite(f)) && a(aif.a.QUOTE_NON_NUMERIC_NUMBERS))) {
            b(String.valueOf(f));
            return;
        }
        d("write number");
        c(String.valueOf(f));
    }

    public final void a(int i2) {
        d("write number");
        if (this.o + 11 >= this.p) {
            l();
        }
        if (this.d) {
            if (this.o + 13 >= this.p) {
                l();
            }
            byte[] bArr = this.n;
            int i3 = this.o;
            this.o = i3 + 1;
            bArr[i3] = 34;
            this.o = ajg.a(i2, this.n, this.o);
            byte[] bArr2 = this.n;
            int i4 = this.o;
            this.o = i4 + 1;
            bArr2[i4] = 34;
            return;
        }
        this.o = ajg.a(i2, this.n, this.o);
    }

    public final void a(long j2) {
        d("write number");
        if (this.d) {
            if (this.o + 23 >= this.p) {
                l();
            }
            byte[] bArr = this.n;
            int i2 = this.o;
            this.o = i2 + 1;
            bArr[i2] = 34;
            this.o = ajg.a(j2, this.n, this.o);
            byte[] bArr2 = this.n;
            int i3 = this.o;
            this.o = i3 + 1;
            bArr2[i3] = 34;
            return;
        }
        if (this.o + 21 >= this.p) {
            l();
        }
        this.o = ajg.a(j2, this.n, this.o);
    }

    public final void a(String str) {
        boolean z = true;
        int a = this.e.a(str);
        if (a == 4) {
            e("Can not write a field name, expecting a value");
        }
        if (this.a != null) {
            if (a != 1) {
                z = false;
            }
            if (z) {
                this.a.c(this);
            } else {
                this.a.h(this);
            }
            if (a(aif.a.QUOTE_FIELD_NAMES)) {
                if (this.o >= this.p) {
                    l();
                }
                byte[] bArr = this.n;
                int i2 = this.o;
                this.o = i2 + 1;
                bArr[i2] = 34;
                int length = str.length();
                if (length <= this.s) {
                    str.getChars(0, length, this.r, 0);
                    if (length <= this.q) {
                        if (this.o + length > this.p) {
                            l();
                        }
                        c(this.r, 0, length);
                    } else {
                        b(this.r, 0, length);
                    }
                } else {
                    f(str);
                }
                if (this.o >= this.p) {
                    l();
                }
                byte[] bArr2 = this.n;
                int i3 = this.o;
                this.o = i3 + 1;
                bArr2[i3] = 34;
                return;
            }
            f(str);
            return;
        }
        if (a == 1) {
            if (this.o >= this.p) {
                l();
            }
            byte[] bArr3 = this.n;
            int i4 = this.o;
            this.o = i4 + 1;
            bArr3[i4] = 44;
        }
        if (!a(aif.a.QUOTE_FIELD_NAMES)) {
            f(str);
            return;
        }
        if (this.o >= this.p) {
            l();
        }
        byte[] bArr4 = this.n;
        int i5 = this.o;
        this.o = i5 + 1;
        bArr4[i5] = 34;
        int length2 = str.length();
        if (length2 <= this.s) {
            str.getChars(0, length2, this.r, 0);
            if (length2 <= this.q) {
                if (this.o + length2 > this.p) {
                    l();
                }
                c(this.r, 0, length2);
            } else {
                b(this.r, 0, length2);
            }
        } else {
            f(str);
        }
        if (this.o >= this.p) {
            l();
        }
        byte[] bArr5 = this.n;
        int i6 = this.o;
        this.o = i6 + 1;
        bArr5[i6] = 34;
    }

    public final void a(BigDecimal bigDecimal) {
        d("write number");
        if (bigDecimal == null) {
            k();
        } else if (this.d) {
            a((Object) bigDecimal);
        } else {
            c(bigDecimal.toString());
        }
    }

    public final void a(BigInteger bigInteger) {
        d("write number");
        if (bigInteger == null) {
            k();
        } else if (this.d) {
            a((Object) bigInteger);
        } else {
            c(bigInteger.toString());
        }
    }

    public final void a(boolean z) {
        d("write boolean value");
        if (this.o + 5 >= this.p) {
            l();
        }
        byte[] bArr = z ? v : w;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this.n, this.o, length);
        this.o += length;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0038, code lost:
        if ((r7.o + 3) < r7.p) goto L_0x003d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003a, code lost:
        l();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003d, code lost:
        r1 = r0 + 1;
        r0 = r8[r0];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0041, code lost:
        if (r0 >= 2048) goto L_0x005f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0043, code lost:
        r4 = r7.o;
        r7.o = r4 + 1;
        r3[r4] = (byte) ((r0 >> 6) | 192);
        r4 = r7.o;
        r7.o = r4 + 1;
        r3[r4] = (byte) ((r0 & '?') | 128);
        r0 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005f, code lost:
        a((int) r0, r8, r1, r10);
        r0 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0082, code lost:
        r9 = r0 + 1;
        r0 = r8[r0];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0086, code lost:
        if (r0 >= 2048) goto L_0x00a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0088, code lost:
        r2 = r7.n;
        r3 = r7.o;
        r7.o = r3 + 1;
        r2[r3] = (byte) ((r0 >> 6) | 192);
        r2 = r7.n;
        r3 = r7.o;
        r7.o = r3 + 1;
        r2[r3] = (byte) ((r0 & '?') | 128);
        r0 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00a8, code lost:
        a((int) r0, r8, r9, r1);
        r0 = r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(char[] r8, int r9, int r10) {
        /*
            r7 = this;
            r6 = 2048(0x800, float:2.87E-42)
            int r0 = r10 + r10
            int r0 = r0 + r10
            int r1 = r7.o
            int r1 = r1 + r0
            int r2 = r7.p
            if (r1 <= r2) goto L_0x0067
            int r1 = r7.p
            if (r1 >= r0) goto L_0x0064
            r0 = 0
            int r2 = r7.p
            byte[] r3 = r7.n
        L_0x0015:
            if (r0 >= r10) goto L_0x0031
        L_0x0017:
            char r1 = r8[r0]
            r4 = 128(0x80, float:1.794E-43)
            if (r1 >= r4) goto L_0x0032
            int r4 = r7.o
            if (r4 < r2) goto L_0x0024
            r7.l()
        L_0x0024:
            int r4 = r7.o
            int r5 = r4 + 1
            r7.o = r5
            byte r1 = (byte) r1
            r3[r4] = r1
            int r0 = r0 + 1
            if (r0 < r10) goto L_0x0017
        L_0x0031:
            return
        L_0x0032:
            int r1 = r7.o
            int r1 = r1 + 3
            int r4 = r7.p
            if (r1 < r4) goto L_0x003d
            r7.l()
        L_0x003d:
            int r1 = r0 + 1
            char r0 = r8[r0]
            if (r0 >= r6) goto L_0x005f
            int r4 = r7.o
            int r5 = r4 + 1
            r7.o = r5
            int r5 = r0 >> 6
            r5 = r5 | 192(0xc0, float:2.69E-43)
            byte r5 = (byte) r5
            r3[r4] = r5
            int r4 = r7.o
            int r5 = r4 + 1
            r7.o = r5
            r0 = r0 & 63
            r0 = r0 | 128(0x80, float:1.794E-43)
            byte r0 = (byte) r0
            r3[r4] = r0
            r0 = r1
            goto L_0x0015
        L_0x005f:
            r7.a((int) r0, (char[]) r8, (int) r1, (int) r10)
            r0 = r1
            goto L_0x0015
        L_0x0064:
            r7.l()
        L_0x0067:
            int r1 = r10 + 0
            r0 = r9
        L_0x006a:
            if (r0 >= r1) goto L_0x0031
        L_0x006c:
            char r2 = r8[r0]
            r3 = 127(0x7f, float:1.78E-43)
            if (r2 > r3) goto L_0x0082
            byte[] r3 = r7.n
            int r4 = r7.o
            int r5 = r4 + 1
            r7.o = r5
            byte r2 = (byte) r2
            r3[r4] = r2
            int r0 = r0 + 1
            if (r0 >= r1) goto L_0x0031
            goto L_0x006c
        L_0x0082:
            int r9 = r0 + 1
            char r0 = r8[r0]
            if (r0 >= r6) goto L_0x00a8
            byte[] r2 = r7.n
            int r3 = r7.o
            int r4 = r3 + 1
            r7.o = r4
            int r4 = r0 >> 6
            r4 = r4 | 192(0xc0, float:2.69E-43)
            byte r4 = (byte) r4
            r2[r3] = r4
            byte[] r2 = r7.n
            int r3 = r7.o
            int r4 = r3 + 1
            r7.o = r4
            r0 = r0 & 63
            r0 = r0 | 128(0x80, float:1.794E-43)
            byte r0 = (byte) r0
            r2[r3] = r0
            r0 = r9
            goto L_0x006a
        L_0x00a8:
            r7.a((int) r0, (char[]) r8, (int) r9, (int) r1)
            r0 = r9
            goto L_0x006a
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aix.a(char[], int, int):void");
    }

    public final void b() {
        d("start an array");
        this.e = this.e.g();
        if (this.a != null) {
            this.a.e(this);
            return;
        }
        if (this.o >= this.p) {
            l();
        }
        byte[] bArr = this.n;
        int i2 = this.o;
        this.o = i2 + 1;
        bArr[i2] = 91;
    }

    public final void b(String str) {
        d("write text value");
        if (str == null) {
            k();
            return;
        }
        int length = str.length();
        if (length > this.s) {
            if (this.o >= this.p) {
                l();
            }
            byte[] bArr = this.n;
            int i2 = this.o;
            this.o = i2 + 1;
            bArr[i2] = 34;
            f(str);
            if (this.o >= this.p) {
                l();
            }
            byte[] bArr2 = this.n;
            int i3 = this.o;
            this.o = i3 + 1;
            bArr2[i3] = 34;
            return;
        }
        str.getChars(0, length, this.r, 0);
        if (length > this.q) {
            if (this.o >= this.p) {
                l();
            }
            byte[] bArr3 = this.n;
            int i4 = this.o;
            this.o = i4 + 1;
            bArr3[i4] = 34;
            b(this.r, 0, length);
            if (this.o >= this.p) {
                l();
            }
            byte[] bArr4 = this.n;
            int i5 = this.o;
            this.o = i5 + 1;
            bArr4[i5] = 34;
            return;
        }
        if (this.o + length >= this.p) {
            l();
        }
        byte[] bArr5 = this.n;
        int i6 = this.o;
        this.o = i6 + 1;
        bArr5[i6] = 34;
        c(this.r, 0, length);
        if (this.o >= this.p) {
            l();
        }
        byte[] bArr6 = this.n;
        int i7 = this.o;
        this.o = i7 + 1;
        bArr6[i7] = 34;
    }

    public final void c() {
        if (!this.e.a()) {
            e("Current context not an ARRAY but " + this.e.d());
        }
        if (this.a != null) {
            this.a.b(this, this.e.e());
        } else {
            if (this.o >= this.p) {
                l();
            }
            byte[] bArr = this.n;
            int i2 = this.o;
            this.o = i2 + 1;
            bArr[i2] = 93;
        }
        this.e = this.e.i();
    }

    public final void c(String str) {
        int length = str.length();
        int i2 = 0;
        while (length > 0) {
            char[] cArr = this.r;
            int length2 = cArr.length;
            if (length < length2) {
                length2 = length;
            }
            str.getChars(i2, i2 + length2, cArr, 0);
            a(cArr, 0, length2);
            i2 += length2;
            length -= length2;
        }
    }

    public final void close() {
        super.close();
        if (this.n != null && a(aif.a.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                aiv h2 = h();
                if (!h2.a()) {
                    if (!h2.c()) {
                        break;
                    }
                    e();
                } else {
                    c();
                }
            }
        }
        l();
        if (this.j != null) {
            if (this.i.c() || a(aif.a.AUTO_CLOSE_TARGET)) {
                this.j.close();
            } else if (a(aif.a.FLUSH_PASSED_TO_STREAM)) {
                this.j.flush();
            }
        }
        i();
    }

    public final void d() {
        d("start an object");
        this.e = this.e.h();
        if (this.a != null) {
            this.a.b(this);
            return;
        }
        if (this.o >= this.p) {
            l();
        }
        byte[] bArr = this.n;
        int i2 = this.o;
        this.o = i2 + 1;
        bArr[i2] = 123;
    }

    /* access modifiers changed from: protected */
    public final void d(String str) {
        byte b;
        int j2 = this.e.j();
        if (j2 == 5) {
            e("Can not " + str + ", expecting field name");
        }
        if (this.a == null) {
            switch (j2) {
                case 1:
                    b = 44;
                    break;
                case 2:
                    b = 58;
                    break;
                case 3:
                    b = 32;
                    break;
                default:
                    return;
            }
            if (this.o >= this.p) {
                l();
            }
            this.n[this.o] = b;
            this.o++;
            return;
        }
        switch (j2) {
            case 0:
                if (this.e.a()) {
                    this.a.g(this);
                    return;
                } else if (this.e.c()) {
                    this.a.h(this);
                    return;
                } else {
                    return;
                }
            case 1:
                this.a.f(this);
                return;
            case 2:
                this.a.d(this);
                return;
            case 3:
                this.a.a(this);
                return;
            default:
                j();
                return;
        }
    }

    public final void e() {
        if (!this.e.c()) {
            e("Current context not an object but " + this.e.d());
        }
        if (this.a != null) {
            this.a.a(this, this.e.e());
        } else {
            if (this.o >= this.p) {
                l();
            }
            byte[] bArr = this.n;
            int i2 = this.o;
            this.o = i2 + 1;
            bArr[i2] = 125;
        }
        this.e = this.e.i();
    }

    public final void f() {
        d("write null value");
        k();
    }

    public final void g() {
        l();
        if (this.j != null && a(aif.a.FLUSH_PASSED_TO_STREAM)) {
            this.j.flush();
        }
    }

    /* access modifiers changed from: protected */
    public final void i() {
        byte[] bArr = this.n;
        if (bArr != null && this.t) {
            this.n = null;
            this.i.b(bArr);
        }
        char[] cArr = this.r;
        if (cArr != null) {
            this.r = null;
            this.i.b(cArr);
        }
    }
}
