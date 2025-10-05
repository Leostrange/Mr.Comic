package defpackage;

import java.io.IOException;

/* renamed from: hr  reason: default package */
/* compiled from: NetworkIOException */
public final class hr extends hj {
    public hr(IOException iOException) {
        super(iOException.getMessage(), (Throwable) iOException);
    }

    public final /* bridge */ /* synthetic */ Throwable getCause() {
        return (IOException) super.getCause();
    }
}
