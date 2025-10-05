package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.Writer;

/* renamed from: ae  reason: default package */
/* compiled from: LogWriter */
public final class ae extends Writer {
    private final String a;
    private StringBuilder b = new StringBuilder(NotificationCompat.FLAG_HIGH_PRIORITY);

    public ae(String str) {
        this.a = str;
    }

    private void a() {
        if (this.b.length() > 0) {
            this.b.delete(0, this.b.length());
        }
    }

    public final void close() {
        a();
    }

    public final void flush() {
        a();
    }

    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == 10) {
                a();
            } else {
                this.b.append(c);
            }
        }
    }
}
