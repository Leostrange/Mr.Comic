package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

/* renamed from: mv  reason: default package */
/* compiled from: JsonFactory */
public abstract class mv {
    /* access modifiers changed from: package-private */
    public final String a(Object obj, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Charset charset = np.a;
        mw a = a((OutputStream) byteArrayOutputStream);
        if (z) {
            a.g();
        }
        a.a(false, obj);
        a.a();
        return byteArrayOutputStream.toString(HTTP.UTF_8);
    }

    public abstract mw a(OutputStream outputStream);

    public abstract my a(InputStream inputStream);

    public abstract my a(String str);

    public abstract my b(InputStream inputStream);
}
