package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: qs  reason: default package */
/* compiled from: IO */
public final class qs {
    InputStream a;
    OutputStream b;
    OutputStream c;
    boolean d = false;
    boolean e = false;
    private boolean f = false;

    /* access modifiers changed from: package-private */
    public final void a() {
        try {
            if (this.b != null && !this.e) {
                this.b.close();
            }
            this.b = null;
        } catch (Exception e2) {
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(byte[] bArr, int i, int i2) {
        this.b.write(bArr, i, i2);
        this.b.flush();
    }

    public final void b() {
        try {
            if (this.a != null && !this.d) {
                this.a.close();
            }
            this.a = null;
        } catch (Exception e2) {
        }
        a();
        try {
            if (this.c != null && !this.f) {
                this.c.close();
            }
            this.c = null;
        } catch (Exception e3) {
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(byte[] bArr, int i, int i2) {
        do {
            int read = this.a.read(bArr, i, i2);
            if (read < 0) {
                throw new IOException("End of IO Stream Read");
            }
            i += read;
            i2 -= read;
        } while (i2 > 0);
    }
}
