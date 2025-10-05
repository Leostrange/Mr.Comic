package defpackage;

import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* renamed from: afj  reason: default package */
/* compiled from: RandomAccessCbzPage */
public final class afj implements aff {
    private ZipEntry a;
    private ZipFile b;

    public afj(ZipEntry zipEntry, ZipFile zipFile) {
        this.a = zipEntry;
        this.b = zipFile;
    }

    public final InputStream a() {
        try {
            InputStream inputStream = this.b.getInputStream(this.a);
            ags ags = new ags(inputStream, (int) this.a.getSize());
            try {
                inputStream.close();
                return ags;
            } catch (Exception e) {
                return ags;
            }
        } catch (Exception e2) {
            return null;
        }
    }
}
