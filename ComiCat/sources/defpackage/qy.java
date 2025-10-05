package defpackage;

/* renamed from: qy  reason: default package */
/* compiled from: JSchException */
public class qy extends Exception {
    private Throwable a = null;

    public qy() {
    }

    public qy(String str) {
        super(str);
    }

    public qy(String str, Throwable th) {
        super(str);
        this.a = th;
    }

    public Throwable getCause() {
        return this.a;
    }
}
