package defpackage;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: ado  reason: default package */
/* compiled from: DropBoxSession */
public final class ado {
    im a;

    public ado(aev aev) {
        if (aev != null) {
            b(aev.h);
        }
    }

    public static jl c() {
        try {
            return iy.a("").a("").b("/").a();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final List<jl> a(String str) {
        ArrayList arrayList = new ArrayList();
        if (a()) {
            try {
                jh a2 = this.a.c.a(new jb(str));
                while (true) {
                    arrayList.addAll(a2.a());
                    if (!a2.c()) {
                        break;
                    }
                    a2 = this.a.c.a(new jc(a2.b()));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    public final boolean a() {
        return this.a != null;
    }

    public final boolean a(String str, String str2, acy acy) {
        boolean z = false;
        if (a()) {
            FileOutputStream fileOutputStream = null;
            try {
                fileOutputStream = agz.b(str2);
                if (fileOutputStream != null) {
                    hi<iw> a2 = this.a.c.a(new it(str), Collections.emptyList());
                    if (a2.b) {
                        throw new IllegalStateException("This downloader is already closed.");
                    }
                    aha.a(a2.a, fileOutputStream, acy);
                }
                z = true;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                acy.a(acw.c, agv.a(e2));
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        }
        return z;
    }

    public final kb b() {
        try {
            return this.a.d.a();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final void b(String str) {
        if (str != null && str.length() > 0) {
            this.a = new im(new hl(ComicReaderApp.a().getString(R.string.app_name)), str);
        }
    }
}
