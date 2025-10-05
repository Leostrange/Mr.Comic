package defpackage;

import java.io.UnsupportedEncodingException;

/* renamed from: xz  reason: default package */
/* compiled from: NdrBuffer */
public final class xz {
    public byte[] a;
    public int b;
    public int c;
    public int d = 0;
    public xz e = this;

    public xz(byte[] bArr, int i) {
        this.a = bArr;
        this.c = i;
        this.b = i;
    }

    public final xz a(int i) {
        xz xzVar = new xz(this.a, this.b);
        xzVar.c = i;
        xzVar.e = this.e;
        return xzVar;
    }

    public final void a() {
        this.c = this.b;
        this.d = 0;
        this.e = this;
    }

    public final void a(Object obj) {
        if (obj == null) {
            g(0);
        } else {
            g(System.identityHashCode(obj));
        }
    }

    public final void a(String str) {
        d(4);
        int i = this.c;
        int length = str.length();
        abu.a(length + 1, this.a, i);
        int i2 = i + 4;
        abu.a(0, this.a, i2);
        int i3 = i2 + 4;
        abu.a(length + 1, this.a, i3);
        int i4 = i3 + 4;
        try {
            System.arraycopy(str.getBytes("UTF-16LE"), 0, this.a, i4, length * 2);
        } catch (UnsupportedEncodingException e2) {
        }
        int i5 = i4 + (length * 2);
        int i6 = i5 + 1;
        this.a[i5] = 0;
        this.a[i6] = 0;
        c((i6 + 1) - this.c);
    }

    public final int b() {
        byte b2 = this.a[this.c] & 255;
        c(1);
        return b2;
    }

    public final void b(int i) {
        this.e.d = i;
    }

    public final int c() {
        d(2);
        short a2 = abu.a(this.a, this.c);
        c(2);
        return a2;
    }

    public final void c(int i) {
        this.c += i;
        if (this.c - this.b > this.e.d) {
            this.e.d = this.c - this.b;
        }
    }

    public final int d() {
        d(4);
        int b2 = abu.b(this.a, this.c);
        c(4);
        return b2;
    }

    public final int d(int i) {
        int i2 = i - 1;
        int i3 = this.c - this.b;
        int i4 = ((i2 ^ -1) & (i3 + i2)) - i3;
        c(i4);
        return i4;
    }

    public final String e() {
        int i;
        String str;
        d(4);
        int i2 = this.c;
        int b2 = abu.b(this.a, i2);
        int i3 = i2 + 12;
        if (b2 != 0) {
            int i4 = (b2 - 1) * 2;
            if (i4 < 0 || i4 > 65535) {
                try {
                    throw new ya("invalid array conformance");
                } catch (UnsupportedEncodingException e2) {
                }
            } else {
                str = new String(this.a, i3, i4, "UTF-16LE");
                i = i4 + 2 + i3;
                c(i - this.c);
                return str;
            }
        }
        str = null;
        i = i3;
        c(i - this.c);
        return str;
    }

    public final void e(int i) {
        this.a[this.c] = (byte) (i & 255);
        c(1);
    }

    public final void f(int i) {
        d(2);
        short s = (short) i;
        byte[] bArr = this.a;
        int i2 = this.c;
        bArr[i2] = (byte) (s & 255);
        bArr[i2 + 1] = (byte) ((s >> 8) & 255);
        c(2);
    }

    public final void g(int i) {
        d(4);
        abu.a(i, this.a, this.c);
        c(4);
    }

    public final String toString() {
        return "start=" + this.b + ",index=" + this.c + ",length=" + this.e.d;
    }
}
