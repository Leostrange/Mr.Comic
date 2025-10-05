package defpackage;

import android.app.Activity;
import java.util.List;

/* renamed from: acs  reason: default package */
/* compiled from: AbstractCloudStorageService */
public abstract class acs {
    protected aev a;

    protected acs(aev aev) {
        this.a = aev;
    }

    public final int a() {
        if (this.a != null) {
            return this.a.a;
        }
        return -1;
    }

    public abstract List<adc> a(adc adc);

    public final void a(Activity activity) {
        add a2 = act.b().a(b());
        if (a2 != null) {
            a2.a(activity, a());
        }
    }

    public abstract boolean a(String str, String str2, acy acy);

    public abstract String b();

    public abstract String c();

    public abstract int d();

    public abstract String e();

    public abstract boolean f();

    public abstract String g();

    public final String h() {
        StringBuilder sb = new StringBuilder();
        act.b();
        return sb.append(agp.b(act.a(), g())).append("/").toString();
    }

    public void i() {
        aev a2;
        act.b().d(this.a.a);
        aew aew = aei.a().g;
        int i = this.a.a;
        if (aei.a().a.delete("services", "id=" + i, (String[]) null) > 0 && (a2 = aew.a(i)) != null) {
            aew.b.remove(a2);
        }
    }

    public abstract adc j();

    public final String k() {
        String c = c();
        return (this.a == null || this.a.c == null || this.a.c.length() <= 0) ? c : c + " - " + this.a.c;
    }

    public boolean l() {
        return false;
    }

    public String m() {
        return aei.a().d.b("download-newly-added-files");
    }

    public boolean n() {
        return false;
    }
}
