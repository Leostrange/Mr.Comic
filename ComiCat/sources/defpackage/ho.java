package defpackage;

import defpackage.hd;
import defpackage.hy;

/* renamed from: ho  reason: default package */
/* compiled from: DbxWrappedException */
public final class ho extends Exception {
    public final Object a;
    public final String b;
    public final hq c;

    private ho(Object obj, String str, hq hqVar) {
        this.a = obj;
        this.b = str;
        this.c = hqVar;
    }

    public static <T> ho a(ie<T> ieVar, hy.b bVar) {
        String b2 = hm.b(bVar);
        hd hdVar = (hd) new hd.a(ieVar).a(bVar.b);
        return new ho(hdVar.a, b2, hdVar.b);
    }
}
