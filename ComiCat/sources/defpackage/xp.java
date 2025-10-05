package defpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: xp  reason: default package */
/* compiled from: DcerpcException */
public final class xp extends IOException implements abs, xo {
    private int c;
    private Throwable d;

    xp(int i) {
        super(a(i));
        this.c = i;
    }

    public xp(String str) {
        super(str);
    }

    private static String a(int i) {
        int i2 = 0;
        int length = a.length;
        while (length >= i2) {
            int i3 = (i2 + length) / 2;
            if (i > a[i3]) {
                i2 = i3 + 1;
            } else if (i >= a[i3]) {
                return b[i3];
            } else {
                length = i3 - 1;
            }
        }
        return "0x" + abw.a(i, 8);
    }

    public final String toString() {
        if (this.d == null) {
            return super.toString();
        }
        StringWriter stringWriter = new StringWriter();
        this.d.printStackTrace(new PrintWriter(stringWriter));
        return super.toString() + "\n" + stringWriter;
    }
}
