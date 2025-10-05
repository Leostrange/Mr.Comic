package defpackage;

import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;

/* renamed from: aii  reason: default package */
/* compiled from: JsonParser */
public abstract class aii implements Closeable {
    protected int a;
    protected ail b;

    /* renamed from: aii$a */
    /* compiled from: JsonParser */
    public enum a {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true);
        
        final boolean k;

        private a(boolean z) {
            this.k = z;
        }

        public static int a() {
            int i = 0;
            for (a aVar : values()) {
                if (aVar.k) {
                    i |= 1 << aVar.ordinal();
                }
            }
            return i;
        }

        public final boolean a(int i) {
            return ((1 << ordinal()) & i) != 0;
        }
    }

    protected aii() {
    }

    /* access modifiers changed from: protected */
    public final aih a(String str) {
        return new aih(str, e());
    }

    public abstract ail a();

    public final boolean a(a aVar) {
        return (this.a & (1 << aVar.ordinal())) != 0;
    }

    public abstract aii b();

    public final ail c() {
        return this.b;
    }

    public abstract void close();

    public abstract String d();

    public abstract aig e();

    public abstract String f();

    public final byte g() {
        int i = i();
        if (i >= -128 && i <= 255) {
            return (byte) i;
        }
        throw a("Numeric value (" + f() + ") out of range of Java byte");
    }

    public final short h() {
        int i = i();
        if (i >= -32768 && i <= 32767) {
            return (short) i;
        }
        throw a("Numeric value (" + f() + ") out of range of Java short");
    }

    public abstract int i();

    public abstract long j();

    public abstract BigInteger k();

    public abstract float l();

    public abstract double m();

    public abstract BigDecimal n();
}
