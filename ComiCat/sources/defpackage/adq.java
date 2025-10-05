package defpackage;

import android.content.Context;
import defpackage.Cif;
import defpackage.acy;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: adq  reason: default package */
/* compiled from: DropboxService */
public final class adq extends acs {
    ado b;

    public adq(aev aev) {
        super(aev);
        this.b = new ado(aev);
    }

    public final List<adc> a(adc adc) {
        List<jl> a = this.b.a(((adp) adc).a.b());
        ArrayList arrayList = new ArrayList(a.size());
        for (jl next : a) {
            if ((next instanceof iw) || (next instanceof iy)) {
                arrayList.add(new adp(next));
            }
        }
        return arrayList;
    }

    public final boolean a(String str, String str2, acy acy) {
        boolean a = this.b.a(str, str2, acy);
        acy.a(a ? acy.a.SUCCESS : acy.a.FAIL);
        return a;
    }

    public final String b() {
        return "dropbox";
    }

    public final String c() {
        return ComicReaderApp.a().getString(R.string.dropbox);
    }

    public final int d() {
        return R.drawable.dropbox;
    }

    public final String e() {
        Context a = ComicReaderApp.a();
        return a.getString(R.string.dropboxSyncInstruction1) + "\n\n" + a.getString(R.string.cloudSyncInstruction2) + "\n\n" + a.getString(R.string.cloudSyncInstruction3) + "\n\n" + a.getString(R.string.cloudSyncInstruction4) + "\n\n" + a.getString(R.string.cloudSyncInstruction5) + "\n\n" + a.getString(R.string.cloudSyncInstructionNote) + "\n";
    }

    public final boolean f() {
        return true;
    }

    public final String g() {
        return "Dropbox";
    }

    public final void i() {
        ado ado = this.b;
        if (ado.a()) {
            new Thread(new Runnable() {
                public final void run() {
                    try {
                        ip ipVar = ado.this.a.b;
                        ipVar.a.a(ipVar.a.a.b, "2/auth/token/revoke", null, Cif.h.a, Cif.h.a, Cif.h.a);
                    } catch (ho e) {
                        throw new hh(e.b, e.c, "Unexpected error response for \"token/revoke\":" + e.a);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }).run();
        }
        super.i();
    }

    public final adc j() {
        jl c = ado.c();
        if (c != null) {
            return new adp(c);
        }
        return null;
    }
}
