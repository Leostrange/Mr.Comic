package defpackage;

/* renamed from: hj  reason: default package */
/* compiled from: DbxException */
public class hj extends Exception {
    private final String a;

    public hj(String str, String str2) {
        super(str2);
        this.a = str;
    }

    public hj(String str, String str2, Throwable th) {
        super(str2, th);
        this.a = str;
    }

    public hj(String str, Throwable th) {
        this((String) null, str, th);
    }
}
