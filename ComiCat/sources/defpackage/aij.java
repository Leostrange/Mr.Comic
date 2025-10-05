package defpackage;

import java.io.IOException;

/* renamed from: aij  reason: default package */
/* compiled from: JsonProcessingException */
public class aij extends IOException {
    protected aig a;

    protected aij(String str, aig aig) {
        this(str, aig, (Throwable) null);
    }

    protected aij(String str, aig aig, Throwable th) {
        super(str);
        if (th != null) {
            initCause(th);
        }
        this.a = aig;
    }

    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        aig aig = this.a;
        if (aig == null) {
            return message;
        }
        return message + 10 + " at " + aig.toString();
    }

    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
