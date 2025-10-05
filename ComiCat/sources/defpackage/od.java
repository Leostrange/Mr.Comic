package defpackage;

import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: od  reason: default package */
/* compiled from: LoggingStreamingContent */
public final class od implements oj {
    private final oj a;
    private final int b;
    private final Level c;
    private final Logger d;

    public od(oj ojVar, Logger logger, Level level, int i) {
        this.a = ojVar;
        this.d = logger;
        this.c = level;
        this.b = i;
    }

    /* JADX INFO: finally extract failed */
    public final void a(OutputStream outputStream) {
        oc ocVar = new oc(outputStream, this.d, this.c, this.b);
        try {
            this.a.a(ocVar);
            ocVar.a.close();
            outputStream.flush();
        } catch (Throwable th) {
            ocVar.a.close();
            throw th;
        }
    }
}
