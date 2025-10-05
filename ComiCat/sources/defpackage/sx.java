package defpackage;

/* renamed from: sx  reason: default package */
/* compiled from: LiveAuthException */
public class sx extends Exception {
    static final /* synthetic */ boolean a = (!sx.class.desiredAssertionStatus());
    private final String b;
    private final String c;

    sx(String str) {
        super(str);
        this.b = "";
        this.c = "";
    }

    sx(String str, String str2, String str3) {
        super(str2);
        if (a || str != null) {
            this.b = str;
            this.c = str3;
            return;
        }
        throw new AssertionError();
    }

    sx(String str, Throwable th) {
        super(str, th);
        this.b = "";
        this.c = "";
    }
}
