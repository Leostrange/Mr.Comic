package defpackage;

import org.apache.http.HttpStatus;

/* renamed from: ajr  reason: default package */
/* compiled from: BufferRecycler */
public final class ajr {
    protected final byte[][] a = new byte[a.values().length][];
    protected final char[][] b = new char[b.values().length][];

    /* renamed from: ajr$a */
    /* compiled from: BufferRecycler */
    public enum a {
        READ_IO_BUFFER(4000),
        WRITE_ENCODING_BUFFER(4000),
        WRITE_CONCAT_BUFFER(2000);
        
        /* access modifiers changed from: private */
        public final int d;

        private a(int i) {
            this.d = i;
        }
    }

    /* renamed from: ajr$b */
    /* compiled from: BufferRecycler */
    public enum b {
        TOKEN_BUFFER(2000),
        CONCAT_BUFFER(2000),
        TEXT_BUFFER(HttpStatus.SC_OK),
        NAME_COPY_BUFFER(HttpStatus.SC_OK);
        
        /* access modifiers changed from: private */
        public final int e;

        private b(int i) {
            this.e = i;
        }
    }

    public final void a(a aVar, byte[] bArr) {
        this.a[aVar.ordinal()] = bArr;
    }

    public final void a(b bVar, char[] cArr) {
        this.b[bVar.ordinal()] = cArr;
    }

    public final byte[] a(a aVar) {
        int ordinal = aVar.ordinal();
        byte[] bArr = this.a[ordinal];
        if (bArr == null) {
            return new byte[aVar.d];
        }
        this.a[ordinal] = null;
        return bArr;
    }

    public final char[] a(b bVar) {
        return a(bVar, 0);
    }

    public final char[] a(b bVar, int i) {
        if (bVar.e > i) {
            i = bVar.e;
        }
        int ordinal = bVar.ordinal();
        char[] cArr = this.b[ordinal];
        if (cArr == null || cArr.length < i) {
            return new char[i];
        }
        this.b[ordinal] = null;
        return cArr;
    }
}
