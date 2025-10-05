package defpackage;

import defpackage.aer;
import java.util.ArrayList;
import java.util.List;

/* renamed from: acz  reason: default package */
/* compiled from: DownloadQueue */
public final class acz {
    public List<acv> a = new ArrayList();

    public acz() {
        aer aer = aei.a().f;
        aer.a();
        List<aer.a> list = aer.b;
        if (list != null && list.size() != 0) {
            aew aew = aei.a().g;
            for (aer.a next : list) {
                if (aew.a(next.c) != null) {
                    a(next);
                }
            }
        }
    }

    public final acv a(aer.a aVar) {
        acv acv = new acv(aVar);
        this.a.add(acv);
        return acv;
    }

    public final void a(int i) {
        acv b = b(i);
        if (b != null) {
            aer aer = aei.a().f;
            aer.a aVar = b.a;
            aer.b.remove(aVar);
            aei.a().a.delete("download", "downloadid=" + aVar.a, (String[]) null);
            this.a.remove(b);
        }
    }

    public final acv b(int i) {
        for (acv next : this.a) {
            if (next.a.a == i) {
                return next;
            }
        }
        return null;
    }
}
