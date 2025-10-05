package defpackage;

import android.support.v4.app.FragmentTransaction;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: nx  reason: default package */
/* compiled from: IOUtils */
public final class nx {
    /* JADX INFO: finally extract failed */
    public static long a(oj ojVar) {
        nn nnVar = new nn();
        try {
            ojVar.a(nnVar);
            nnVar.close();
            return nnVar.a;
        } catch (Throwable th) {
            nnVar.close();
            throw th;
        }
    }

    public static void a(InputStream inputStream, OutputStream outputStream, boolean z) {
        try {
            ni.a(inputStream);
            ni.a(outputStream);
            byte[] bArr = new byte[FragmentTransaction.TRANSIT_ENTER_MASK];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
            }
        } finally {
            if (z) {
                inputStream.close();
            }
        }
    }
}
