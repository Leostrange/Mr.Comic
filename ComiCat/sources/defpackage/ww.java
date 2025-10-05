package defpackage;

import java.io.OutputStream;

/* renamed from: ww  reason: default package */
/* compiled from: Text */
public final class ww implements CharSequence, Comparable, wt, xi {
    public static final ww a = d("");
    /* access modifiers changed from: private */
    public static final xd b = new xd().a(xb.h);
    private static final ww g = d("true");
    private static final ww h = d("false");
    private static final wq i = new wq().a((OutputStream) System.out);
    private static final wp j = new wp() {
        public final Object a() {
            return new ww(true, (byte) 0);
        }
    };
    private static final wp k = new wp() {
        public final Object a() {
            return new ww(false, (byte) 0);
        }
    };
    private final char[] c;
    private int d;
    private ww e;
    private ww f;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public ww(String str) {
        this(str.length() <= 32);
        this.d = str.length();
        if (this.c != null) {
            str.getChars(0, this.d, this.c, 0);
            return;
        }
        int i2 = ((this.d + 32) >> 1) & -32;
        this.e = new ww(str.substring(0, i2));
        this.f = new ww(str.substring(i2, this.d));
    }

    private ww(boolean z) {
        this.c = z ? new char[32] : null;
    }

    /* synthetic */ ww(boolean z, byte b2) {
        this(z);
    }

    private static ww a(double d2) {
        wx c2 = wx.c();
        try {
            return c2.a(d2).b();
        } finally {
            wx.a(c2);
        }
    }

    private static ww a(float f2) {
        wx c2 = wx.c();
        try {
            return c2.a(f2).b();
        } finally {
            wx.a(c2);
        }
    }

    private static ww a(int i2) {
        wx c2 = wx.c();
        try {
            return c2.a(i2).b();
        } finally {
            wx.a(c2);
        }
    }

    private ww a(int i2, int i3) {
        while (r5.c == null) {
            int i4 = r5.e.d;
            if (i3 <= i4) {
                r5 = r5.e;
            } else if (i2 < i4) {
                return (i2 == 0 && i3 == r5.d) ? r5 : r5.e.a(i2, i4).a(r5.f.a(0, i3 - i4));
            } else {
                r5 = r5.f;
                i2 -= i4;
                i3 -= i4;
            }
        }
        if (i2 < 0 || i2 > i3 || i3 > r5.d) {
            throw new IndexOutOfBoundsException();
        } else if (i2 == 0 && i3 == r5.d) {
            return r5;
        } else {
            if (i2 == i3) {
                return a;
            }
            int i5 = i3 - i2;
            ww b2 = b(i5);
            System.arraycopy(r5.c, i2, b2.c, 0, i5);
            return b2;
        }
    }

    private static ww a(long j2) {
        wx c2 = wx.c();
        try {
            return c2.a(j2).b();
        } finally {
            wx.a(c2);
        }
    }

    public static ww a(Object obj) {
        return obj instanceof wt ? ((wt) obj).b() : obj instanceof Number ? obj instanceof Integer ? a(((Integer) obj).intValue()) : obj instanceof Long ? a(((Long) obj).longValue()) : obj instanceof Float ? a(((Float) obj).floatValue()) : obj instanceof Double ? a(((Double) obj).doubleValue()) : b(String.valueOf(obj)) : b(String.valueOf(obj));
    }

    private static ww a(String str, int i2, int i3) {
        int i4 = i3 - i2;
        if (i4 <= 32) {
            ww b2 = b(i4);
            str.getChars(i2, i3, b2.c, 0);
            return b2;
        }
        int i5 = ((i4 + 32) >> 1) & -32;
        return a(a(str, i2, i2 + i5), a(str, i5 + i2, i3));
    }

    private ww a(ww wwVar) {
        int i2 = this.d + wwVar.d;
        if (i2 <= 32) {
            ww b2 = b(i2);
            a(0, this.d, b2.c, 0);
            wwVar.a(0, wwVar.d, b2.c, this.d);
            return b2;
        }
        if ((this.d << 1) < wwVar.d && wwVar.c == null) {
            if (wwVar.e.d > wwVar.f.d) {
                ww wwVar2 = wwVar.e;
                if (wwVar2.c == null) {
                    wwVar = a(wwVar2.e, a(wwVar2.f, wwVar.f));
                }
            }
            this = a(wwVar.e);
            wwVar = wwVar.f;
        } else if ((wwVar.d << 1) < this.d && this.c == null) {
            if (this.f.d > this.e.d) {
                ww wwVar3 = this.f;
                if (wwVar3.c == null) {
                    ww wwVar4 = wwVar3.e;
                    this = a(a(this.e, wwVar4), wwVar3.f);
                }
            }
            wwVar = this.f.a(wwVar);
            this = this.e;
        }
        return a(this, wwVar);
    }

    private static ww a(ww wwVar, ww wwVar2) {
        ww wwVar3 = (ww) k.b();
        wwVar3.d = wwVar.d + wwVar2.d;
        wwVar3.e = wwVar;
        wwVar3.f = wwVar2;
        return wwVar3;
    }

    static ww a(wx wxVar, int i2, int i3) {
        int i4 = i3 - i2;
        if (i4 <= 32) {
            ww b2 = b(i4);
            wxVar.a(i2, i3, b2.c);
            return b2;
        }
        int i5 = ((i4 + 32) >> 1) & -32;
        return a(a(wxVar, i2, i2 + i5), a(wxVar, i5 + i2, i3));
    }

    private static ww b(int i2) {
        ww wwVar = (ww) j.b();
        wwVar.d = i2;
        return wwVar;
    }

    private static ww b(String str) {
        return a(str, 0, str.length());
    }

    private ww c(String str) {
        int length = str.length();
        if (this.c == null) {
            ww c2 = this.f.c(str);
            if (c2 != null) {
                return a(this.e, c2);
            }
            return null;
        } else if (this.d + length > 32) {
            return null;
        } else {
            ww b2 = b(this.d + length);
            System.arraycopy(this.c, 0, b2.c, 0, this.d);
            str.getChars(0, length, b2.c, this.d);
            return b2;
        }
    }

    private static ww d(String str) {
        ww wwVar = (ww) b.get(str);
        return wwVar != null ? wwVar : e(str);
    }

    private static synchronized ww e(final String str) {
        ww wwVar;
        synchronized (ww.class) {
            if (!b.containsKey(str)) {
                wh.a();
                wh.a(new Runnable() {
                    public final void run() {
                        ww wwVar = new ww(str);
                        ww.b.put(wwVar, wwVar);
                    }
                });
            }
            wwVar = (ww) b.get(str);
        }
        return wwVar;
    }

    public final ww a(String str) {
        ww c2 = c(str);
        return c2 != null ? c2 : a(b(str));
    }

    public final void a(int i2, int i3, char[] cArr, int i4) {
        while (r2.c == null) {
            int i5 = r2.e.d;
            if (i3 <= i5) {
                r2 = r2.e;
            } else if (i2 >= i5) {
                r2 = r2.f;
                i2 -= i5;
                i3 -= i5;
            } else {
                r2.e.a(i2, i5, cArr, i4);
                r2 = r2.f;
                i3 -= i5;
                i4 = (i5 + i4) - i2;
                i2 = 0;
            }
        }
        if (i2 < 0 || i3 > r2.d || i2 > i3) {
            throw new IndexOutOfBoundsException();
        }
        System.arraycopy(r2.c, i2, cArr, i4, i3 - i2);
    }

    public final ww b() {
        return this;
    }

    public final ww b(Object obj) {
        return a(a(obj));
    }

    public final char charAt(int i2) {
        while (i2 < r2.d) {
            if (r2.c != null) {
                return r2.c[i2];
            }
            if (i2 < r2.e.d) {
                r2 = r2.e;
            } else {
                ww wwVar = r2.f;
                i2 -= r2.e.d;
                r2 = wwVar;
            }
        }
        throw new IndexOutOfBoundsException();
    }

    public final int compareTo(Object obj) {
        return xb.h.compare(this, obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ww)) {
            return false;
        }
        ww wwVar = (ww) obj;
        if (this.d != wwVar.d) {
            return false;
        }
        int i2 = 0;
        while (i2 < this.d) {
            int i3 = i2 + 1;
            if (charAt(i2) != wwVar.charAt(i2)) {
                return false;
            }
            i2 = i3;
        }
        return true;
    }

    public final int hashCode() {
        int length = length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = charAt(i3) + (i2 * 31);
        }
        return i2;
    }

    public final int length() {
        return this.d;
    }

    public final CharSequence subSequence(int i2, int i3) {
        return a(i2, i3);
    }

    public final String toString() {
        if (this.c != null) {
            return new String(this.c, 0, this.d);
        }
        char[] cArr = new char[this.d];
        a(0, this.d, cArr, 0);
        return new String(cArr, 0, this.d);
    }
}
