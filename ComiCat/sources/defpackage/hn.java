package defpackage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;

/* renamed from: hn  reason: default package */
/* compiled from: DbxSdkVersion */
public class hn {
    public static final String a = b();

    /* renamed from: hn$a */
    /* compiled from: DbxSdkVersion */
    static final class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    private static String a() {
        InputStream resourceAsStream;
        try {
            resourceAsStream = hn.class.getResourceAsStream("/sdk-version.txt");
            if (resourceAsStream == null) {
                throw new a("Not found.");
            }
            BufferedReader bufferedReader = new BufferedReader(ij.a(resourceAsStream));
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                throw new a("No lines.");
            }
            String readLine2 = bufferedReader.readLine();
            if (readLine2 != null) {
                throw new a("Found more than one line.  Second line: " + il.a(readLine2));
            }
            ij.c(resourceAsStream);
            return readLine;
        } catch (IOException e) {
            throw new a(e.getMessage());
        } catch (Throwable th) {
            ij.c(resourceAsStream);
            throw th;
        }
    }

    private static String b() {
        try {
            String a2 = a();
            if (Pattern.compile("[0-9]+(?:\\.[0-9]+)*(?:-[-_A-Za-z0-9]+)?").matcher(a2).matches()) {
                return a2;
            }
            throw new a("Text doesn't follow expected pattern: " + il.a(a2));
        } catch (a e) {
            throw new RuntimeException("Error loading version from resource \"sdk-version.txt\": " + e.getMessage());
        }
    }
}
