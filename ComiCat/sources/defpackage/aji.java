package defpackage;

import java.io.CharConversionException;
import java.io.InputStream;

/* renamed from: aji  reason: default package */
/* compiled from: UTF32Reader */
public final class aji extends aja {
    protected final boolean g;
    protected char h = 0;
    protected int i = 0;
    protected int j = 0;
    protected final boolean k;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public aji(ajc ajc, InputStream inputStream, byte[] bArr, int i2, int i3, boolean z) {
        super(ajc, inputStream, bArr, i2, i3);
        boolean z2 = false;
        this.g = z;
        this.k = inputStream != null ? true : z2;
    }

    private boolean a(int i2) {
        this.j += this.e - i2;
        if (i2 > 0) {
            if (this.d > 0) {
                for (int i3 = 0; i3 < i2; i3++) {
                    this.c[i3] = this.c[this.d + i3];
                }
                this.d = 0;
            }
            this.e = i2;
        } else {
            this.d = 0;
            int read = this.b == null ? -1 : this.b.read(this.c);
            if (read <= 0) {
                this.e = 0;
                if (read >= 0) {
                    b();
                } else if (!this.k) {
                    return false;
                } else {
                    a();
                    return false;
                }
            }
            this.e = read;
        }
        while (this.e < 4) {
            int read2 = this.b == null ? -1 : this.b.read(this.c, this.e, this.c.length - this.e);
            if (read2 <= 0) {
                if (read2 < 0) {
                    if (this.k) {
                        a();
                    }
                    int i4 = this.e;
                    throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i4 + ", needed 4, at char #" + this.i + ", byte #" + (this.j + i4) + ")");
                }
                b();
            }
            this.e = read2 + this.e;
        }
        return true;
    }

    public final /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    public final /* bridge */ /* synthetic */ int read() {
        return super.read();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x014e, code lost:
        r1 = r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int read(char[] r8, int r9, int r10) {
        /*
            r7 = this;
            r6 = 1114111(0x10ffff, float:1.561202E-39)
            r0 = -1
            byte[] r1 = r7.c
            if (r1 != 0) goto L_0x000a
            r10 = r0
        L_0x0009:
            return r10
        L_0x000a:
            if (r10 <= 0) goto L_0x0009
            if (r9 < 0) goto L_0x0013
            int r1 = r9 + r10
            int r2 = r8.length
            if (r1 <= r2) goto L_0x0043
        L_0x0013:
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "read(buf,"
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r9)
            java.lang.String r2 = ","
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r10)
            java.lang.String r2 = "), cbuf["
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r8.length
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "]"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0043:
            int r3 = r10 + r9
            char r1 = r7.h
            if (r1 == 0) goto L_0x00e8
            int r2 = r9 + 1
            char r0 = r7.h
            r8[r9] = r0
            r0 = 0
            r7.h = r0
        L_0x0052:
            if (r2 >= r3) goto L_0x014e
            int r0 = r7.d
            boolean r1 = r7.g
            if (r1 == 0) goto L_0x00f9
            byte[] r1 = r7.c
            byte r1 = r1[r0]
            int r1 = r1 << 24
            byte[] r4 = r7.c
            int r5 = r0 + 1
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 16
            r1 = r1 | r4
            byte[] r4 = r7.c
            int r5 = r0 + 2
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 8
            r1 = r1 | r4
            byte[] r4 = r7.c
            int r0 = r0 + 3
            byte r0 = r4[r0]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r0 = r0 | r1
        L_0x007f:
            int r1 = r7.d
            int r1 = r1 + 4
            r7.d = r1
            r1 = 65535(0xffff, float:9.1834E-41)
            if (r0 <= r1) goto L_0x0142
            if (r0 <= r6) goto L_0x0120
            int r1 = r2 - r9
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "(above "
            r2.<init>(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r6)
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = ") "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            int r3 = r7.j
            int r4 = r7.d
            int r3 = r3 + r4
            int r3 = r3 + -1
            int r4 = r7.i
            int r1 = r1 + r4
            java.io.CharConversionException r4 = new java.io.CharConversionException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Invalid UTF-32 character 0x"
            r5.<init>(r6)
            java.lang.String r0 = java.lang.Integer.toHexString(r0)
            java.lang.StringBuilder r0 = r5.append(r0)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r2 = " at char #"
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = ", byte #"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r1 = ")"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.<init>(r0)
            throw r4
        L_0x00e8:
            int r1 = r7.e
            int r2 = r7.d
            int r1 = r1 - r2
            r2 = 4
            if (r1 >= r2) goto L_0x0150
            boolean r1 = r7.a(r1)
            if (r1 != 0) goto L_0x0150
            r10 = r0
            goto L_0x0009
        L_0x00f9:
            byte[] r1 = r7.c
            byte r1 = r1[r0]
            r1 = r1 & 255(0xff, float:3.57E-43)
            byte[] r4 = r7.c
            int r5 = r0 + 1
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 8
            r1 = r1 | r4
            byte[] r4 = r7.c
            int r5 = r0 + 2
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 16
            r1 = r1 | r4
            byte[] r4 = r7.c
            int r0 = r0 + 3
            byte r0 = r4[r0]
            int r0 = r0 << 24
            r0 = r0 | r1
            goto L_0x007f
        L_0x0120:
            r1 = 65536(0x10000, float:9.18355E-41)
            int r0 = r0 - r1
            int r1 = r2 + 1
            r4 = 55296(0xd800, float:7.7486E-41)
            int r5 = r0 >> 10
            int r4 = r4 + r5
            char r4 = (char) r4
            r8[r2] = r4
            r2 = 56320(0xdc00, float:7.8921E-41)
            r0 = r0 & 1023(0x3ff, float:1.434E-42)
            r0 = r0 | r2
            if (r1 < r3) goto L_0x0143
            char r0 = (char) r0
            r7.h = r0
        L_0x0139:
            int r10 = r1 - r9
            int r0 = r7.i
            int r0 = r0 + r10
            r7.i = r0
            goto L_0x0009
        L_0x0142:
            r1 = r2
        L_0x0143:
            int r2 = r1 + 1
            char r0 = (char) r0
            r8[r1] = r0
            int r0 = r7.d
            int r1 = r7.e
            if (r0 < r1) goto L_0x0052
        L_0x014e:
            r1 = r2
            goto L_0x0139
        L_0x0150:
            r2 = r9
            goto L_0x0052
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aji.read(char[], int, int):int");
    }
}
