package defpackage;

import android.content.Context;
import defpackage.acy;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: adu  reason: default package */
/* compiled from: GoogleDriveService */
public final class adu extends acs {
    adw b;

    public adu(aev aev) {
        super(aev);
        this.b = new adw(aev);
    }

    public final List<adc> a(adc adc) {
        adt adt = (adt) adc;
        List<oz> list = adt.c;
        if (list == null) {
            list = this.b.a(adt.a);
            adt.c = list;
        }
        List<oz> list2 = list;
        if (list2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (oz adt2 : list2) {
            arrayList.add(new adt(adt2, agp.b(adt.b, adt.a())));
        }
        return arrayList;
    }

    public final boolean a(String str, String str2, acy acy) {
        oz a = this.b.a(str);
        if (a != null && a.downloadUrl != null && a.downloadUrl != "") {
            return this.b.a(a.downloadUrl, str2, acy);
        }
        acy.a(acw.c, ComicReaderApp.a().getString(R.string.downloadFailed));
        acy.a(acy.a.FAIL);
        return false;
    }

    public final String b() {
        return "googledrive";
    }

    public final String c() {
        return ComicReaderApp.a().getString(R.string.googleDrive);
    }

    public final int d() {
        return R.drawable.google_drive;
    }

    public final String e() {
        Context a = ComicReaderApp.a();
        return a.getString(R.string.cloudSyncInstruction1, new Object[]{c()}) + "\n\n" + a.getString(R.string.cloudSyncInstruction2) + "\n\n" + a.getString(R.string.cloudSyncInstruction3) + "\n\n" + a.getString(R.string.cloudSyncInstruction4) + "\n\n" + a.getString(R.string.cloudSyncInstruction5) + "\n\n" + a.getString(R.string.cloudSyncInstructionNote) + "\n";
    }

    public final boolean f() {
        return true;
    }

    public final String g() {
        return "Google Drive";
    }

    public final void i() {
        this.b.a = null;
        super.i();
    }

    public final adc j() {
        oz ozVar = new oz();
        ozVar.id = "root";
        ozVar.mimeType = "application/vnd.google-apps.folder";
        ozVar.title = "";
        adt adt = new adt(ozVar, "/");
        List<oz> a = this.b.a(adt.a);
        if (a == null) {
            return null;
        }
        adt.c = a;
        return adt;
    }

    public final boolean l() {
        return true;
    }
}
