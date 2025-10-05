package defpackage;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

/* renamed from: lq  reason: default package */
/* compiled from: GZipEncoding */
public final class lq implements lt {
    public final String a() {
        return "gzip";
    }

    public final void a(oj ojVar, OutputStream outputStream) {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(outputStream) {
            public final void close() {
                try {
                    flush();
                } catch (IOException e) {
                }
            }
        });
        ojVar.a(gZIPOutputStream);
        gZIPOutputStream.close();
    }
}
