package defpackage;

import defpackage.ga;
import java.util.Date;

/* renamed from: gx  reason: default package */
/* compiled from: RefreshAtzToken */
public final class gx extends ga {
    public gx() {
        this.h = ga.a.REFRESH;
    }

    public gx(String str, String str2) {
        this(str, str2, new Date());
    }

    private gx(String str, String str2, Date date) {
        super(str, str2, date, date, ga.a.REFRESH);
    }
}
