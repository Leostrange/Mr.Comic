package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* renamed from: wq  reason: default package */
/* compiled from: UTF8StreamWriter */
public final class wq extends Writer implements wv {
    private OutputStream a;
    private final byte[] b = new byte[2048];
    private int c;
    private char d;

    private void a(char c2) {
        if (c2 < 55296 || c2 > 57343) {
            write(c2);
        } else if (c2 < 56320) {
            this.d = c2;
        } else {
            write(((this.d - 55296) << 10) + (c2 - 56320) + 65536);
        }
    }

    private void b() {
        if (this.a == null) {
            throw new IOException("Stream closed");
        }
        this.a.write(this.b, 0, this.c);
        this.c = 0;
    }

    public final wq a(OutputStream outputStream) {
        if (this.a != null) {
            throw new IllegalStateException("Writer not closed or reset");
        }
        this.a = outputStream;
        return this;
    }

    public final void a() {
        this.d = 0;
        this.c = 0;
        this.a = null;
    }

    public final void close() {
        if (this.a != null) {
            b();
            this.a.close();
            a();
        }
    }

    public final void flush() {
        b();
        this.a.flush();
    }

    public final void write(int i) {
        if ((i & -128) == 0) {
            this.b[this.c] = (byte) i;
            int i2 = this.c + 1;
            this.c = i2;
            if (i2 >= this.b.length) {
                b();
            }
        } else if ((i & -2048) == 0) {
            this.b[this.c] = (byte) ((i >> 6) | 192);
            int i3 = this.c + 1;
            this.c = i3;
            if (i3 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i4 = this.c + 1;
            this.c = i4;
            if (i4 >= this.b.length) {
                b();
            }
        } else if ((-65536 & i) == 0) {
            this.b[this.c] = (byte) ((i >> 12) | 224);
            int i5 = this.c + 1;
            this.c = i5;
            if (i5 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i6 = this.c + 1;
            this.c = i6;
            if (i6 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i7 = this.c + 1;
            this.c = i7;
            if (i7 >= this.b.length) {
                b();
            }
        } else if ((-14680064 & i) == 0) {
            this.b[this.c] = (byte) ((i >> 18) | 240);
            int i8 = this.c + 1;
            this.c = i8;
            if (i8 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i9 = this.c + 1;
            this.c = i9;
            if (i9 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i10 = this.c + 1;
            this.c = i10;
            if (i10 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i11 = this.c + 1;
            this.c = i11;
            if (i11 >= this.b.length) {
                b();
            }
        } else if ((-201326592 & i) == 0) {
            this.b[this.c] = (byte) ((i >> 24) | 248);
            int i12 = this.c + 1;
            this.c = i12;
            if (i12 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 18) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i13 = this.c + 1;
            this.c = i13;
            if (i13 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i14 = this.c + 1;
            this.c = i14;
            if (i14 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i15 = this.c + 1;
            this.c = i15;
            if (i15 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i16 = this.c + 1;
            this.c = i16;
            if (i16 >= this.b.length) {
                b();
            }
        } else if ((Integer.MIN_VALUE & i) == 0) {
            this.b[this.c] = (byte) ((i >> 30) | 252);
            int i17 = this.c + 1;
            this.c = i17;
            if (i17 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 24) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i18 = this.c + 1;
            this.c = i18;
            if (i18 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 18) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i19 = this.c + 1;
            this.c = i19;
            if (i19 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i20 = this.c + 1;
            this.c = i20;
            if (i20 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i21 = this.c + 1;
            this.c = i21;
            if (i21 >= this.b.length) {
                b();
            }
            this.b[this.c] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i22 = this.c + 1;
            this.c = i22;
            if (i22 >= this.b.length) {
                b();
            }
        } else {
            throw new CharConversionException("Illegal character U+" + Integer.toHexString(i));
        }
    }

    public final void write(String str, int i, int i2) {
        int i3 = i + i2;
        while (i < i3) {
            int i4 = i + 1;
            char charAt = str.charAt(i);
            if (charAt < 128) {
                this.b[this.c] = (byte) charAt;
                int i5 = this.c + 1;
                this.c = i5;
                if (i5 >= this.b.length) {
                    b();
                    i = i4;
                }
            } else {
                a(charAt);
            }
            i = i4;
        }
    }

    public final void write(char[] cArr, int i, int i2) {
        int i3 = i + i2;
        while (i < i3) {
            int i4 = i + 1;
            char c2 = cArr[i];
            if (c2 < 128) {
                this.b[this.c] = (byte) c2;
                int i5 = this.c + 1;
                this.c = i5;
                if (i5 >= this.b.length) {
                    b();
                    i = i4;
                }
            } else {
                a(c2);
            }
            i = i4;
        }
    }
}
