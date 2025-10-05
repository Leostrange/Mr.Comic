package defpackage;

import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: lm  reason: default package */
/* compiled from: AbstractInputStreamContent */
public abstract class lm implements ls {
    public String a;
    public boolean b = true;

    public lm(String str) {
        a(str);
    }

    public lm a(String str) {
        this.a = str;
        return this;
    }

    public lm a(boolean z) {
        this.b = z;
        return this;
    }

    public final void a(OutputStream outputStream) {
        nx.a(b(), outputStream, this.b);
        outputStream.flush();
    }

    public abstract InputStream b();

    public final String c() {
        return this.a;
    }
}
