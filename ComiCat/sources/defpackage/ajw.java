package defpackage;

import defpackage.ajr;
import java.util.ArrayList;

/* renamed from: ajw  reason: default package */
/* compiled from: TextBuffer */
public final class ajw {
    static final char[] a = new char[0];
    public final ajr b;
    public char[] c;
    public int d;
    public int e;
    public boolean f = false;
    public int g;
    public char[] h;
    public int i;
    public String j;
    public char[] k;
    private ArrayList<char[]> l;

    public ajw(ajr ajr) {
        this.b = ajr;
    }

    public final void a() {
        this.d = -1;
        this.i = 0;
        this.e = 0;
        this.c = null;
        this.j = null;
        this.k = null;
        if (this.f) {
            b();
        }
    }

    public final void a(char[] cArr, int i2, int i3) {
        this.j = null;
        this.k = null;
        this.c = cArr;
        this.d = i2;
        this.e = i3;
        if (this.f) {
            b();
        }
    }

    public final char[] a(int i2) {
        return this.b != null ? this.b.a(ajr.b.TEXT_BUFFER, i2) : new char[Math.max(i2, 1000)];
    }

    public final void b() {
        this.f = false;
        this.l.clear();
        this.g = 0;
        this.i = 0;
    }

    public final void b(int i2) {
        int i3 = this.e;
        this.e = 0;
        char[] cArr = this.c;
        this.c = null;
        int i4 = this.d;
        this.d = -1;
        int i5 = i3 + i2;
        if (this.h == null || i5 > this.h.length) {
            this.h = a(i5);
        }
        if (i3 > 0) {
            System.arraycopy(cArr, i4, this.h, 0, i3);
        }
        this.g = 0;
        this.i = i3;
    }

    public final int c() {
        return this.d >= 0 ? this.e : this.k != null ? this.k.length : this.j != null ? this.j.length() : this.g + this.i;
    }

    public final void c(int i2) {
        if (this.l == null) {
            this.l = new ArrayList<>();
        }
        char[] cArr = this.h;
        this.f = true;
        this.l.add(cArr);
        this.g += cArr.length;
        int length = cArr.length;
        int i3 = length >> 1;
        if (i3 >= i2) {
            i2 = i3;
        }
        this.i = 0;
        this.h = new char[Math.min(262144, length + i2)];
    }

    public final int d() {
        if (this.d >= 0) {
            return this.d;
        }
        return 0;
    }

    public final char[] e() {
        if (this.d >= 0) {
            return this.c;
        }
        if (this.k != null) {
            return this.k;
        }
        if (this.j == null) {
            return !this.f ? this.h : g();
        }
        char[] charArray = this.j.toCharArray();
        this.k = charArray;
        return charArray;
    }

    public final String f() {
        if (this.j == null) {
            if (this.k != null) {
                this.j = new String(this.k);
            } else if (this.d < 0) {
                int i2 = this.g;
                int i3 = this.i;
                if (i2 == 0) {
                    this.j = i3 == 0 ? "" : new String(this.h, 0, i3);
                } else {
                    StringBuilder sb = new StringBuilder(i2 + i3);
                    if (this.l != null) {
                        int size = this.l.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            char[] cArr = this.l.get(i4);
                            sb.append(cArr, 0, cArr.length);
                        }
                    }
                    sb.append(this.h, 0, this.i);
                    this.j = sb.toString();
                }
            } else if (this.e <= 0) {
                this.j = "";
                return "";
            } else {
                this.j = new String(this.c, this.d, this.e);
            }
        }
        return this.j;
    }

    public final char[] g() {
        int i2;
        char[] cArr = this.k;
        if (cArr == null) {
            if (this.j != null) {
                cArr = this.j.toCharArray();
            } else if (this.d < 0) {
                int c2 = c();
                if (c2 <= 0) {
                    cArr = a;
                } else {
                    char[] cArr2 = new char[c2];
                    if (this.l != null) {
                        int size = this.l.size();
                        int i3 = 0;
                        for (int i4 = 0; i4 < size; i4++) {
                            char[] cArr3 = this.l.get(i4);
                            int length = cArr3.length;
                            System.arraycopy(cArr3, 0, cArr2, i3, length);
                            i3 += length;
                        }
                        i2 = i3;
                    } else {
                        i2 = 0;
                    }
                    System.arraycopy(this.h, 0, cArr2, i2, this.i);
                    cArr = cArr2;
                }
            } else if (this.e <= 0) {
                cArr = a;
            } else {
                cArr = new char[this.e];
                System.arraycopy(this.c, this.d, cArr, 0, this.e);
            }
            this.k = cArr;
        }
        return cArr;
    }

    public final char[] h() {
        if (this.d >= 0) {
            b(1);
        } else {
            char[] cArr = this.h;
            if (cArr == null) {
                this.h = a(0);
            } else if (this.i >= cArr.length) {
                c(1);
            }
        }
        return this.h;
    }

    public final char[] i() {
        this.d = -1;
        this.i = 0;
        this.e = 0;
        this.c = null;
        this.j = null;
        this.k = null;
        if (this.f) {
            b();
        }
        char[] cArr = this.h;
        if (cArr != null) {
            return cArr;
        }
        char[] a2 = a(0);
        this.h = a2;
        return a2;
    }

    public final char[] j() {
        if (this.l == null) {
            this.l = new ArrayList<>();
        }
        this.f = true;
        this.l.add(this.h);
        int length = this.h.length;
        this.g += length;
        char[] cArr = new char[Math.min(length + (length >> 1), 262144)];
        this.i = 0;
        this.h = cArr;
        return cArr;
    }

    public final char[] k() {
        char[] cArr = this.h;
        int length = cArr.length;
        this.h = new char[(length == 262144 ? 262145 : Math.min(262144, (length >> 1) + length))];
        System.arraycopy(cArr, 0, this.h, 0, length);
        return this.h;
    }

    public final String toString() {
        return f();
    }
}
