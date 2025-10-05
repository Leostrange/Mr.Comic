package defpackage;

import defpackage.aif;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.http.message.TokenParser;

/* renamed from: aiz  reason: default package */
/* compiled from: WriterBasedGenerator */
public final class aiz extends air {
    protected static final char[] g = ajt.g();
    protected static final int[] h = ajt.f();
    protected final ajc i;
    protected final Writer j;
    protected int[] k = h;
    protected int l;
    protected ajb m;
    protected aio n;
    protected char[] o;
    protected int p = 0;
    protected int q = 0;
    protected int r;
    protected char[] s;

    public aiz(ajc ajc, int i2, aim aim, Writer writer) {
        super(i2, aim);
        this.i = ajc;
        this.j = writer;
        this.o = ajc.h();
        this.r = this.o.length;
        if (a(aif.a.ESCAPE_NON_ASCII)) {
            this.l = 127;
        }
    }

    private final int a(char[] cArr, int i2, int i3, char c, int i4) {
        String a;
        int i5;
        if (i4 >= 0) {
            if (i2 <= 1 || i2 >= i3) {
                char[] cArr2 = this.s;
                if (cArr2 == null) {
                    cArr2 = l();
                }
                cArr2[1] = (char) i4;
                this.j.write(cArr2, 0, 2);
                return i2;
            }
            int i6 = i2 - 2;
            cArr[i6] = TokenParser.ESCAPE;
            cArr[i6 + 1] = (char) i4;
            return i6;
        } else if (i4 == -2) {
            if (this.n == null) {
                a = this.m.b().a();
            } else {
                a = this.n.a();
                this.n = null;
            }
            int length = a.length();
            if (i2 < length || i2 >= i3) {
                this.j.write(a);
                return i2;
            }
            int i7 = i2 - length;
            a.getChars(0, length, cArr, i7);
            return i7;
        } else if (i2 <= 5 || i2 >= i3) {
            char[] cArr3 = this.s;
            if (cArr3 == null) {
                cArr3 = l();
            }
            this.p = this.q;
            if (c > 255) {
                int i8 = (c >> 8) & 255;
                char c2 = c & 255;
                cArr3[10] = g[i8 >> 4];
                cArr3[11] = g[i8 & 15];
                cArr3[12] = g[c2 >> 4];
                cArr3[13] = g[c2 & 15];
                this.j.write(cArr3, 8, 6);
                return i2;
            }
            cArr3[6] = g[c >> 4];
            cArr3[7] = g[c & 15];
            this.j.write(cArr3, 2, 6);
            return i2;
        } else {
            int i9 = i2 - 6;
            int i10 = i9 + 1;
            cArr[i9] = TokenParser.ESCAPE;
            int i11 = i10 + 1;
            cArr[i10] = 'u';
            if (c > 255) {
                int i12 = (c >> 8) & 255;
                int i13 = i11 + 1;
                cArr[i11] = g[i12 >> 4];
                i5 = i13 + 1;
                cArr[i13] = g[i12 & 15];
                c = (char) (c & 255);
            } else {
                int i14 = i11 + 1;
                cArr[i11] = '0';
                i5 = i14 + 1;
                cArr[i14] = '0';
            }
            int i15 = i5 + 1;
            cArr[i5] = g[c >> 4];
            cArr[i15] = g[c & 15];
            return i15 - 5;
        }
    }

    private final void a(char c, int i2) {
        String a;
        int i3;
        if (i2 >= 0) {
            if (this.q >= 2) {
                int i4 = this.q - 2;
                this.p = i4;
                this.o[i4] = TokenParser.ESCAPE;
                this.o[i4 + 1] = (char) i2;
                return;
            }
            char[] cArr = this.s;
            if (cArr == null) {
                cArr = l();
            }
            this.p = this.q;
            cArr[1] = (char) i2;
            this.j.write(cArr, 0, 2);
        } else if (i2 == -2) {
            if (this.n == null) {
                a = this.m.b().a();
            } else {
                a = this.n.a();
                this.n = null;
            }
            int length = a.length();
            if (this.q >= length) {
                int i5 = this.q - length;
                this.p = i5;
                a.getChars(0, length, this.o, i5);
                return;
            }
            this.p = this.q;
            this.j.write(a);
        } else if (this.q >= 6) {
            char[] cArr2 = this.o;
            int i6 = this.q - 6;
            this.p = i6;
            cArr2[i6] = TokenParser.ESCAPE;
            int i7 = i6 + 1;
            cArr2[i7] = 'u';
            if (c > 255) {
                int i8 = (c >> 8) & 255;
                int i9 = i7 + 1;
                cArr2[i9] = g[i8 >> 4];
                i3 = i9 + 1;
                cArr2[i3] = g[i8 & 15];
                c = (char) (c & 255);
            } else {
                int i10 = i7 + 1;
                cArr2[i10] = '0';
                i3 = i10 + 1;
                cArr2[i3] = '0';
            }
            int i11 = i3 + 1;
            cArr2[i11] = g[c >> 4];
            cArr2[i11 + 1] = g[c & 15];
        } else {
            char[] cArr3 = this.s;
            if (cArr3 == null) {
                cArr3 = l();
            }
            this.p = this.q;
            if (c > 255) {
                int i12 = (c >> 8) & 255;
                char c2 = c & 255;
                cArr3[10] = g[i12 >> 4];
                cArr3[11] = g[i12 & 15];
                cArr3[12] = g[c2 >> 4];
                cArr3[13] = g[c2 & 15];
                this.j.write(cArr3, 8, 6);
                return;
            }
            cArr3[6] = g[c >> 4];
            cArr3[7] = g[c & 15];
            this.j.write(cArr3, 2, 6);
        }
    }

    private final void a(Object obj) {
        if (this.q >= this.r) {
            m();
        }
        char[] cArr = this.o;
        int i2 = this.q;
        this.q = i2 + 1;
        cArr[i2] = TokenParser.DQUOTE;
        c(obj.toString());
        if (this.q >= this.r) {
            m();
        }
        char[] cArr2 = this.o;
        int i3 = this.q;
        this.q = i3 + 1;
        cArr2[i3] = TokenParser.DQUOTE;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v10, resolved type: char} */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x01d1, code lost:
        r3 = r14.q - r14.p;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x01d6, code lost:
        if (r3 <= 0) goto L_0x01e1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x01d8, code lost:
        r14.j.write(r14.o, r14.p, r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x01e1, code lost:
        r3 = r14.o;
        r4 = r14.q;
        r14.q = r4 + 1;
        r3 = r3[r4];
        a(r3, r1[r3]);
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x007a A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x00bf A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x00f7 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:153:0x00f7 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void f(java.lang.String r15) {
        /*
            r14 = this;
            int r0 = r15.length()
            int r1 = r14.r
            if (r0 <= r1) goto L_0x00f8
            r14.m()
            int r8 = r15.length()
            r0 = 0
            r6 = r0
        L_0x0011:
            int r3 = r14.r
            int r0 = r6 + r3
            if (r0 <= r8) goto L_0x0019
            int r3 = r8 - r6
        L_0x0019:
            int r0 = r6 + r3
            char[] r1 = r14.o
            r2 = 0
            r15.getChars(r6, r0, r1, r2)
            ajb r0 = r14.m
            if (r0 == 0) goto L_0x007c
            int[] r9 = r14.k
            int r0 = r14.l
            if (r0 > 0) goto L_0x0063
            r0 = 65535(0xffff, float:9.1834E-41)
            r7 = r0
        L_0x002f:
            int r0 = r9.length
            int r1 = r7 + 1
            int r10 = java.lang.Math.min(r0, r1)
            ajb r11 = r14.m
            r1 = 0
            r5 = 0
            r0 = 0
            r2 = r0
            r0 = r5
        L_0x003d:
            if (r1 >= r3) goto L_0x00f3
        L_0x003f:
            char[] r4 = r14.o
            char r4 = r4[r1]
            if (r4 >= r10) goto L_0x0067
            r5 = r9[r4]
            if (r5 == 0) goto L_0x0075
        L_0x0049:
            int r0 = r1 - r2
            if (r0 <= 0) goto L_0x0056
            java.io.Writer r12 = r14.j
            char[] r13 = r14.o
            r12.write(r13, r2, r0)
            if (r1 >= r3) goto L_0x00f3
        L_0x0056:
            int r2 = r1 + 1
            char[] r1 = r14.o
            r0 = r14
            int r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = r2
            r2 = r0
            r0 = r5
            goto L_0x003d
        L_0x0063:
            int r0 = r14.l
            r7 = r0
            goto L_0x002f
        L_0x0067:
            if (r4 <= r7) goto L_0x006b
            r5 = -1
            goto L_0x0049
        L_0x006b:
            aio r5 = r11.b()
            r14.n = r5
            if (r5 == 0) goto L_0x0076
            r5 = -2
            goto L_0x0049
        L_0x0075:
            r0 = r5
        L_0x0076:
            int r1 = r1 + 1
            if (r1 < r3) goto L_0x003f
            r5 = r0
            goto L_0x0049
        L_0x007c:
            int r0 = r14.l
            if (r0 == 0) goto L_0x00c1
            int r7 = r14.l
            int[] r9 = r14.k
            int r0 = r9.length
            int r1 = r7 + 1
            int r10 = java.lang.Math.min(r0, r1)
            r1 = 0
            r5 = 0
            r0 = 0
            r2 = r0
            r0 = r5
        L_0x0090:
            if (r1 >= r3) goto L_0x00f3
        L_0x0092:
            char[] r4 = r14.o
            char r4 = r4[r1]
            if (r4 >= r10) goto L_0x00b6
            r5 = r9[r4]
            if (r5 == 0) goto L_0x00ba
        L_0x009c:
            int r0 = r1 - r2
            if (r0 <= 0) goto L_0x00a9
            java.io.Writer r11 = r14.j
            char[] r12 = r14.o
            r11.write(r12, r2, r0)
            if (r1 >= r3) goto L_0x00f3
        L_0x00a9:
            int r2 = r1 + 1
            char[] r1 = r14.o
            r0 = r14
            int r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = r2
            r2 = r0
            r0 = r5
            goto L_0x0090
        L_0x00b6:
            if (r4 <= r7) goto L_0x00bb
            r5 = -1
            goto L_0x009c
        L_0x00ba:
            r0 = r5
        L_0x00bb:
            int r1 = r1 + 1
            if (r1 < r3) goto L_0x0092
            r5 = r0
            goto L_0x009c
        L_0x00c1:
            int[] r7 = r14.k
            int r9 = r7.length
            r2 = 0
            r0 = 0
            r1 = r0
            r0 = r2
        L_0x00c8:
            if (r0 >= r3) goto L_0x00f3
        L_0x00ca:
            char[] r2 = r14.o
            char r4 = r2[r0]
            if (r4 >= r9) goto L_0x00d4
            r2 = r7[r4]
            if (r2 != 0) goto L_0x00d8
        L_0x00d4:
            int r0 = r0 + 1
            if (r0 < r3) goto L_0x00ca
        L_0x00d8:
            int r2 = r0 - r1
            if (r2 <= 0) goto L_0x00e5
            java.io.Writer r5 = r14.j
            char[] r10 = r14.o
            r5.write(r10, r1, r2)
            if (r0 >= r3) goto L_0x00f3
        L_0x00e5:
            int r2 = r0 + 1
            char[] r1 = r14.o
            r5 = r7[r4]
            r0 = r14
            int r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = r0
            r0 = r2
            goto L_0x00c8
        L_0x00f3:
            int r0 = r6 + r3
            if (r0 < r8) goto L_0x01f1
        L_0x00f7:
            return
        L_0x00f8:
            int r1 = r14.q
            int r1 = r1 + r0
            int r2 = r14.r
            if (r1 <= r2) goto L_0x0102
            r14.m()
        L_0x0102:
            r1 = 0
            char[] r2 = r14.o
            int r3 = r14.q
            r15.getChars(r1, r0, r2, r3)
            ajb r1 = r14.m
            if (r1 == 0) goto L_0x0168
            int r1 = r14.q
            int r2 = r1 + r0
            int[] r3 = r14.k
            int r0 = r14.l
            if (r0 > 0) goto L_0x014e
            r0 = 65535(0xffff, float:9.1834E-41)
        L_0x011b:
            int r1 = r3.length
            int r4 = r0 + 1
            int r4 = java.lang.Math.min(r1, r4)
            ajb r5 = r14.m
        L_0x0124:
            int r1 = r14.q
            if (r1 >= r2) goto L_0x00f7
        L_0x0128:
            char[] r1 = r14.o
            int r6 = r14.q
            char r6 = r1[r6]
            if (r6 >= r4) goto L_0x0151
            r1 = r3[r6]
            if (r1 == 0) goto L_0x015f
        L_0x0134:
            int r7 = r14.q
            int r8 = r14.p
            int r7 = r7 - r8
            if (r7 <= 0) goto L_0x0144
            java.io.Writer r8 = r14.j
            char[] r9 = r14.o
            int r10 = r14.p
            r8.write(r9, r10, r7)
        L_0x0144:
            int r7 = r14.q
            int r7 = r7 + 1
            r14.q = r7
            r14.a(r6, r1)
            goto L_0x0124
        L_0x014e:
            int r0 = r14.l
            goto L_0x011b
        L_0x0151:
            if (r6 <= r0) goto L_0x0155
            r1 = -1
            goto L_0x0134
        L_0x0155:
            aio r1 = r5.b()
            r14.n = r1
            if (r1 == 0) goto L_0x015f
            r1 = -2
            goto L_0x0134
        L_0x015f:
            int r1 = r14.q
            int r1 = r1 + 1
            r14.q = r1
            if (r1 < r2) goto L_0x0128
            goto L_0x00f7
        L_0x0168:
            int r1 = r14.l
            if (r1 == 0) goto L_0x01b2
            int r1 = r14.l
            int r2 = r14.q
            int r2 = r2 + r0
            int[] r3 = r14.k
            int r0 = r3.length
            int r4 = r1 + 1
            int r4 = java.lang.Math.min(r0, r4)
        L_0x017a:
            int r0 = r14.q
            if (r0 >= r2) goto L_0x00f7
        L_0x017e:
            char[] r0 = r14.o
            int r5 = r14.q
            char r5 = r0[r5]
            if (r5 >= r4) goto L_0x01a4
            r0 = r3[r5]
            if (r0 == 0) goto L_0x01a8
        L_0x018a:
            int r6 = r14.q
            int r7 = r14.p
            int r6 = r6 - r7
            if (r6 <= 0) goto L_0x019a
            java.io.Writer r7 = r14.j
            char[] r8 = r14.o
            int r9 = r14.p
            r7.write(r8, r9, r6)
        L_0x019a:
            int r6 = r14.q
            int r6 = r6 + 1
            r14.q = r6
            r14.a(r5, r0)
            goto L_0x017a
        L_0x01a4:
            if (r5 <= r1) goto L_0x01a8
            r0 = -1
            goto L_0x018a
        L_0x01a8:
            int r0 = r14.q
            int r0 = r0 + 1
            r14.q = r0
            if (r0 < r2) goto L_0x017e
            goto L_0x00f7
        L_0x01b2:
            int r1 = r14.q
            int r0 = r0 + r1
            int[] r1 = r14.k
            int r2 = r1.length
        L_0x01b8:
            int r3 = r14.q
            if (r3 >= r0) goto L_0x00f7
        L_0x01bc:
            char[] r3 = r14.o
            int r4 = r14.q
            char r3 = r3[r4]
            if (r3 >= r2) goto L_0x01c8
            r3 = r1[r3]
            if (r3 != 0) goto L_0x01d1
        L_0x01c8:
            int r3 = r14.q
            int r3 = r3 + 1
            r14.q = r3
            if (r3 >= r0) goto L_0x00f7
            goto L_0x01bc
        L_0x01d1:
            int r3 = r14.q
            int r4 = r14.p
            int r3 = r3 - r4
            if (r3 <= 0) goto L_0x01e1
            java.io.Writer r4 = r14.j
            char[] r5 = r14.o
            int r6 = r14.p
            r4.write(r5, r6, r3)
        L_0x01e1:
            char[] r3 = r14.o
            int r4 = r14.q
            int r5 = r4 + 1
            r14.q = r5
            char r3 = r3[r4]
            r4 = r1[r3]
            r14.a(r3, r4)
            goto L_0x01b8
        L_0x01f1:
            r6 = r0
            goto L_0x0011
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiz.f(java.lang.String):void");
    }

    private final void k() {
        if (this.q + 4 >= this.r) {
            m();
        }
        int i2 = this.q;
        char[] cArr = this.o;
        cArr[i2] = 'n';
        int i3 = i2 + 1;
        cArr[i3] = 'u';
        int i4 = i3 + 1;
        cArr[i4] = 'l';
        int i5 = i4 + 1;
        cArr[i5] = 'l';
        this.q = i5 + 1;
    }

    private char[] l() {
        char[] cArr = new char[14];
        cArr[0] = TokenParser.ESCAPE;
        cArr[2] = TokenParser.ESCAPE;
        cArr[3] = 'u';
        cArr[4] = '0';
        cArr[5] = '0';
        cArr[8] = TokenParser.ESCAPE;
        cArr[9] = 'u';
        this.s = cArr;
        return cArr;
    }

    private void m() {
        int i2 = this.q - this.p;
        if (i2 > 0) {
            int i3 = this.p;
            this.p = 0;
            this.q = 0;
            this.j.write(this.o, i3, i2);
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
        if (this.q >= this.r) {
            m();
        }
        char[] cArr = this.o;
        int i2 = this.q;
        this.q = i2 + 1;
        cArr[i2] = c;
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
        if (this.d) {
            if (this.q + 13 >= this.r) {
                m();
            }
            char[] cArr = this.o;
            int i3 = this.q;
            this.q = i3 + 1;
            cArr[i3] = TokenParser.DQUOTE;
            this.q = ajg.a(i2, this.o, this.q);
            char[] cArr2 = this.o;
            int i4 = this.q;
            this.q = i4 + 1;
            cArr2[i4] = TokenParser.DQUOTE;
            return;
        }
        if (this.q + 11 >= this.r) {
            m();
        }
        this.q = ajg.a(i2, this.o, this.q);
    }

    public final void a(long j2) {
        d("write number");
        if (this.d) {
            if (this.q + 23 >= this.r) {
                m();
            }
            char[] cArr = this.o;
            int i2 = this.q;
            this.q = i2 + 1;
            cArr[i2] = TokenParser.DQUOTE;
            this.q = ajg.a(j2, this.o, this.q);
            char[] cArr2 = this.o;
            int i3 = this.q;
            this.q = i3 + 1;
            cArr2[i3] = TokenParser.DQUOTE;
            return;
        }
        if (this.q + 21 >= this.r) {
            m();
        }
        this.q = ajg.a(j2, this.o, this.q);
    }

    public final void a(String str) {
        boolean z = true;
        int a = this.e.a(str);
        if (a == 4) {
            e("Can not write a field name, expecting a value");
        }
        if (a != 1) {
            z = false;
        }
        if (this.a != null) {
            if (z) {
                this.a.c(this);
            } else {
                this.a.h(this);
            }
            if (a(aif.a.QUOTE_FIELD_NAMES)) {
                if (this.q >= this.r) {
                    m();
                }
                char[] cArr = this.o;
                int i2 = this.q;
                this.q = i2 + 1;
                cArr[i2] = TokenParser.DQUOTE;
                f(str);
                if (this.q >= this.r) {
                    m();
                }
                char[] cArr2 = this.o;
                int i3 = this.q;
                this.q = i3 + 1;
                cArr2[i3] = TokenParser.DQUOTE;
                return;
            }
            f(str);
            return;
        }
        if (this.q + 1 >= this.r) {
            m();
        }
        if (z) {
            char[] cArr3 = this.o;
            int i4 = this.q;
            this.q = i4 + 1;
            cArr3[i4] = ',';
        }
        if (!a(aif.a.QUOTE_FIELD_NAMES)) {
            f(str);
            return;
        }
        char[] cArr4 = this.o;
        int i5 = this.q;
        this.q = i5 + 1;
        cArr4[i5] = TokenParser.DQUOTE;
        f(str);
        if (this.q >= this.r) {
            m();
        }
        char[] cArr5 = this.o;
        int i6 = this.q;
        this.q = i6 + 1;
        cArr5[i6] = TokenParser.DQUOTE;
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
        int i2;
        d("write boolean value");
        if (this.q + 5 >= this.r) {
            m();
        }
        int i3 = this.q;
        char[] cArr = this.o;
        if (z) {
            cArr[i3] = 't';
            int i4 = i3 + 1;
            cArr[i4] = 'r';
            int i5 = i4 + 1;
            cArr[i5] = 'u';
            i2 = i5 + 1;
            cArr[i2] = 'e';
        } else {
            cArr[i3] = 'f';
            int i6 = i3 + 1;
            cArr[i6] = 'a';
            int i7 = i6 + 1;
            cArr[i7] = 'l';
            int i8 = i7 + 1;
            cArr[i8] = 's';
            i2 = i8 + 1;
            cArr[i2] = 'e';
        }
        this.q = i2 + 1;
    }

    public final void a(char[] cArr, int i2, int i3) {
        if (i3 < 32) {
            if (i3 > this.r - this.q) {
                m();
            }
            System.arraycopy(cArr, 0, this.o, this.q, i3);
            this.q += i3;
            return;
        }
        m();
        this.j.write(cArr, 0, i3);
    }

    public final void b() {
        d("start an array");
        this.e = this.e.g();
        if (this.a != null) {
            this.a.e(this);
            return;
        }
        if (this.q >= this.r) {
            m();
        }
        char[] cArr = this.o;
        int i2 = this.q;
        this.q = i2 + 1;
        cArr[i2] = '[';
    }

    public final void b(String str) {
        d("write text value");
        if (str == null) {
            k();
            return;
        }
        if (this.q >= this.r) {
            m();
        }
        char[] cArr = this.o;
        int i2 = this.q;
        this.q = i2 + 1;
        cArr[i2] = TokenParser.DQUOTE;
        f(str);
        if (this.q >= this.r) {
            m();
        }
        char[] cArr2 = this.o;
        int i3 = this.q;
        this.q = i3 + 1;
        cArr2[i3] = TokenParser.DQUOTE;
    }

    public final void c() {
        if (!this.e.a()) {
            e("Current context not an ARRAY but " + this.e.d());
        }
        if (this.a != null) {
            this.a.b(this, this.e.e());
        } else {
            if (this.q >= this.r) {
                m();
            }
            char[] cArr = this.o;
            int i2 = this.q;
            this.q = i2 + 1;
            cArr[i2] = ']';
        }
        this.e = this.e.i();
    }

    public final void c(String str) {
        int length = str.length();
        int i2 = this.r - this.q;
        if (i2 == 0) {
            m();
            i2 = this.r - this.q;
        }
        if (i2 >= length) {
            str.getChars(0, length, this.o, this.q);
            this.q += length;
            return;
        }
        int i3 = this.r - this.q;
        str.getChars(0, i3, this.o, this.q);
        this.q += i3;
        m();
        int length2 = str.length() - i3;
        while (length2 > this.r) {
            int i4 = this.r;
            str.getChars(i3, i3 + i4, this.o, 0);
            this.p = 0;
            this.q = i4;
            m();
            i3 += i4;
            length2 -= i4;
        }
        str.getChars(i3, i3 + length2, this.o, 0);
        this.p = 0;
        this.q = length2;
    }

    public final void close() {
        super.close();
        if (this.o != null && a(aif.a.AUTO_CLOSE_JSON_CONTENT)) {
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
        m();
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
        if (this.q >= this.r) {
            m();
        }
        char[] cArr = this.o;
        int i2 = this.q;
        this.q = i2 + 1;
        cArr[i2] = '{';
    }

    /* access modifiers changed from: protected */
    public final void d(String str) {
        char c;
        int j2 = this.e.j();
        if (j2 == 5) {
            e("Can not " + str + ", expecting field name");
        }
        if (this.a == null) {
            switch (j2) {
                case 1:
                    c = ',';
                    break;
                case 2:
                    c = ':';
                    break;
                case 3:
                    c = TokenParser.SP;
                    break;
                default:
                    return;
            }
            if (this.q >= this.r) {
                m();
            }
            this.o[this.q] = c;
            this.q++;
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
            if (this.q >= this.r) {
                m();
            }
            char[] cArr = this.o;
            int i2 = this.q;
            this.q = i2 + 1;
            cArr[i2] = '}';
        }
        this.e = this.e.i();
    }

    public final void f() {
        d("write null value");
        k();
    }

    public final void g() {
        m();
        if (this.j != null && a(aif.a.FLUSH_PASSED_TO_STREAM)) {
            this.j.flush();
        }
    }

    /* access modifiers changed from: protected */
    public final void i() {
        char[] cArr = this.o;
        if (cArr != null) {
            this.o = null;
            this.i.b(cArr);
        }
    }
}
