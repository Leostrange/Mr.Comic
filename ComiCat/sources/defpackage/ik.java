package defpackage;

import java.util.Date;

/* renamed from: ik  reason: default package */
/* compiled from: LangUtil */
public final class ik {
    public static RuntimeException a(String str, Throwable th) {
        RuntimeException runtimeException = new RuntimeException(str + ": " + th.getMessage());
        runtimeException.initCause(th);
        return runtimeException;
    }

    public static Date a(Date date) {
        if (date == null) {
            return date;
        }
        long time = date.getTime();
        return new Date(time - (time % 1000));
    }
}
