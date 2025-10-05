package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: no  reason: default package */
/* compiled from: ByteStreams */
public final class no {

    /* renamed from: no$a */
    /* compiled from: ByteStreams */
    public static final class a extends FilterInputStream {
        private long a;
        private long b = -1;

        public a(InputStream inputStream, long j) {
            super(inputStream);
            ni.a(inputStream);
            oh.a(j >= 0, (Object) "limit must be non-negative");
            this.a = j;
        }

        public final int available() {
            return (int) Math.min((long) this.in.available(), this.a);
        }

        public final synchronized void mark(int i) {
            this.in.mark(i);
            this.b = this.a;
        }

        public final int read() {
            if (this.a == 0) {
                return -1;
            }
            int read = this.in.read();
            if (read != -1) {
                this.a--;
            }
            return read;
        }

        public final int read(byte[] bArr, int i, int i2) {
            if (this.a == 0) {
                return -1;
            }
            int read = this.in.read(bArr, i, (int) Math.min((long) i2, this.a));
            if (read != -1) {
                this.a -= (long) read;
            }
            return read;
        }

        public final synchronized void reset() {
            if (!this.in.markSupported()) {
                throw new IOException("Mark not supported");
            } else if (this.b == -1) {
                throw new IOException("Mark not set");
            } else {
                this.in.reset();
                this.a = this.b;
            }
        }

        public final long skip(long j) {
            long skip = this.in.skip(Math.min(j, this.a));
            this.a -= skip;
            return skip;
        }
    }

    public static int a(InputStream inputStream, byte[] bArr, int i, int i2) {
        ni.a(inputStream);
        ni.a(bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read == -1) {
                break;
            }
            i3 += read;
        }
        return i3;
    }
}
