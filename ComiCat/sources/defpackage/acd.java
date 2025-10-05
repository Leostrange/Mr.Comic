package defpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: acd  reason: default package */
/* compiled from: TransportException */
public final class acd extends IOException {
    public Throwable a;

    public acd() {
    }

    public acd(String str) {
        super(str);
    }

    public acd(String str, Throwable th) {
        super(str);
        this.a = th;
    }

    public acd(Throwable th) {
        this.a = th;
    }

    public final String toString() {
        if (this.a == null) {
            return super.toString();
        }
        StringWriter stringWriter = new StringWriter();
        this.a.printStackTrace(new PrintWriter(stringWriter));
        return super.toString() + "\n" + stringWriter;
    }
}
