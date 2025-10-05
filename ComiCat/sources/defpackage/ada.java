package defpackage;

import defpackage.aer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import meanlabs.comicreader.utils.ConnectivityReceiver;

/* renamed from: ada  reason: default package */
/* compiled from: DownloadScheduler */
public final class ada implements ConnectivityReceiver.b {
    static final Lock c = new ReentrantLock();
    public acz a;
    public boolean b;

    public ada() {
        this.b = false;
        this.a = new acz();
        this.b = false;
        ConnectivityReceiver.a().a(this);
    }

    public final acv a(String str, int i, String str2, int i2, String str3, int i3, int i4) {
        aer.a aVar;
        acv acv = null;
        acz acz = this.a;
        aer aer = aei.a().f;
        if (str3 == null) {
            str3 = "";
        }
        aer.a.clearBindings();
        aer.a.bindString(1, str);
        aer.a.bindLong(2, (long) i);
        aer.a.bindString(3, str2);
        aer.a.bindLong(4, (long) i2);
        aer.a.bindLong(5, (long) i4);
        aer.a.bindString(6, str3);
        aer.a.bindLong(7, (long) i3);
        int executeInsert = (int) aer.a.executeInsert();
        if (executeInsert != -1) {
            aVar = new aer.a();
            aVar.a = executeInsert;
            aVar.b = str;
            aVar.c = i;
            aVar.d = str2;
            aVar.e = i2;
            aVar.g = str3;
            aVar.h = i3;
            aVar.f = new aet(i4);
            aer.b.add(aVar);
        } else {
            aVar = null;
        }
        if (aVar != null) {
            acv = acz.a(aVar);
        }
        a();
        return acv;
    }

    public final void a() {
        int i;
        int i2;
        if (!this.b) {
            c.lock();
            this.b = true;
            try {
                int a2 = ConnectivityReceiver.a().c() != ConnectivityReceiver.a.a ? 0 : (int) aei.a().d.a("max-parallel-downloads", 1);
                List<acv> list = this.a.a;
                ArrayList arrayList = new ArrayList();
                int i3 = 0;
                for (acv next : list) {
                    if (next.e()) {
                        int i4 = i3 + 1;
                        if (i4 > a2) {
                            next.d();
                            i3 = i4 - 1;
                        } else if (!next.a.d()) {
                            arrayList.add(next);
                            i3 = i4;
                        } else {
                            i2 = i4;
                        }
                    } else {
                        if (next.a.d() && next.f()) {
                            if (i3 < a2) {
                                next.c();
                                i3++;
                            } else if (arrayList.size() > 0) {
                                ((acv) arrayList.remove(0)).d();
                                next.c();
                            }
                        }
                        i2 = i3;
                    }
                    i3 = i2;
                }
                int i5 = i3;
                for (acv next2 : list) {
                    if (i5 >= a2) {
                        break;
                    }
                    if (next2.e() || !next2.f()) {
                        i = i5;
                    } else {
                        next2.c();
                        i = i5 + 1;
                    }
                    i5 = i;
                }
            } finally {
                this.b = false;
                c.unlock();
            }
        }
    }

    public final void b() {
        a();
    }

    public final void c() {
        d();
    }

    public final void d() {
        c.lock();
        try {
            for (acv d : this.a.a) {
                d.d();
            }
        } finally {
            c.unlock();
        }
    }
}
