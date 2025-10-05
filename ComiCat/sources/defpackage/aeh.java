package defpackage;

import java.util.ArrayList;

/* renamed from: aeh  reason: default package */
/* compiled from: SMBShareUtils */
public final class aeh {
    public static void a() {
        xj.a("jcifs.resolveOrder", "DNS");
    }

    public static aar[] a(aar aar) {
        try {
            ArrayList arrayList = new ArrayList();
            aar.a(arrayList, "*");
            return (aar[]) arrayList.toArray(new aar[arrayList.size()]);
        } catch (Exception e) {
            agt.a(e);
            throw new aed();
        }
    }
}
