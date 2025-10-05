package defpackage;

import java.io.Closeable;
import java.io.InputStream;

/* renamed from: hi  reason: default package */
/* compiled from: DbxDownloader */
public final class hi<R> implements Closeable {
    public final InputStream a;
    public boolean b = false;
    private final R c;

    public hi(R r, InputStream inputStream) {
        this.c = r;
        this.a = inputStream;
    }

    public final void close() {
        if (!this.b) {
            ij.a((Closeable) this.a);
            this.b = true;
        }
    }
}
