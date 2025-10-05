package defpackage;

import java.util.Arrays;
import org.apache.http.message.TokenParser;

/* renamed from: aju  reason: default package */
/* compiled from: DefaultPrettyPrinter */
public final class aju implements ain {
    protected aiq a = new a();
    protected aiq b = new b();
    protected boolean c = true;
    protected int d = 0;

    /* renamed from: aju$a */
    /* compiled from: DefaultPrettyPrinter */
    public static class a implements aiq {
        public final void a(aif aif, int i) {
            aif.a((char) TokenParser.SP);
        }

        public final boolean a() {
            return true;
        }
    }

    /* renamed from: aju$b */
    /* compiled from: DefaultPrettyPrinter */
    public static class b implements aiq {
        static final String a;
        static final char[] b;

        static {
            String str = null;
            try {
                str = System.getProperty("line.separator");
            } catch (Throwable th) {
            }
            if (str == null) {
                str = "\n";
            }
            a = str;
            char[] cArr = new char[64];
            b = cArr;
            Arrays.fill(cArr, TokenParser.SP);
        }

        public final void a(aif aif, int i) {
            aif.c(a);
            if (i > 0) {
                int i2 = i + i;
                while (i2 > 64) {
                    aif.a(b, 0, 64);
                    i2 -= b.length;
                }
                aif.a(b, 0, i2);
            }
        }

        public final boolean a() {
            return false;
        }
    }

    public final void a(aif aif) {
        aif.a((char) TokenParser.SP);
    }

    public final void a(aif aif, int i) {
        if (!this.b.a()) {
            this.d--;
        }
        if (i > 0) {
            this.b.a(aif, this.d);
        } else {
            aif.a((char) TokenParser.SP);
        }
        aif.a('}');
    }

    public final void b(aif aif) {
        aif.a('{');
        if (!this.b.a()) {
            this.d++;
        }
    }

    public final void b(aif aif, int i) {
        if (!this.a.a()) {
            this.d--;
        }
        if (i > 0) {
            this.a.a(aif, this.d);
        } else {
            aif.a((char) TokenParser.SP);
        }
        aif.a(']');
    }

    public final void c(aif aif) {
        aif.a(',');
        this.b.a(aif, this.d);
    }

    public final void d(aif aif) {
        if (this.c) {
            aif.c(" : ");
        } else {
            aif.a(':');
        }
    }

    public final void e(aif aif) {
        if (!this.a.a()) {
            this.d++;
        }
        aif.a('[');
    }

    public final void f(aif aif) {
        aif.a(',');
        this.a.a(aif, this.d);
    }

    public final void g(aif aif) {
        this.a.a(aif, this.d);
    }

    public final void h(aif aif) {
        this.b.a(aif, this.d);
    }
}
