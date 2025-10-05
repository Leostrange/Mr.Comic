package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/* renamed from: ahn  reason: default package */
/* compiled from: IOUtils */
public final class ahn {
    public static final char a = File.separatorChar;
    public static final String b;

    static {
        ahz ahz = new ahz((byte) 0);
        PrintWriter printWriter = new PrintWriter(ahz);
        printWriter.println();
        b = ahz.toString();
        printWriter.close();
    }

    public static void a(Closeable... closeableArr) {
        for (int i = 0; i < 4; i++) {
            Closeable closeable = closeableArr[i];
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e) {
                }
            }
        }
    }
}
