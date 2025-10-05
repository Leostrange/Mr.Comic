package defpackage;

import com.box.androidsdk.content.BoxConstants;
import java.io.OutputStream;
import java.io.Serializable;

/* renamed from: wx  reason: default package */
/* compiled from: TextBuilder */
public final class wx implements Serializable, Appendable, CharSequence, wt, wv {
    private static final wp d = new wp() {
        public final Object a() {
            return new wx();
        }
    };
    private static final char[] f = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final long[] g = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};
    private static final wq h = new wq().a((OutputStream) System.out);
    public char[][] a = new char[1][];
    public int b;
    public int c = 32;
    /* access modifiers changed from: private */
    public char[] e = new char[32];

    public wx() {
        this.a[0] = this.e;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public wx append(char c2) {
        if (this.b >= this.c) {
            d();
        }
        this.a[this.b >> 10][this.b & 1023] = c2;
        this.b++;
        return this;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public wx append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            return a("null");
        }
        if (i < 0 || i2 < 0 || i > i2 || i2 > charSequence.length()) {
            throw new IndexOutOfBoundsException();
        }
        while (i < i2) {
            append(charSequence.charAt(i));
            i++;
        }
        return this;
    }

    private wx a(String str, int i) {
        if (str == null) {
            return a("null");
        }
        if (i < 0 || i < 0 || i > str.length()) {
            throw new IndexOutOfBoundsException("start: 0, end: " + i + ", str.length(): " + str.length());
        }
        int i2 = this.b + i + 0;
        while (this.c < i2) {
            d();
        }
        int i3 = 0;
        int i4 = this.b;
        while (i3 < i) {
            char[] cArr = this.a[i4 >> 10];
            int i5 = i4 & 1023;
            int a2 = ws.a(1024 - i5, i - i3);
            int i6 = i3 + a2;
            str.getChars(i3, i6, cArr, i5);
            i4 += a2;
            i3 = i6;
        }
        this.b = i2;
        return this;
    }

    private final void a(long j, int i) {
        append('.');
        if (j == 0) {
            append('0');
            return;
        }
        for (int a2 = ws.a(j); a2 < i; a2++) {
            append('0');
        }
        while (j % 10 == 0) {
            j /= 10;
        }
        a(j);
    }

    public static void a(wx wxVar) {
        d.a(wxVar);
    }

    public static wx c() {
        wx wxVar = (wx) d.b();
        wxVar.b = 0;
        return wxVar;
    }

    public final wx a(double d2) {
        return a(d2, -1, ws.b(d2) >= 1.0E7d || ws.b(d2) < 0.001d);
    }

    public final wx a(double d2, int i, boolean z) {
        long a2;
        if (i > 19) {
            throw new IllegalArgumentException("digits: " + i);
        } else if (d2 != d2) {
            return a("NaN");
        } else {
            if (d2 == Double.POSITIVE_INFINITY) {
                return a("Infinity");
            }
            if (d2 == Double.NEGATIVE_INFINITY) {
                return a("-Infinity");
            }
            if (d2 != 0.0d) {
                if (d2 < 0.0d) {
                    d2 = -d2;
                    append('-');
                }
                int a3 = ws.a(d2);
                if (i < 0) {
                    long a4 = ws.a(d2, 16 - a3);
                    a2 = a4 / 10;
                    if (ws.a(a2, (a3 - 16) + 1) == d2) {
                        i = 16;
                    } else {
                        i = 17;
                        a2 = a4;
                    }
                } else {
                    a2 = ws.a(d2, (i - 1) - a3);
                }
                if (z || a3 >= i) {
                    long j = g[i - 1];
                    int i2 = (int) (a2 / j);
                    append((char) (i2 + 48));
                    a(a2 - (j * ((long) i2)), i - 1);
                    append('E');
                    a(a3);
                    return this;
                }
                int i3 = (i - a3) - 1;
                if (i3 < g.length) {
                    long j2 = g[i3];
                    long j3 = a2 / j2;
                    a(j3);
                    a2 -= j2 * j3;
                } else {
                    append('0');
                }
                a(a2, i3);
                return this;
            } else if (i < 0) {
                return a("0.0");
            } else {
                append('0');
                return this;
            }
        }
    }

    public final wx a(float f2) {
        return a((double) f2, 10, ((double) ws.a(f2)) >= 1.0E7d || ((double) ws.a(f2)) < 0.001d);
    }

    public final wx a(int i) {
        if (i <= 0) {
            if (i == 0) {
                return a(BoxConstants.ROOT_FOLDER_ID);
            }
            if (i == Integer.MIN_VALUE) {
                return a("-2147483648");
            }
            append('-');
            i = -i;
        }
        int a2 = ws.a(i);
        if (this.c < this.b + a2) {
            d();
        }
        this.b = a2 + this.b;
        int i2 = this.b - 1;
        while (true) {
            int i3 = i / 10;
            this.a[i2 >> 10][i2 & 1023] = (char) ((i + 48) - (i3 * 10));
            if (i3 == 0) {
                return this;
            }
            i2--;
            i = i3;
        }
    }

    public final wx a(long j) {
        if (j <= 0) {
            if (j == 0) {
                return a(BoxConstants.ROOT_FOLDER_ID);
            }
            if (j == Long.MIN_VALUE) {
                return a("-9223372036854775808");
            }
            append('-');
            j = -j;
        }
        if (j <= 2147483647L) {
            return a((int) j);
        }
        a(j / 1000000000);
        int i = (int) (j % 1000000000);
        a("000000000", 9 - ws.a(i));
        return a(i);
    }

    public final wx a(String str) {
        while (str == null) {
            str = "null";
        }
        return a(str, str.length());
    }

    public final void a() {
        this.b = 0;
    }

    public final void a(int i, int i2, char[] cArr) {
        if (i < 0 || i > i2 || i2 > this.b) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = 0;
        while (i < i2) {
            char[] cArr2 = this.a[i >> 10];
            int i4 = i & 1023;
            int a2 = ws.a(1024 - i4, i2 - i);
            System.arraycopy(cArr2, i4, cArr, i3, a2);
            i += a2;
            i3 += a2;
        }
    }

    public final /* synthetic */ Appendable append(CharSequence charSequence) {
        return charSequence == null ? a("null") : append(charSequence, 0, charSequence.length());
    }

    public final ww b() {
        return ww.a(this, 0, this.b);
    }

    public final char charAt(int i) {
        if (i < this.b) {
            return i < 1024 ? this.e[i] : this.a[i >> 10][i & 1023];
        }
        throw new IndexOutOfBoundsException();
    }

    public final void d() {
        wh.a();
        wh.a(new Runnable() {
            public final void run() {
                if (wx.this.c < 1024) {
                    int unused = wx.this.c = wx.this.c << 1;
                    char[] cArr = new char[wx.this.c];
                    System.arraycopy(wx.this.e, 0, cArr, 0, wx.this.b);
                    char[] unused2 = wx.this.e = cArr;
                    wx.this.a[0] = cArr;
                    return;
                }
                int b = wx.this.c >> 10;
                if (b >= wx.this.a.length) {
                    char[][] cArr2 = new char[(wx.this.a.length * 2)][];
                    System.arraycopy(wx.this.a, 0, cArr2, 0, wx.this.a.length);
                    char[][] unused3 = wx.this.a = cArr2;
                }
                wx.this.a[b] = new char[1024];
                int unused4 = wx.this.c = wx.this.c + 1024;
            }
        });
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wx)) {
            return false;
        }
        wx wxVar = (wx) obj;
        if (this.b != wxVar.b) {
            return false;
        }
        int i = 0;
        while (i < this.b) {
            int i2 = i + 1;
            if (charAt(i) != wxVar.charAt(i)) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    public final int hashCode() {
        int i = 0;
        for (int i2 = 0; i2 < this.b; i2++) {
            i = charAt(i2) + (i * 31);
        }
        return i;
    }

    public final int length() {
        return this.b;
    }

    public final CharSequence subSequence(int i, int i2) {
        if (i >= 0 && i2 >= 0 && i <= i2 && i2 <= this.b) {
            return ww.a(this, i, i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public final String toString() {
        char[] cArr = new char[this.b];
        a(0, this.b, cArr);
        return new String(cArr, 0, this.b);
    }
}
