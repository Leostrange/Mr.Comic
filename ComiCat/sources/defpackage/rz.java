package defpackage;

/* renamed from: rz  reason: default package */
/* compiled from: SftpException */
public final class rz extends Exception {
    public int a = 4;
    private Throwable b = null;

    public rz(String str) {
        super(str);
    }

    public final Throwable getCause() {
        return this.b;
    }

    public final String toString() {
        return this.a + ": " + getMessage();
    }
}
