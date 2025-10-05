package defpackage;

/* renamed from: hl  reason: default package */
/* compiled from: DbxRequestConfig */
public final class hl {
    final String a;
    final String b;
    final hy c;
    public final int d;

    public hl(String str) {
        this(str, (byte) 0);
    }

    @Deprecated
    private hl(String str, byte b2) {
        this(str, ia.c, (byte) 0);
    }

    private hl(String str, hy hyVar) {
        if (str == null) {
            throw new NullPointerException("clientIdentifier");
        } else if (hyVar == null) {
            throw new NullPointerException("httpRequestor");
        } else {
            this.a = str;
            this.b = null;
            this.c = hyVar;
            this.d = 0;
        }
    }

    @Deprecated
    private hl(String str, hy hyVar, byte b2) {
        this(str, hyVar);
    }
}
