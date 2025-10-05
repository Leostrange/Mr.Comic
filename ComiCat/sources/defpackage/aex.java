package defpackage;

import android.util.Log;
import defpackage.afa;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* renamed from: aex  reason: default package */
/* compiled from: CbrFile */
public final class aex implements afe {
    ua a;
    List<uo> b;

    private void e() {
        this.b = new ArrayList();
        try {
            List<uo> a2 = this.a.a();
            if (a2.size() > 0) {
                for (uo next : a2) {
                    if (next != null && !next.k() && afa.a(next.l, next.n)) {
                        this.b.add(next);
                    }
                }
            }
            Collections.sort(this.b, new Comparator<uo>() {
                public final /* synthetic */ int compare(Object obj, Object obj2) {
                    return agv.a(((uo) obj).l, ((uo) obj2).l);
                }
            });
            Iterator<uo> it = this.b.iterator();
            while (it.hasNext()) {
                it.next();
            }
            if (this.b.size() > 0 && this.b.get(0).n > 4194304) {
                this.b.remove(0);
            }
        } catch (Exception e) {
            e.toString();
        }
    }

    public final aff a(int i) {
        return new aey(this.b.get(i), this.a);
    }

    public final void a() {
    }

    public final boolean a(File file) {
        try {
            this.a = new ua(file);
            ua uaVar = this.a;
            if (uaVar.e != null) {
                if (!uaVar.e.h()) {
                    e();
                }
                return true;
            }
            throw new NullPointerException("mainheader is null");
        } catch (Exception e) {
            Log.e("CBR Open", "Error opening Comics", e);
            return false;
        }
    }

    public final void b() {
        try {
            this.a.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final int c() {
        return this.b.size();
    }

    public final afa.a d() {
        return afa.a.CBR;
    }
}
