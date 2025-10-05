package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* renamed from: ajj  reason: default package */
/* compiled from: UTF8Writer */
public final class ajj extends Writer {
    protected final ajc a;
    OutputStream b;
    byte[] c;
    final int d;
    int e;
    int f = 0;

    public ajj(ajc ajc, OutputStream outputStream) {
        this.a = ajc;
        this.b = outputStream;
        this.c = ajc.f();
        this.d = this.c.length - 4;
        this.e = 0;
    }

    private int a(int i) {
        int i2 = this.f;
        this.f = 0;
        if (i >= 56320 && i <= 57343) {
            return ((i2 - 55296) << 10) + 65536 + (i - 56320);
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
    }

    private static void b(int i) {
        if (i > 1114111) {
            throw new IOException("Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 4627");
        } else if (i < 55296) {
            throw new IOException("Illegal character point (0x" + Integer.toHexString(i) + ") to output");
        } else if (i <= 56319) {
            throw new IOException("Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + ")");
        } else {
            throw new IOException("Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + ")");
        }
    }

    public final Writer append(char c2) {
        write((int) c2);
        return this;
    }

    public final void close() {
        if (this.b != null) {
            if (this.e > 0) {
                this.b.write(this.c, 0, this.e);
                this.e = 0;
            }
            OutputStream outputStream = this.b;
            this.b = null;
            byte[] bArr = this.c;
            if (bArr != null) {
                this.c = null;
                this.a.b(bArr);
            }
            outputStream.close();
            int i = this.f;
            this.f = 0;
            if (i > 0) {
                b(i);
            }
        }
    }

    public final void flush() {
        if (this.b != null) {
            if (this.e > 0) {
                this.b.write(this.c, 0, this.e);
                this.e = 0;
            }
            this.b.flush();
        }
    }

    public final void write(int i) {
        int i2;
        if (this.f > 0) {
            i = a(i);
        } else if (i >= 55296 && i <= 57343) {
            if (i > 56319) {
                b(i);
            }
            this.f = i;
            return;
        }
        if (this.e >= this.d) {
            this.b.write(this.c, 0, this.e);
            this.e = 0;
        }
        if (i < 128) {
            byte[] bArr = this.c;
            int i3 = this.e;
            this.e = i3 + 1;
            bArr[i3] = (byte) i;
            return;
        }
        int i4 = this.e;
        if (i < 2048) {
            int i5 = i4 + 1;
            this.c[i4] = (byte) ((i >> 6) | 192);
            i2 = i5 + 1;
            this.c[i5] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        } else if (i <= 65535) {
            int i6 = i4 + 1;
            this.c[i4] = (byte) ((i >> 12) | 224);
            int i7 = i6 + 1;
            this.c[i6] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            i2 = i7 + 1;
            this.c[i7] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        } else {
            if (i > 1114111) {
                b(i);
            }
            int i8 = i4 + 1;
            this.c[i4] = (byte) ((i >> 18) | 240);
            int i9 = i8 + 1;
            this.c[i8] = (byte) (((i >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i10 = i9 + 1;
            this.c[i9] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            i2 = i10 + 1;
            this.c[i10] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        }
        this.e = i2;
    }

    public final void write(String str) {
        write(str, 0, str.length());
    }

    public final void write(String str, int i, int i2) {
        if (i2 >= 2) {
            if (this.f > 0) {
                i2--;
                write(a(str.charAt(i)));
                i++;
            }
            int i3 = this.e;
            byte[] bArr = this.c;
            int i4 = this.d;
            int i5 = i2 + r13;
            while (r13 < i5) {
                if (i3 >= i4) {
                    this.b.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i6 = r13 + 1;
                char charAt = str.charAt(r13);
                if (charAt < 128) {
                    int i7 = i3 + 1;
                    bArr[i3] = (byte) charAt;
                    int i8 = i5 - i6;
                    int i9 = i4 - i7;
                    if (i8 <= i9) {
                        i9 = i8;
                    }
                    int i10 = i9 + i6;
                    int i11 = i7;
                    int i12 = i6;
                    while (i12 < i10) {
                        i6 = i12 + 1;
                        char charAt2 = str.charAt(i12);
                        if (charAt2 < 128) {
                            bArr[i11] = (byte) charAt2;
                            i11++;
                            i12 = i6;
                        } else {
                            char c2 = charAt2;
                            i3 = i11;
                            charAt = c2;
                        }
                    }
                    r13 = i12;
                    i3 = i11;
                }
                if (charAt >= 2048) {
                    if (charAt >= 55296 && charAt <= 57343) {
                        if (charAt > 56319) {
                            this.e = i3;
                            b(charAt);
                        }
                        this.f = charAt;
                        if (i6 >= i5) {
                            break;
                        }
                        r13 = i6 + 1;
                        int a2 = a(str.charAt(i6));
                        if (a2 > 1114111) {
                            this.e = i3;
                            b(a2);
                        }
                        int i13 = i3 + 1;
                        bArr[i3] = (byte) ((a2 >> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((a2 >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((a2 >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i15 + 1;
                        bArr[i15] = (byte) ((a2 & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                    } else {
                        int i16 = i3 + 1;
                        bArr[i3] = (byte) ((charAt >> 12) | 224);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((charAt >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i17 + 1;
                        bArr[i17] = (byte) ((charAt & '?') | 128);
                        r13 = i6;
                    }
                } else {
                    int i18 = i3 + 1;
                    bArr[i3] = (byte) ((charAt >> 6) | 192);
                    i3 = i18 + 1;
                    bArr[i18] = (byte) ((charAt & '?') | 128);
                    r13 = i6;
                }
            }
            this.e = i3;
        } else if (i2 == 1) {
            write((int) str.charAt(i));
        }
    }

    public final void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    public final void write(char[] cArr, int i, int i2) {
        if (i2 >= 2) {
            if (this.f > 0) {
                i2--;
                write(a(cArr[i]));
                i++;
            }
            int i3 = this.e;
            byte[] bArr = this.c;
            int i4 = this.d;
            int i5 = i2 + r13;
            while (r13 < i5) {
                if (i3 >= i4) {
                    this.b.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i6 = r13 + 1;
                char c2 = cArr[r13];
                if (c2 < 128) {
                    int i7 = i3 + 1;
                    bArr[i3] = (byte) c2;
                    int i8 = i5 - i6;
                    int i9 = i4 - i7;
                    if (i8 <= i9) {
                        i9 = i8;
                    }
                    int i10 = i9 + i6;
                    int i11 = i7;
                    int i12 = i6;
                    while (i12 < i10) {
                        i6 = i12 + 1;
                        char c3 = cArr[i12];
                        if (c3 < 128) {
                            bArr[i11] = (byte) c3;
                            i11++;
                            i12 = i6;
                        } else {
                            char c4 = c3;
                            i3 = i11;
                            c2 = c4;
                        }
                    }
                    r13 = i12;
                    i3 = i11;
                }
                if (c2 >= 2048) {
                    if (c2 >= 55296 && c2 <= 57343) {
                        if (c2 > 56319) {
                            this.e = i3;
                            b(c2);
                        }
                        this.f = c2;
                        if (i6 >= i5) {
                            break;
                        }
                        r13 = i6 + 1;
                        int a2 = a(cArr[i6]);
                        if (a2 > 1114111) {
                            this.e = i3;
                            b(a2);
                        }
                        int i13 = i3 + 1;
                        bArr[i3] = (byte) ((a2 >> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((a2 >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((a2 >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i15 + 1;
                        bArr[i15] = (byte) ((a2 & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                    } else {
                        int i16 = i3 + 1;
                        bArr[i3] = (byte) ((c2 >> 12) | 224);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((c2 >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i17 + 1;
                        bArr[i17] = (byte) ((c2 & '?') | 128);
                        r13 = i6;
                    }
                } else {
                    int i18 = i3 + 1;
                    bArr[i3] = (byte) ((c2 >> 6) | 192);
                    i3 = i18 + 1;
                    bArr[i18] = (byte) ((c2 & '?') | 128);
                    r13 = i6;
                }
            }
            this.e = i3;
        } else if (i2 == 1) {
            write((int) cArr[i]);
        }
    }
}
