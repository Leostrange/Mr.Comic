package defpackage;

import java.io.PrintStream;

/* renamed from: abx  reason: default package */
/* compiled from: LogStream */
public final class abx extends PrintStream {
    public static int a = 1;
    private static abx b;

    private abx(PrintStream printStream) {
        super(printStream);
    }

    public static abx a() {
        if (b == null) {
            b = new abx(System.err);
        }
        return b;
    }

    public static void a(int i) {
        a = i;
    }
}
