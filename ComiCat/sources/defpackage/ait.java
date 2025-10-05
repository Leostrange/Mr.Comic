package defpackage;

import defpackage.aii;

/* renamed from: ait  reason: default package */
/* compiled from: JsonParserMinimalBase */
public abstract class ait extends aii {
    protected ait() {
    }

    protected static final String b(int i) {
        char c = (char) i;
        return Character.isISOControl(c) ? "(CTRL-CHAR, code " + i + ")" : i > 255 ? "'" + c + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")" : "'" + c + "' (code " + i + ")";
    }

    protected static void x() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    /* access modifiers changed from: protected */
    public final char a(char c) {
        if (a(aii.a.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) || (c == '\'' && a(aii.a.ALLOW_SINGLE_QUOTES))) {
            return c;
        }
        throw a("Unrecognized character escape " + b(c));
    }

    public abstract ail a();

    /* access modifiers changed from: protected */
    public final void a(int i) {
        throw a("Illegal character (" + b((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    /* access modifiers changed from: protected */
    public final void a(String str, Throwable th) {
        throw new aih(str, e(), th);
    }

    public final aii b() {
        if (this.b == ail.START_OBJECT || this.b == ail.START_ARRAY) {
            int i = 1;
            while (true) {
                ail a = a();
                if (a == null) {
                    t();
                } else {
                    switch (a) {
                        case START_OBJECT:
                        case START_ARRAY:
                            i++;
                            continue;
                        case END_OBJECT:
                        case END_ARRAY:
                            i--;
                            if (i == 0) {
                                break;
                            } else {
                                continue;
                            }
                    }
                }
            }
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public final void b(int i, String str) {
        String str2 = "Unexpected character (" + b(i) + ")";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        throw a(str2);
    }

    /* access modifiers changed from: protected */
    public final void c(int i, String str) {
        if (!a(aii.a.ALLOW_UNQUOTED_CONTROL_CHARS) || i >= 32) {
            throw a("Illegal unquoted character (" + b((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    /* access modifiers changed from: protected */
    public final void c(String str) {
        throw a("Unexpected end-of-input" + str);
    }

    /* access modifiers changed from: protected */
    public final void d(String str) {
        throw a(str);
    }

    public abstract String f();

    /* access modifiers changed from: protected */
    public abstract void t();

    /* access modifiers changed from: protected */
    public final void v() {
        c(" in " + this.b);
    }

    /* access modifiers changed from: protected */
    public final void w() {
        c(" in a value");
    }
}
