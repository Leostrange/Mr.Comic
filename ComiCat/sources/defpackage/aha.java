package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: aha  reason: default package */
/* compiled from: StreamUtils */
public final class aha {
    public static boolean a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public static boolean a(InputStream inputStream, OutputStream outputStream, acy acy) {
        return a(inputStream, outputStream, acy, 262144);
    }

    public static boolean a(InputStream inputStream, OutputStream outputStream, acy acy, int i) {
        IOException e;
        int i2;
        boolean z = false;
        byte[] bArr = new byte[i];
        int i3 = 0;
        while (true) {
            try {
                i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                try {
                    outputStream.write(bArr, 0, i2);
                    acy.a(i2, 0);
                    if (!acy.a()) {
                        break;
                    }
                    i3 = i2;
                } catch (IOException e2) {
                    e = e2;
                    agt.a((Exception) e);
                    acy.a(acw.c, e.getMessage());
                    agt.a("StreamUtils", "Read " + i2 + "bytes from file");
                    return z;
                }
            } catch (IOException e3) {
                IOException iOException = e3;
                i2 = i3;
                e = iOException;
                agt.a((Exception) e);
                acy.a(acw.c, e.getMessage());
                agt.a("StreamUtils", "Read " + i2 + "bytes from file");
                return z;
            }
        }
        outputStream.flush();
        a(inputStream);
        a(outputStream);
        z = acy.a();
        agt.a("StreamUtils", "Read " + i2 + "bytes from file");
        return z;
    }

    private static boolean a(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }
        return true;
    }
}
