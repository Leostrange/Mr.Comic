package defpackage;

import java.util.concurrent.TimeUnit;

/* renamed from: hu  reason: default package */
/* compiled from: RetryException */
public class hu extends hj {
    public final long a;

    public hu(String str, String str2) {
        this(str, str2, 0, TimeUnit.MILLISECONDS);
    }

    public hu(String str, String str2, long j, TimeUnit timeUnit) {
        super(str, str2);
        this.a = timeUnit.toMillis(j);
    }
}
