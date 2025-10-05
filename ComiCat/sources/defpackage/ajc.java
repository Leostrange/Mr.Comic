package defpackage;

import defpackage.ajr;

/* renamed from: ajc  reason: default package */
/* compiled from: IOContext */
public final class ajc {
    protected final Object a;
    protected aic b;
    protected final boolean c;
    protected final ajr d;
    protected byte[] e = null;
    protected byte[] f = null;
    protected char[] g = null;
    protected char[] h = null;
    protected char[] i = null;

    public ajc(ajr ajr, Object obj, boolean z) {
        this.d = ajr;
        this.a = obj;
        this.c = z;
    }

    public final Object a() {
        return this.a;
    }

    public final void a(aic aic) {
        this.b = aic;
    }

    public final void a(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        if (bArr != this.e) {
            throw new IllegalArgumentException("Trying to release buffer not owned by the context");
        }
        this.e = null;
        this.d.a(ajr.a.READ_IO_BUFFER, bArr);
    }

    public final void a(char[] cArr) {
        if (cArr == null) {
            return;
        }
        if (cArr != this.g) {
            throw new IllegalArgumentException("Trying to release buffer not owned by the context");
        }
        this.g = null;
        this.d.a(ajr.b.TOKEN_BUFFER, cArr);
    }

    public final aic b() {
        return this.b;
    }

    public final void b(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        if (bArr != this.f) {
            throw new IllegalArgumentException("Trying to release buffer not owned by the context");
        }
        this.f = null;
        this.d.a(ajr.a.WRITE_ENCODING_BUFFER, bArr);
    }

    public final void b(char[] cArr) {
        if (cArr == null) {
            return;
        }
        if (cArr != this.h) {
            throw new IllegalArgumentException("Trying to release buffer not owned by the context");
        }
        this.h = null;
        this.d.a(ajr.b.CONCAT_BUFFER, cArr);
    }

    public final void c(char[] cArr) {
        if (cArr == null) {
            return;
        }
        if (cArr != this.i) {
            throw new IllegalArgumentException("Trying to release buffer not owned by the context");
        }
        this.i = null;
        this.d.a(ajr.b.NAME_COPY_BUFFER, cArr);
    }

    public final boolean c() {
        return this.c;
    }

    public final ajw d() {
        return new ajw(this.d);
    }

    public final byte[] e() {
        if (this.e != null) {
            throw new IllegalStateException("Trying to call allocReadIOBuffer() second time");
        }
        this.e = this.d.a(ajr.a.READ_IO_BUFFER);
        return this.e;
    }

    public final byte[] f() {
        if (this.f != null) {
            throw new IllegalStateException("Trying to call allocWriteEncodingBuffer() second time");
        }
        this.f = this.d.a(ajr.a.WRITE_ENCODING_BUFFER);
        return this.f;
    }

    public final char[] g() {
        if (this.g != null) {
            throw new IllegalStateException("Trying to call allocTokenBuffer() second time");
        }
        this.g = this.d.a(ajr.b.TOKEN_BUFFER);
        return this.g;
    }

    public final char[] h() {
        if (this.h != null) {
            throw new IllegalStateException("Trying to call allocConcatBuffer() second time");
        }
        this.h = this.d.a(ajr.b.CONCAT_BUFFER);
        return this.h;
    }
}
