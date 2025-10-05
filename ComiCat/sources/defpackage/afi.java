package defpackage;

import android.util.Log;
import defpackage.afa;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* renamed from: afi  reason: default package */
/* compiled from: RandomAccessCbzFile */
public final class afi implements afe {
    private ZipFile a;
    private ArrayList<ZipEntry> b;

    private void e() {
        this.b = new ArrayList<>();
        try {
            Enumeration<? extends ZipEntry> entries = this.a.entries();
            while (entries.hasMoreElements()) {
                ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                if (zipEntry != null && !zipEntry.isDirectory() && afa.a(zipEntry.getName(), zipEntry.getSize())) {
                    this.b.add(zipEntry);
                }
            }
            Collections.sort(this.b, new Comparator<ZipEntry>() {
                public final /* synthetic */ int compare(Object obj, Object obj2) {
                    return agv.a(((ZipEntry) obj).getName(), ((ZipEntry) obj2).getName());
                }
            });
        } catch (Exception e) {
        }
    }

    public final aff a(int i) {
        if (i < this.b.size()) {
            try {
                return new afj(this.b.get(i), this.a);
            } catch (Exception e) {
            }
        }
        return null;
    }

    public final void a() {
    }

    public final boolean a(File file) {
        try {
            this.a = new ZipFile(file, 1);
            e();
            return true;
        } catch (Exception e) {
            Log.e("CBZ Open", "Open failed", e);
            return false;
        }
    }

    public final void b() {
        if (this.a != null) {
            try {
                this.a.close();
            } catch (Exception e) {
            }
        }
    }

    public final int c() {
        return this.b.size();
    }

    public final afa.a d() {
        return afa.a.CBZ;
    }
}
