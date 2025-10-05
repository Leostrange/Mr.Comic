package defpackage;

import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;

/* renamed from: aif  reason: default package */
/* compiled from: JsonGenerator */
public abstract class aif implements Closeable {
    protected ain a;

    /* renamed from: aif$a */
    /* compiled from: JsonGenerator */
    public enum a {
        AUTO_CLOSE_TARGET(true),
        AUTO_CLOSE_JSON_CONTENT(true),
        QUOTE_FIELD_NAMES(true),
        QUOTE_NON_NUMERIC_NUMBERS(true),
        WRITE_NUMBERS_AS_STRINGS(false),
        FLUSH_PASSED_TO_STREAM(true),
        ESCAPE_NON_ASCII(false);
        
        final boolean h;
        public final int i;

        private a(boolean z) {
            this.h = z;
            this.i = 1 << ordinal();
        }

        public static int a() {
            int i2 = 0;
            for (a aVar : values()) {
                if (aVar.h) {
                    i2 |= aVar.i;
                }
            }
            return i2;
        }
    }

    protected aif() {
    }

    public abstract aif a();

    public final aif a(ain ain) {
        this.a = ain;
        return this;
    }

    public aif a(ajb ajb) {
        return this;
    }

    public abstract void a(char c);

    public abstract void a(double d);

    public abstract void a(float f);

    public abstract void a(int i);

    public abstract void a(long j);

    public abstract void a(String str);

    public abstract void a(BigDecimal bigDecimal);

    public abstract void a(BigInteger bigInteger);

    public abstract void a(boolean z);

    public abstract void a(char[] cArr, int i, int i2);

    public abstract void b();

    public abstract void b(String str);

    public abstract void c();

    public abstract void c(String str);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();
}
