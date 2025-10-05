package defpackage;

import com.radaee.pdf.Document;
import com.radaee.pdf.Global;
import defpackage.afa;
import java.io.File;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: afg  reason: default package */
/* compiled from: PdfFile */
public final class afg implements afe {
    Document a;

    private static boolean e() {
        try {
            return Global.a(ComicReaderApp.d(), "Meanlabs Software Private Limited", "admin@meanlabs.com", agv.g() ? "4RNGST-DWT7U7-M8RF25-AU8DMG-84AMJU-5OFYK6" : ComicReaderApp.a().getPackageName().equals("meanlabs.comicreader.underground") ? "S5QG97-1R68Q3-M8RF25-AU8DMG-84AMJU-5OFYK6" : "LLT547-C6GEQE-M8RF25-AU8DMG-84AMJU-5OFYK6");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final aff a(int i) {
        return new afh(this.a, i);
    }

    public final void a() {
    }

    public final boolean a(File file) {
        Exception exc;
        boolean z;
        try {
            if (!e()) {
                return false;
            }
            this.a = new Document();
            boolean z2 = this.a.a(file.getAbsolutePath()) == 0;
            if (z2) {
                try {
                    if (this.a.a()) {
                        return true;
                    }
                } catch (Exception e) {
                    exc = e;
                    z = z2;
                }
            }
            return false;
        } catch (Exception e2) {
            Exception exc2 = e2;
            z = false;
            exc = exc2;
            exc.printStackTrace();
            return z;
        }
    }

    public final void b() {
        if (this.a != null && this.a.a()) {
            this.a.b();
        }
    }

    public final int c() {
        return this.a.b;
    }

    public final afa.a d() {
        return afa.a.PDF;
    }
}
