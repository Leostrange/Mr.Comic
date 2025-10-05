package defpackage;

import java.io.ByteArrayOutputStream;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.protocol.HTTP;

/* renamed from: oa  reason: default package */
/* compiled from: LoggingByteArrayOutputStream */
public final class oa extends ByteArrayOutputStream {
    private int a;
    private final int b;
    private boolean c;
    private final Level d;
    private final Logger e;

    public oa(Logger logger, Level level, int i) {
        this.e = (Logger) ni.a(logger);
        this.d = (Level) ni.a(level);
        ni.a(i >= 0);
        this.b = i;
    }

    private static void a(StringBuilder sb, int i) {
        if (i == 1) {
            sb.append("1 byte");
        } else {
            sb.append(NumberFormat.getInstance().format((long) i)).append(" bytes");
        }
    }

    public final synchronized void close() {
        if (!this.c) {
            if (this.a != 0) {
                StringBuilder sb = new StringBuilder("Total: ");
                a(sb, this.a);
                if (this.count != 0 && this.count < this.a) {
                    sb.append(" (logging first ");
                    a(sb, this.count);
                    sb.append(")");
                }
                this.e.config(sb.toString());
                if (this.count != 0) {
                    this.e.log(this.d, toString(HTTP.UTF_8).replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                }
            }
            this.c = true;
        }
    }

    public final synchronized void write(int i) {
        ni.a(!this.c);
        this.a++;
        if (this.count < this.b) {
            super.write(i);
        }
    }

    public final synchronized void write(byte[] bArr, int i, int i2) {
        ni.a(!this.c);
        this.a += i2;
        if (this.count < this.b) {
            int i3 = this.count + i2;
            if (i3 > this.b) {
                i2 += this.b - i3;
            }
            super.write(bArr, i, i2);
        }
    }
}
