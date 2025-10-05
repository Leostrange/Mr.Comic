package defpackage;

import defpackage.ga;
import java.util.Date;

/* renamed from: gv  reason: default package */
/* compiled from: AccessAtzToken */
public final class gv extends ga {
    public gv() {
        this.h = ga.a.ACCESS;
    }

    public gv(String str, String str2, long j) {
        this(str, str2, new Date(), j);
    }

    private gv(String str, String str2, Date date, long j) {
        this(str, str2, date, new Date(date.getTime() + j));
    }

    private gv(String str, String str2, Date date, Date date2) {
        super(str, str2, date, date2, ga.a.ACCESS);
    }
}
