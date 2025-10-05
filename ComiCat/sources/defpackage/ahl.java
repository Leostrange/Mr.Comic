package defpackage;

import java.io.File;
import org.apache.http.message.TokenParser;

/* renamed from: ahl  reason: default package */
/* compiled from: FilenameUtils */
public final class ahl {
    public static final String a = Character.toString('.');
    private static final char b = File.separatorChar;
    private static final char c;

    static {
        if (a()) {
            c = '/';
        } else {
            c = TokenParser.ESCAPE;
        }
    }

    static boolean a() {
        return b == '\\';
    }
}
